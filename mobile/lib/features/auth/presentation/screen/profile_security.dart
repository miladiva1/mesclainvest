// ── profile_security.dart ──────────────────────────────────────────────
// Camada Presentation — Tela de configuração de segurança do perfil.
//
// Responsabilidades:
//   • Se o usuário NÃO tem PIN → forçar a criação de um PIN de 4-6 dígitos.
//   • Se já tem PIN → permitir alterá-lo ou removê-lo.
//   • Persiste o PIN via UserService (Firestore).
// ──────────────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/features/auth/data/user_service.dart';
import 'package:mobile/features/auth/domain/user_model.dart';

class ProfileSecurityScreen extends StatefulWidget {
  const ProfileSecurityScreen({super.key});

  @override
  State<ProfileSecurityScreen> createState() => _ProfileSecurityScreenState();
}

class _ProfileSecurityScreenState extends State<ProfileSecurityScreen> {
  final UserService _userService = UserService();

  final TextEditingController _pinController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  UserModel? _userData;
  bool _isLoading = true;
  bool _isSaving = false;

  // ── Controla se estamos no modo "alterar PIN" ──────────────────────
  bool get _hasPin => _userData?.hasMfaEnabled == true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  void dispose() {
    _pinController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  // ── Carrega dados do usuário no Firestore ──────────────────────────
  Future<void> _loadUserData() async {
    setState(() => _isLoading = true);
    try {
      final user = await _userService.fetchCurrentUser();
      setState(() => _userData = user);
    } catch (e) {
      _showSnack('Erro ao carregar perfil: ${e.toString()}', isError: true);
    } finally {
      setState(() => _isLoading = false);
    }
  }

  // ── Salva o PIN após validação ─────────────────────────────────────
  Future<void> _savePin() async {
    final pin = _pinController.text.trim();
    final confirm = _confirmController.text.trim();

    // Validação
    if (pin.length < 4 || pin.length > 6) {
      _showSnack('O PIN deve ter entre 4 e 6 dígitos.', isError: true);
      return;
    }
    if (!RegExp(r'^\d+$').hasMatch(pin)) {
      _showSnack('O PIN deve conter apenas números.', isError: true);
      return;
    }
    if (pin != confirm) {
      _showSnack('Os PINs não coincidem.', isError: true);
      return;
    }

    setState(() => _isSaving = true);
    try {
      await _userService.saveSecurityPin(pin);
      _showSnack('PIN de segurança salvo com sucesso!');
      _pinController.clear();
      _confirmController.clear();
      await _loadUserData(); // recarrega estado
    } catch (e) {
      _showSnack('Erro ao salvar PIN: ${e.toString()}', isError: true);
    } finally {
      setState(() => _isSaving = false);
    }
  }

  // ── Remove o PIN ───────────────────────────────────────────────────
  Future<void> _removePin() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Remover PIN'),
        content: const Text(
          'Tem certeza que deseja remover o PIN de segurança? '
          'Áreas protegidas ficarão desprotegidas.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Remover', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() => _isSaving = true);
    try {
      await _userService.removeSecurityPin();
      _showSnack('PIN removido.');
      await _loadUserData();
    } catch (e) {
      _showSnack('Erro ao remover PIN: ${e.toString()}', isError: true);
    } finally {
      setState(() => _isSaving = false);
    }
  }

  void _showSnack(String msg, {bool isError = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: isError ? Colors.red.shade700 : const Color(0xFF512DA8),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  // ── UI ─────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3FF),
      appBar: _buildAppBar(),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: Color(0xFF512DA8)))
          : SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  const SizedBox(height: 32),
                  _buildStatusCard(),
                  const SizedBox(height: 32),
                  _buildPinForm(),
                  if (_hasPin) ...[
                    const SizedBox(height: 16),
                    _buildRemoveButton(),
                  ],
                ],
              ),
            ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF512DA8)),
        onPressed: () => Navigator.maybePop(context),
      ),
      title: Text(
        'MesclaInvest',
        style: GoogleFonts.inter(
          color: const Color(0xFF512DA8),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: Colors.grey.shade200, height: 1),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF512DA8).withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(Icons.shield_rounded,
              color: Color(0xFF512DA8), size: 32),
        ),
        const SizedBox(height: 16),
        Text(
          _hasPin ? 'Alterar PIN de Segurança' : 'Criar PIN de Segurança',
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF1A0033),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          _hasPin
              ? 'Seu PIN protege o acesso à carteira de investimentos.'
              : 'Crie um PIN numérico de 4 a 6 dígitos para proteger sua conta.',
          style: GoogleFonts.inter(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildStatusCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _hasPin
            ? Colors.green.shade50
            : Colors.orange.shade50,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: _hasPin ? Colors.green.shade200 : Colors.orange.shade200,
        ),
      ),
      child: Row(
        children: [
          Icon(
            _hasPin ? Icons.lock_rounded : Icons.lock_open_rounded,
            color: _hasPin ? Colors.green.shade700 : Colors.orange.shade700,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              _hasPin
                  ? 'PIN ativo — sua conta está protegida.'
                  : 'PIN não configurado — configure agora para maior segurança.',
              style: GoogleFonts.inter(
                fontSize: 13,
                color: _hasPin
                    ? Colors.green.shade800
                    : Colors.orange.shade800,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPinForm() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _hasPin ? 'Novo PIN' : 'Criar PIN',
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A0033),
            ),
          ),
          const SizedBox(height: 16),
          _buildPinField(
            controller: _pinController,
            label: _hasPin ? 'Novo PIN' : 'PIN (4 a 6 dígitos)',
            hint: '••••',
          ),
          const SizedBox(height: 16),
          _buildPinField(
            controller: _confirmController,
            label: 'Confirmar PIN',
            hint: '••••',
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: _isSaving ? null : _savePin,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF512DA8),
                disabledBackgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              child: _isSaving
                  ? const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(
                          color: Colors.white, strokeWidth: 2.5),
                    )
                  : Text(
                      _hasPin ? 'Atualizar PIN' : 'Salvar PIN',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPinField({
    required TextEditingController controller,
    required String label,
    required String hint,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade700,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: true,
          keyboardType: TextInputType.number,
          maxLength: 6,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          style: GoogleFonts.inter(fontSize: 20, letterSpacing: 8),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(letterSpacing: 6, color: Colors.grey.shade400),
            counterText: '',
            filled: true,
            fillColor: const Color(0xFFF5F3FF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:
                  const BorderSide(color: Color(0xFF512DA8), width: 2),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildRemoveButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton.icon(
        onPressed: _isSaving ? null : _removePin,
        icon: const Icon(Icons.delete_outline_rounded, color: Colors.red),
        label: Text(
          'Remover PIN',
          style: GoogleFonts.inter(
            color: Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.red),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}

// ── mfa_verification_screen.dart ───────────────────────────────────────
// Camada Presentation — Tela de Verificação MFA (tela de bloqueio).
//
// Responsabilidades:
//   • Exibir um teclado numérico visual para o usuário inserir o PIN.
//   • Comparar o PIN digitado com o armazenado no Firestore via UserService.
//   • Liberar o acesso à tela de destino (passada por parâmetro) se correto.
//   • Exibir SnackBar de erro se o PIN estiver incorreto.
//   • Suporta 4 a 6 dígitos, com pontos de progresso animados.
// ──────────────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/features/auth/data/user_service.dart';

class MfaScreen extends StatefulWidget {
  /// Rota ou widget para onde navegar após validação bem-sucedida.
  /// Pode ser uma rota nomeada ou uma [WidgetBuilder].
  final Widget destination;

  const MfaScreen({super.key, required this.destination});

  @override
  State<MfaScreen> createState() => _MfaScreenState();
}

class _MfaScreenState extends State<MfaScreen>
    with SingleTickerProviderStateMixin {
  final UserService _userService = UserService();

  String _inputPin = '';
  bool _isValidating = false;

  // Animação de "shake" para PIN incorreto
  late AnimationController _shakeController;
  late Animation<double> _shakeAnimation;

  static const int _maxPinLength = 6;
  static const int _minPinLength = 4;

  @override
  void initState() {
    super.initState();
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _shakeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.elasticIn),
    );
  }

  @override
  void dispose() {
    _shakeController.dispose();
    super.dispose();
  }

  // ── Adiciona um dígito ao PIN ──────────────────────────────────────
  void _addDigit(String digit) {
    if (_inputPin.length >= _maxPinLength || _isValidating) return;
    setState(() => _inputPin += digit);

    // Valida automaticamente ao atingir o tamanho máximo
    if (_inputPin.length == _maxPinLength) {
      _validatePin();
    }
  }

  // ── Remove o último dígito ─────────────────────────────────────────
  void _removeDigit() {
    if (_inputPin.isEmpty || _isValidating) return;
    setState(() => _inputPin = _inputPin.substring(0, _inputPin.length - 1));
  }

  // ── Valida o PIN contra o Firestore ───────────────────────────────
  Future<void> _validatePin() async {
    if (_inputPin.length < _minPinLength) {
      _showError('PIN deve ter pelo menos $_minPinLength dígitos.');
      return;
    }

    setState(() => _isValidating = true);

    try {
      final isValid = await _userService.validatePin(_inputPin);

      if (!mounted) return;

      if (isValid) {
        // ── PIN correto: navega para o destino ──────────────────────
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
          pageBuilder: (context, a1, a2) => widget.destination,
            transitionsBuilder: (context, animation, a2, child) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 350),
          ),
        );
      } else {
        // ── PIN incorreto: shake + limpa input ──────────────────────
        _shakeController.forward(from: 0);
        setState(() => _inputPin = '');
        _showError('PIN incorreto. Tente novamente.');
      }
    } catch (e) {
      if (!mounted) return;
      _showError('Erro na verificação. Tente novamente.');
      setState(() => _inputPin = '');
    } finally {
      if (mounted) setState(() => _isValidating = false);
    }
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: Colors.red.shade700,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // ── UI ─────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0033),
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            _buildLockIcon(),
            const SizedBox(height: 24),
            _buildTitle(),
            const SizedBox(height: 40),
            _buildPinDots(),
            const Spacer(),
            _buildNumpad(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: const Color(0xFF1A0033),
      elevation: 0,
      leading: IconButton(
        icon:
            const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white70),
        onPressed: () => Navigator.maybePop(context),
      ),
      title: Text(
        'MesclaInvest',
        style: GoogleFonts.inter(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _buildLockIcon() {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withValues(alpha: 0.08),
        border: Border.all(color: Colors.white24, width: 1.5),
      ),
      child: const Icon(Icons.lock_outline_rounded,
          color: Colors.white70, size: 36),
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Text(
          'verificação de segurança',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Insira seu PIN para continuar',
          style: GoogleFonts.inter(
            color: Colors.white38,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  // ── Pontos animados de progresso do PIN ───────────────────────────
  Widget _buildPinDots() {
    return AnimatedBuilder(
      animation: _shakeAnimation,
      builder: (_, child) {
        final v = _shakeAnimation.value;
        final offset = v * 12 * ((v * 4).round() % 2 == 0 ? 1 : -1);
        return Transform.translate(
          offset: Offset(offset, 0),
          child: child,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_maxPinLength, (i) {
          final filled = i < _inputPin.length;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            width: filled ? 18 : 14,
            height: filled ? 18 : 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: filled
                  ? const Color(0xFFB39DDB)
                  : Colors.white.withValues(alpha: 0.15),
              border: Border.all(
                color: filled
                    ? const Color(0xFFB39DDB)
                    : Colors.white30,
                width: 1.5,
              ),
            ),
          );
        }),
      ),
    );
  }

  // ── Teclado numérico ──────────────────────────────────────────────
  Widget _buildNumpad() {
    final keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['', '0', '⌫'],
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        children: keys.map((row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: row.map((key) {
              if (key.isEmpty) {
                // Botão verificar (quando já há dígitos suficientes)
                return _NumpadKey(
                  label: '',
                  onTap: null,
                  isEmpty: true,
                );
              }
              if (key == '⌫') {
                return _NumpadKey(
                  label: '⌫',
                  onTap: _removeDigit,
                  isDelete: true,
                );
              }
              return _NumpadKey(
                label: key,
                onTap: () => _addDigit(key),
              );
            }).toList(),
          );
        }).toList(),
      ),
    );
  }
}

// ── Widget auxiliar: tecla do teclado numérico ─────────────────────────
class _NumpadKey extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isDelete;
  final bool isEmpty;

  const _NumpadKey({
    required this.label,
    required this.onTap,
    this.isDelete = false,
    this.isEmpty = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isEmpty) {
      return const SizedBox(width: 72, height: 72);
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 72,
        height: 72,
        margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isDelete
              ? Colors.transparent
              : Colors.white.withValues(alpha: 0.08),
          border: Border.all(
            color: isDelete ? Colors.transparent : Colors.white12,
          ),
        ),
        child: Center(
          child: isDelete
              ? const Icon(Icons.backspace_outlined,
                  color: Colors.white54, size: 22)
              : Text(
                  label,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
        ),
      ),
    );
  }
}
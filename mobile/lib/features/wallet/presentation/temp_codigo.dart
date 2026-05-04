import 'package:flutter/material.dart'; 
 import 'package:google_fonts/google_fonts.dart'; 
 import 'package:intl/intl.dart'; 
  
 class Transacao { 
   final String tipo; 
   final String endereco; 
   final String valor; 
   final DateTime data; 
   final String taxa; 
   final IconData icone; 
   final Color cor; 
  
   Transacao({ 
     required this.tipo, 
     required this.endereco, 
     required this.valor, 
     required this.data, 
     required this.taxa, 
     required this.icone, 
     required this.cor, 
   }); 
 } 
  
 class TokenDetailsScreen extends StatefulWidget { 
   const TokenDetailsScreen({super.key}); 
  
   @override 
   State<TokenDetailsScreen> createState() => _TokenDetailsScreenState(); 
 } 
  
 class _TokenDetailsScreenState extends State<TokenDetailsScreen> { 
   final List<Transacao> historico = [ 
     Transacao( 
       tipo: 'Transferencia', 
       endereco: 'To: 0x16dcc0e...e2bf7c61037', 
       valor: '93 BYD', 
       data: DateTime(2025, 12, 24, 9, 41), 
       taxa: '0.02 ETH (\$26.35)', 
       icone: Icons.near_me, 
       cor: Colors.green, 
     ), 
     Transacao( 
       tipo: 'Compra', 
       endereco: 'To: 0x7131CA8...djk4818E696', 
       valor: '23.4 BYD', 
       data: DateTime(2025, 12, 24, 15, 30), 
       taxa: '0.01 ETH (\$13.10)', 
       icone: Icons.shopping_cart, 
       cor: Colors.green, 
     ), 
   ]; 
  
   @override 
   Widget build(BuildContext context) { 
     return Scaffold( 
       backgroundColor: Colors.white, 
       appBar: AppBar( 
         backgroundColor: Colors.white, 
         elevation: 0, 
         leading: const BackButton(color: Colors.black), 
         title: Text('Voltar', style: GoogleFonts.lora(color: Colors.black)), 
       ), 
       body: SingleChildScrollView( 
         child: Column( 
           children: [ 
             _buildBalanceHeader(), 
             const SizedBox(height: 30), 
             _buildActionButtons(), // BOTÕES FUNCIONAIS AQUI 
             const SizedBox(height: 40), 
             _buildHistoryList(), 
           ], 
         ), 
       ),
       bottomNavigationBar: _buildBottomBar(),
     ); 
   } 
  
   Widget _buildBalanceHeader() { 
     return Column( 
       children: [ 
         const SizedBox(height: 20), 
         // Adicionando o logo da BYD igual ao seu print 
         Image.network( 
           'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/BYD_logo.svg/1200px-BYD_logo.svg.png', 
           height: 40, 
           errorBuilder: (context, error, stackTrace) => const Icon(Icons.business, size: 40), 
         ), 
         const SizedBox(height: 10), 
         Text('345.71 BYD', style: GoogleFonts.lora(fontSize: 32, fontWeight: FontWeight.bold, color: const Color(0xFF4B0082))), 
         const Text('R\$ 2.107,34', style: TextStyle(color: Colors.grey, fontSize: 16)), 
       ], 
     ); 
   } 
  
   // AGORA OS BOTÕES REALMENTE FAZEM ALGO 
   Widget _buildActionButtons() { 
     return Row( 
       mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
       children: [ 
         // Função unificada para abrir balcão e atualizar lista 
         _buildCircleBtn(Icons.auto_graph, 'Investir', () async { 
           final novaTx = await Navigator.pushNamed(context, '/balcao'); 
           if (novaTx != null && novaTx is Transacao) { 
             setState(() { 
               historico.insert(0, novaTx); 
             }); 
           } 
         }), 
         _buildCircleBtn(Icons.swap_horiz, 'Trocar', () async { 
           // Adicionado await aqui também para capturar a troca! 
           final novaTx = await Navigator.pushNamed(context, '/balcao'); 
           if (novaTx != null && novaTx is Transacao) { 
             setState(() { 
               historico.insert(0, novaTx); 
             }); 
           } 
         }), 
         _buildCircleBtn(Icons.send, 'Enviar', () { 
           // Simulação de transferência entre usuários cadastrados
           _mostrarModalEnviar(); 
         }), 
         _buildCircleBtn(Icons.account_balance_wallet, 'Receber', () { 
           // Item 5.3: Simula o carregamento da carteira com crédito interno
           _mostrarModalReceber(); 
         }), 
       ], 
     ); 
   } 

   void _mostrarModalEnviar() {
     showDialog(
       context: context,
       builder: (context) => AlertDialog(
         title: const Text("Enviar Tokens"),
         content: Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             const Text("Transferência de saldo fictício entre usuários cadastrados."),
             const SizedBox(height: 20),
             TextField(
               decoration: InputDecoration(
                 labelText: "Endereço do Destinatário",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                 hintText: "0x...",
               ),
             ),
             const SizedBox(height: 15),
             TextField(
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 labelText: "Quantidade de BYD",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
               ),
             ),
           ],
         ),
         actions: [
           TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancelar")),
           ElevatedButton(
             onPressed: () {
               Navigator.pop(context);
               _showSnackBar("Transferência enviada com sucesso!");
             },
             style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4B0082)),
             child: const Text("Confirmar Envio", style: TextStyle(color: Colors.white)),
           ),
         ],
       ),
     );
   }  
   Widget _buildCircleBtn(IconData icon, String label, VoidCallback onTap) { 
     return GestureDetector( 
       onTap: onTap, 
       child: Column( 
         children: [ 
           CircleAvatar( 
             backgroundColor: Colors.grey[100], 
             radius: 25, 
             child: Icon(icon, color: Colors.black), 
           ), 
           const SizedBox(height: 8), 
           Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)), 
         ], 
       ), 
     ); 
   } 
  
   Widget _buildHistoryList() { 
     return Padding( 
       padding: const EdgeInsets.symmetric(horizontal: 20), 
       child: Column( 
         crossAxisAlignment: CrossAxisAlignment.start, 
         children: [ 
           const Text('Hoje', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)), 
           const SizedBox(height: 15), 
           ...historico.map((tx) => ListTile( 
                 onTap: () { 
                   Navigator.of(context).push( 
                     MaterialPageRoute(builder: (context) => TransactionInfoScreen(transacao: tx)) 
                   ); 
                 }, 
                 contentPadding: EdgeInsets.zero, 
                 leading: CircleAvatar( 
                   backgroundColor: Colors.green.withOpacity(0.1), 
                   child: Icon(tx.icone, color: Colors.green, size: 18), 
                 ), 
                 title: Text(tx.tipo, style: const TextStyle(fontWeight: FontWeight.bold)), 
                 subtitle: Text(tx.endereco, style: const TextStyle(fontSize: 11)), 
                 trailing: Text(tx.valor, style: const TextStyle(fontWeight: FontWeight.bold)), 
               )), 
         ], 
       ), 
     ); 
   } 

   Widget _buildBottomBar() {
     return Container(
       margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
       height: 70,
       decoration: BoxDecoration(
         color: const Color(0xFF222222),
         borderRadius: BorderRadius.circular(35),
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           const Icon(Icons.home, color: Colors.white),
           const Icon(Icons.search, color: Colors.white),
           Container(
             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
             decoration: BoxDecoration(
               color: const Color(0xFF512DA8),
               borderRadius: BorderRadius.circular(20),
             ),
             child: const Row(
               children: [
                 Icon(Icons.grid_view, color: Colors.white, size: 18),
                 SizedBox(width: 8),
                 Text('Balcão', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
               ],
             ),
           ),
           const Icon(Icons.person_outline, color: Colors.white),
         ],
       ),
     );
   }
  
   // --- FUNÇÕES DE APOIO --- 
  
   void _showSnackBar(String mensagem) { 
     ScaffoldMessenger.of(context).showSnackBar( 
       SnackBar(content: Text(mensagem), duration: const Duration(seconds: 2)), 
     ); 
   } 
  
   void _mostrarModalReceber() { 
     showModalBottomSheet( 
       context: context, 
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), 
       builder: (context) => Container( 
         padding: const EdgeInsets.all(30), 
         child: Column( 
           mainAxisSize: MainAxisSize.min, 
           children: [ 
             const Text("Carregar Carteira", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)), 
             const SizedBox(height: 10),
             const Text("Simule o carregamento com saldo fictício (PIX ou Crédito)", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey)),
             const SizedBox(height: 20), 
             const Icon(Icons.qr_code_2, size: 120, color: Color(0xFF4B0082)), 
             const SizedBox(height: 15), 
             const SelectableText("0x16dcc0e...e2bf7c61037", textAlign: TextAlign.center, style: TextStyle(fontSize: 12)), 
             const SizedBox(height: 20), 
             SizedBox(
               width: double.infinity,
               child: ElevatedButton( 
                 onPressed: () {
                   Navigator.pop(context);
                   _showSnackBar("Saldo fictício adicionado com sucesso!");
                 }, 
                 style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF4B0082), padding: const EdgeInsets.symmetric(vertical: 15)), 
                 child: const Text("Simular Depósito", style: TextStyle(color: Colors.white)), 
               ),
             ) 
           ], 
         ), 
       ), 
     ); 
   } 
 }

 // 3. TELA DE DETALHES (Refletindo exatamente a image_470b8b.png) 
 class TransactionInfoScreen extends StatelessWidget { 
   final Transacao transacao; 
 
   const TransactionInfoScreen({super.key, required this.transacao}); 
 
   @override 
   Widget build(BuildContext context) { 
     const primaryPurple = Color(0xFF4B0082); 
     // Formatação exata solicitada: MMM dd, hh:mm a 
     String dataFormatada = DateFormat('MMM dd, hh:mm a').format(transacao.data); 
 
     return Scaffold( 
       backgroundColor: Colors.white, 
       appBar: AppBar( 
         backgroundColor: Colors.white, 
         elevation: 0, 
         leading: const BackButton(color: Colors.black), 
         title: Text('Voltar', style: GoogleFonts.lora(color: Colors.black)), 
       ), 
       body: SingleChildScrollView(
         child: Padding( 
           padding: const EdgeInsets.symmetric(horizontal: 25), 
           child: Column( 
             children: [ 
               const SizedBox(height: 30), 
               // Valor em destaque conforme image_470b8b.png 
               Text(transacao.valor, style: GoogleFonts.lora(fontSize: 42, fontWeight: FontWeight.bold, color: primaryPurple)), 
               const SizedBox(height: 5), 
               Text('R\$ 2.107,34', style: GoogleFonts.montserrat(color: Colors.black54, fontSize: 16, fontWeight: FontWeight.w500)), 
               const SizedBox(height: 50), 
               
               // Card de Detalhes da Transação 
               Container( 
                 padding: const EdgeInsets.all(20), 
                 decoration: BoxDecoration( 
                   color: Colors.white, 
                   borderRadius: BorderRadius.circular(24), 
                   border: Border.all(color: Colors.grey[100]!), 
                   boxShadow: [ 
                     BoxShadow( 
                       color: Colors.black.withOpacity(0.03), 
                       blurRadius: 15, 
                       offset: const Offset(0, 8), 
                     ), 
                   ], 
                 ), 
                 child: Column( 
                   children: [ 
                     _infoRow('Data', dataFormatada), 
                     const Divider(height: 30, thickness: 0.5), 
                     _infoRow('Status', 'Completed', isStatus: true), 
                     const Divider(height: 30, thickness: 0.5), 
                     _infoRow('Quem Recebeu', transacao.endereco.replaceAll('To: ', '')), 
                     const Divider(height: 30, thickness: 0.5), 
                     _infoRow('Taxa da Transação', transacao.taxa), 
                   ], 
                 ), 
               ), 
               const SizedBox(height: 40), 
               Text('Ver mais detalhes', style: TextStyle(color: primaryPurple.withOpacity(0.5), fontWeight: FontWeight.w600, fontSize: 14)), 
               const SizedBox(height: 20), // Espaço extra para não bater na bottom bar
             ], 
           ), 
         ),
       ), 
       bottomNavigationBar: _buildBottomBar(), 
     ); 
   } 
 
   // Widget auxiliar para as linhas de informação 
   Widget _infoRow(String label, String value, {bool isStatus = false}) { 
     return Row( 
       mainAxisAlignment: MainAxisAlignment.spaceBetween, 
       children: [ 
         Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14)), 
         if (isStatus) 
           Container( 
             padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4), 
             decoration: BoxDecoration(color: Colors.green[50], borderRadius: BorderRadius.circular(8)), 
             child: const Text('Completed', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12)), 
           ) 
         else 
           Expanded(child: Text(value, textAlign: TextAlign.right, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, overflow: TextOverflow.ellipsis))), 
       ], 
     ); 
   } 
 
   // BottomBar estilizada conforme o print original 
   Widget _buildBottomBar() { 
     return Container( 
       margin: const EdgeInsets.fromLTRB(25, 0, 25, 30), 
       height: 70, 
       decoration: BoxDecoration( 
         color: const Color(0xFF1A1A1A), 
         borderRadius: BorderRadius.circular(35), 
       ), 
       child: Row( 
         mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
         children: [ 
           const Icon(Icons.home_filled, color: Colors.white, size: 28), 
           const Icon(Icons.search, color: Colors.white, size: 28), 
           Container( 
             padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10), 
             decoration: BoxDecoration( 
               color: const Color(0xFF5E35B1), 
               borderRadius: BorderRadius.circular(25), 
             ), 
             child: const Row( 
               children: [ 
                 Icon(Icons.grid_view_rounded, color: Colors.white, size: 20), 
                 SizedBox(width: 8), 
                 Text('Balcão', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), 
               ], 
             ), 
           ), 
           const Icon(Icons.person_outline_rounded, color: Colors.white, size: 28), 
         ], 
       ), 
     ); 
   } 
 }

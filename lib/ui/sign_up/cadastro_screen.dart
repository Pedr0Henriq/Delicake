import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:app_desafio/ui/sign_up/cadastro_produto.dart';
import 'package:app_desafio/ui/sign_up/formulario_cadastro_confeitaria.dart';
import 'package:flutter/material.dart';

//Essa tela vai servir para cadastro de confeitaria ou produto
class CadastroScreen extends StatefulWidget {
  final bool econfeitaria; //true é confeitaria e false é produto
  final Confeitaria?
      confeitaria; //objeto que servirá para edição, por isso pode ser nulo
  final int? confeitariaId;
  const CadastroScreen(
      {super.key,
      required this.econfeitaria,
      this.confeitariaId,
      this.confeitaria});

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  // Chaves globais para acessar os estados dos formulários (e suas funções)
  final GlobalKey<FormularioCadastroConfeitariaState> _formKey = GlobalKey();
  final GlobalKey<FormularioCadastroProdutoState> _formKeyProduto = GlobalKey();

  // Função para enviar os dados do formulário (confeitaria ou produto). baseia-se em econfeitaria para chamar a função da tela correta
  void enviarDados(bool econfeitaria) async {
    final sucesso;
    econfeitaria == true
        ? sucesso = await _formKey.currentState?.enviarDados()
        : sucesso = await _formKeyProduto.currentState?.enviarDados();
    if (sucesso == true) {
      Navigator.pop(context, true);
    }
  }

// função para salvar alterações em uma confeitaria já existente
  void salvaralteracoes() async {
    await _formKey.currentState?.salvarAlteracoes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: widget.econfeitaria == true
            ? Text(
                'Cadastro de Confeitaria',
                style: TextStyle(
                  fontFamily: 'LobsterTwo',
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Text(
                'Cadastro de Produto',
                style: TextStyle(
                  fontFamily: 'LobsterTwo',
                  fontSize: 23,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 32.0,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: widget.econfeitaria == true
                  ? FormularioCadastroConfeitaria(
                      key: _formKey, confeitaria: widget.confeitaria)
                  : FormularioCadastroProduto(
                      confeitariaId: widget.confeitariaId,
                      key: _formKeyProduto,
                    )),
          // o botão cadastrar ou salvar que vai definir qual função chamar: salvarAlterações ou enviarDados. se baseando em confeitaria!=null?
          SizedBox(
            height: 50,
            width: 180,
            child: ElevatedButton(
                onPressed: () async {
                  widget.confeitaria != null
                      ? salvaralteracoes()
                      : enviarDados(widget.econfeitaria);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  widget.confeitaria != null ? 'Salvar' : 'Cadastrar',
                  style: TextStyle(color: Colors.white, fontSize: 23.0),
                )),
          )
        ],
      ),
    );
  }
}

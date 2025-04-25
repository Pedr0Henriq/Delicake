import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class FormularioCadastroProduto extends StatefulWidget {
  final int? confeitariaId;
  const FormularioCadastroProduto({super.key, required this.confeitariaId});

  @override
  State<FormularioCadastroProduto> createState() =>
      FormularioCadastroProdutoState();
}

class FormularioCadastroProdutoState extends State<FormularioCadastroProduto> {
  final AppDatabase _db = AppDatabase();
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController valorController = TextEditingController();
  final ImagePicker _picker = ImagePicker(); //Escolher imagens da galeria
  File? _imagemProduto; // imagem escolhida do produto

  // Função para carregar imagem da galeria e armazenar em _imagemProduto
  Future<void> _carregarImagem() async{
    final XFile? imagemEscolhida = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imagemProduto = File(imagemEscolhida!.path);
    });
    }
  // Função para mostrar mensagens temporárias na tela (SnackBars)
  void _showSnackBar(String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(mensagem)),
    );
  }
 // Função principal para enviar os dados preenchidos no formulário, ela faz as validações se os campos estão vazios e se alguma imagem foi seleciona
  Future<bool> enviarDados() async {
    final nome = nomeController.text;
    final descricao = descricaoController.text;
    final valor = valorController.text;
    final String caminhoImagem = _imagemProduto!.path;
    if (nome.isEmpty || descricao.isEmpty || valor.isEmpty) {
      _showSnackBar('Preencha todos os campos!');
      return false;
    }
    else if (_imagemProduto == null) {
      _showSnackBar('Selecione pelo menos uma imagem!');
      return false;
    }
    else{
      final novoProduto = ProdutosCompanion(
      nome: drift.Value(nome),
      descricao: drift.Value(descricao),
      valor: drift.Value(double.tryParse(valor) ?? 0.0),
      imagem: drift.Value(caminhoImagem),
      confeitariaId: drift.Value(widget.confeitariaId!),
    );

    await _db.insertProduto(novoProduto);
    _showSnackBar('Produto cadastrado com sucesso!');
    return true;
    }
    
  }

  // Libera os recursos dos controllers ao destruir o widget
  @override
  void dispose() {
    nomeController.dispose();
    descricaoController.dispose();
    valorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Campo Nome do Produto
            TextFormField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Nome do Produto',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              validator: (value) =>
                      value == null || value.isEmpty ? 'Campo obrigatório' : null,
            ),
            SizedBox(height: 7.0),
            
            // Campo Descrição
            TextFormField(
              controller: descricaoController,
              decoration: InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              validator: (value) =>
                      value == null || value.isEmpty ? 'Campo obrigatório' : null,
            ),
            SizedBox(height: 7.0),
            
            // Campo Valor
            TextFormField(
              controller: valorController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Valor',
                border: OutlineInputBorder(),
                fillColor: Colors.white,
                filled: true,
              ),
              validator: (value) =>
                      value == null || value.isEmpty ? 'Campo obrigatório' : null,
            ),
            SizedBox(height: 7.0),
            
            // Seção da imagem(exibe o caminho dela ou mensagem)
            _imagemProduto == null
                ? Text('Nenhuma imagem selecionada.')
                : Text(_imagemProduto!.path),
            // Botão para selecionar imagem da galeria
            ElevatedButton.icon(onPressed: _carregarImagem, icon: Icon(Icons.photo_library), label: Text('Selecionar imagem da galeria'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.mainColor,
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                  textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                ),)
     ], ),
    ),);
  }
}

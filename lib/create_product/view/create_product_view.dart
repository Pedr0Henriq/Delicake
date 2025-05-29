import 'dart:io';

import 'package:app_desafio/create_product/create_product_bloc.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductView extends StatefulWidget {
  const CreateProductView({super.key});

  @override
  State<CreateProductView> createState() => _CreateProductViewState();
}

class _CreateProductViewState extends State<CreateProductView> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController(); 
  final _priceController = TextEditingController();
  final _picker = ImagePicker();
  final List<String> _selectedImages = [];


    @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _carregarImagem() async {
    final List<XFile> imagensEscolhidas = await _picker.pickMultiImage();
    if (imagensEscolhidas.isNotEmpty) {
      context.read<CreateProductBloc>().add(CreateProductEvent.imageSelected(
        imagePath: imagensEscolhidas,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(listeners: [
      BlocListener<CreateProductBloc,CreateProductState>(
        listenWhen: (previous, current) => previous.status is! CreateProductStatusLoading && 
                                          current.status is CreateProductStatusLoading,
        listener: (context, state) {
          showDialog(context: context, builder: (context) =>
          AlertDialog(
            title: const Text('Aguarde'),
            content: Row(
              children: [
                Center(child: CircularProgressIndicator()),
                const Text('Criando produto...'),
              ],
            ),
          ));
        },
      ),
      BlocListener<CreateProductBloc,CreateProductState>(
        listenWhen: (previous, current) => previous.status is CreateProductStatusLoading && 
          current.status is! CreateProductStatusLoading,
          listener: (context, state) {
          Navigator.pop(context);
          }
      ),
      BlocListener<CreateProductBloc,CreateProductState>(
        listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state is CreateProductStatusSuccess) {
          Navigator.pop(context);
        } else if (state case CreateProductStatusFailure(message: final errorMessage)) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage!)),
          );
        }
      },
      ),
      BlocListener<CreateProductBloc,CreateProductState>(
        listenWhen: (previous,current) => previous.name != current.name ||
          previous.description != current.description ||
          previous.price != current.price ||
          previous.images != current.images ||
          previous.confectioneryId != current.confectioneryId,
          listener: (context, state) {
            if (state.name != null) {
              _nameController.text = state.name!;
            }
            if (state.description != null) {
              _descriptionController.text = state.description!;
            }
            if (state.price != null) {
              _priceController.text = state.price!.toString();
            }
            if (state.images != null) {
              _selectedImages.clear();
              _selectedImages.addAll(state.images!);
            }
          },
      )
    ], child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
          title: Text(
            'Cadastro de Confeitaria',
            style: TextStyle(
              fontFamily: 'LobsterTwo',
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
           child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Campo Nome do Produto
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Nome do Produto',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                          value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),             
                // Campo Descrição
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: 'Descrição',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                          value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),              
                // Campo Valor
                TextFormField(
                  controller: _priceController,
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
                ElevatedButton.icon(onPressed: _carregarImagem, icon: Icon(Icons.photo_library), label: Text('Selecionar imagem da galeria'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.mainColor,
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                      textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                    ),),
                    const SizedBox(height: 10,),
                    Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: _selectedImages.map((path) {
                          return Stack(
                            children: [
                              Image.file(
                                File(path),
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedImages.remove(path);
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),], ),
          ),
            )
          ),
          SliverFillRemaining(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SafeArea(
                  minimum: EdgeInsets.only(bottom: 16),
                  child: FilledButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        context.read<CreateBloc>().add(
                          CreateEvent.submitted(
                            name: _nomeController.text,
                            phone: _telefoneController.text,
                            cep: _cepController.text,
                            street: _ruaController.text,
                            city: _cidadeController.text,
                            state: _estadoController.text,
                            neighborhood: _bairroController.text,
                            number: _numeroController.text,
                          ),
                        );
                      }
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.secondColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      minimumSize: Size.fromHeight(43),
                    ),
                    child: Text('Salvar'),
                  ),
                ),
              ),
            ),
        ],
      
      ),));
  }
}
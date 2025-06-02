import 'package:app_desafio/create/bloc/create_bloc.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditView extends StatefulWidget {
  final int id;
  const EditView({required this.id, super.key});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _cepController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _bairroController = TextEditingController();
  final _estadoController = TextEditingController();
  final _ruaController = TextEditingController();
  final _numeroController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateBloc,CreateState>(
      builder: (context, state) {
        if (state.status is CreateStatusLoading && state.confectionery!=null) {
          return const Center(child: CircularProgressIndicator()); 
        }
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: AppBar(
          title: Text(
            'Edição de Confeitaria',
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
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nome da Confeitaria
                      TextFormField(
                        controller: _nomeController,
                        decoration: InputDecoration(
                          labelText: 'Nome da Confeitaria',
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obrigatório';
                          }
                          return null;
                        },
                      ),
                      // Telefone
                      TextFormField(
                        controller: _telefoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Telefone',
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Campo obrigatório';
                          }
                          if (!RegExp(
                            r'^\(?\d{2}\)?[\s-]?\d{4,5}-?\d{4}$',
                          ).hasMatch(value)) {
                            return 'Telefone inválido';
                          }
                          return null;
                        },
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              controller: _cepController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'CEP',
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Campo obrigatório';
                                } else if (!RegExp(
                                  r'^\d{8}$',
                                ).hasMatch(value)) {
                                  return 'CEP inválido';
                                }
                                return null;
                              },
                              onChanged: (value) async {
                                if (value.length == 8) {
                                  context.read<CreateBloc>().add(
                                    CreateEvent.cepChanged(value),
                                  );
                                  // showDialog(
                                  //   context: context,
                                  //   barrierDismissible: false,
                                  //   builder:
                                  //       (context) => AlertDialog(
                                  //         content: Row(
                                  //           children: const [
                                  //             CircularProgressIndicator(),
                                  //             SizedBox(width: 16),
                                  //             Text('Buscando cep...'),
                                  //           ],
                                  //         ),
                                  //       ),
                                  // );
                                  // // await buscarEndereco(value);
                                  // if (context.mounted) {
                                  //   Navigator.of(context).pop();
                                  // }
                                }
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: // Número
                                TextFormField(
                              controller: _numeroController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Número',
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              validator:
                                  (value) =>
                                      value == null || value.isEmpty
                                          ? 'Campo obrigatório'
                                          : null,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            flex: 3,
                            child: // Rua
                                TextFormField(
                              controller: _ruaController,
                              decoration: InputDecoration(
                                labelText: 'Rua',
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              readOnly: true,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: // Bairro
                                TextFormField(
                              controller: _bairroController,
                              decoration: InputDecoration(
                                labelText: 'Bairro',
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              readOnly: true,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            flex: 3,
                            child: // Cidade
                                TextFormField(
                              controller: _cidadeController,
                              decoration: InputDecoration(
                                labelText: 'Cidade',
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              readOnly: true,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: // Estado
                                TextFormField(
                              controller: _estadoController,
                              decoration: InputDecoration(
                                labelText: 'Estado',
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                              readOnly: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // o botão cadastrar ou salvar que vai definir qual função chamar: salvarAlterações ou enviarDados. se baseando em confeitaria!=null?
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
                          CreateEvent.edit(
                            id: widget.id,
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
        ),
        );
      }, 
      listener: (context, state) {
        if(state.status is CreateStatusInitial && state.confectionery != null) {
          final confectionery = state.confectionery!;
          _nomeController.text = confectionery.nome;
          _telefoneController.text = confectionery.telefone ?? '';
          _cepController.text = confectionery.cep;
          _cidadeController.text = confectionery.cidade;
          _bairroController.text = confectionery.bairro;
          _estadoController.text = confectionery.estado;
          _ruaController.text = confectionery.rua;
          _numeroController.text = confectionery.numero;
        } else if (state.status is CreateStatusFailure) {
          final message = (state.status as CreateStatusFailure).message;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message ?? 'Erro ao editar a confeitaria')),
          );
        } else if (state.status is CreateStatusSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Confeitaria editada com sucesso!')),
          );
          Navigator.of(context).pop();
        }
      },);
  }
}
import 'package:app_desafio/confectionery/bloc/confectionery_bloc.dart';
import 'package:app_desafio/create/view/create_page.dart';
import 'package:app_desafio/create_product/view/create_product_page.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:app_desafio/ui/confeitaria/arquitetura_produto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfectioneryView extends StatefulWidget {
  const ConfectioneryView({super.key});

  @override
  State<ConfectioneryView> createState() => _ConfectioneryViewState();
}

class _ConfectioneryViewState extends State<ConfectioneryView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ConfectioneryBloc, ConfectioneryState>(
          listenWhen: (prev, curr) => prev.status != curr.status,
          listener: (context, state) {
            if (state.status is ConfectioneryStatusDeletedWithSucess) {
              Navigator.of(context).pop();
            }
            if (state.status is ConfectioneryStatusDeletedWithFailure) {
              final failure =
                  state.status as ConfectioneryStatusDeletedWithFailure;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Erro ao deletar: //${failure.message}'),
                ),
              );
            }
          },
        ),
        BlocListener<ConfectioneryBloc, ConfectioneryState>(
          listenWhen: (previous, current) => current.products.isEmpty,
          listener: (context, state) {
            context.read<ConfectioneryBloc>().add(ConfectioneryEvent.loadedProducts(state.confectionery!));
          },
        ),
      ],
      child: BlocBuilder<ConfectioneryBloc, ConfectioneryState>(
        builder: (context, state) {
          if (state.confectionery == null) {
            return const Scaffold(
              body: Center(child: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 16,),
                  Text('Carregando Confeitaria'),
                ],
              )),
            );
          }

          return _buildConfectioneryView(context, state);
        },
      ),
    );
  }

  Widget _buildConfectioneryView(
    BuildContext context,
    ConfectioneryState state,
  ) {
    final confeitaria = state.confectionery!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          confeitaria.nome,
          style: const TextStyle(fontFamily: 'LobsterTwo', fontSize: 22),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreatePage(confeitaria: confeitaria),
                ),
              );
            },
            icon: Icon(Icons.edit, color: AppColors.mainColor),
          ),
          IconButton(
            onPressed: () {
              context.read<ConfectioneryBloc>().add(
                ConfectioneryEvent.deleteConfectionery(confeitaria.id),
              );
            },
            icon: Icon(Icons.delete, color: Colors.red),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.secondColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Icon(Icons.cake, size: 100, color: AppColors.backgroundColor),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildInfo('Rua', confeitaria.rua),
                        _buildInfo('Número', confeitaria.numero),
                        _buildInfo('Bairro', confeitaria.bairro),
                        _buildInfo('Cidade', confeitaria.cidade),
                        _buildInfo('CEP', confeitaria.cep),
                        _buildInfo('Estado', confeitaria.estado),
                        _buildInfo('Telefone', confeitaria.telefone ?? ''),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                'Produtos',
                style: TextStyle(
                  fontFamily: 'LobsterTwo',
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: List.generate(state.products.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ArquiteturaProduto(
                      produto: state.products[index],
                      onRemover: () {
                        context.read<ConfectioneryBloc>().add(
                          ConfectioneryEvent.deleteProduct(
                            state.products[index].id,
                          ),
                        );
                      },
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateProductPage(id: confeitaria.id),
            ),
          );
        },
        child: Icon(
          Icons.add_circle_outline_rounded,
          color: AppColors.secondColor,
        ),
      ),
    );
  }

  Widget _buildInfo(String label, String value) {
    return Text(
      '$label: $value',
      style: TextStyle(fontSize: 18, color: AppColors.backgroundColor),
    );
  }
}

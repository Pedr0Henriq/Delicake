import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/main.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:app_desafio/ui/confeitaria/arquitetura_produto.dart';
import 'package:app_desafio/ui/sign_up/cadastro_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConfeitariaScreen extends StatefulWidget {
  Confeitaria confeitaria;
  ConfeitariaScreen({super.key, required this.confeitaria});

  @override
  State<ConfeitariaScreen> createState() => _ConfeitariaScreenState();
}

class _ConfeitariaScreenState extends State<ConfeitariaScreen> with RouteAware{
 AppDatabase db = AppDatabase();
 List<Produto> produtos = []; //lista dos produtos da confeitaria


@override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)! as PageRoute); //assina a rota para monitoramento
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this); //cancela a assinatura da rota
    super.dispose();
  }


@override
  void didPush() {
    pegaProdutos(); //chama a função quando a tela é empurrada na pilha de navegação
  }


@override
void initState() {
  super.initState();
pegaProdutos();
}

//função que busca os produtos no banco de dados
  void pegaProdutos() async{
  List<Produto> ps = await db.getProdutos(widget.confeitaria.id);
        setState(() {
          produtos = ps;
        });
  
  }

//função que deleta a confeitaria e seus produtos, observe que segui a ordem de deletar os produtos primeiro, para que não haja sqlexception, é uma boa prática de banco de dados. 
  Future<void> deleteConfeitariaById(int id) async {
  await (db.delete(db.produtos)
    ..where((tbl)=> tbl.confeitariaId.equals(id))).go();
  await (db.delete(db.confeitarias)
    ..where((tbl) => tbl.id.equals(id))
  ).go();
}

//essa função é mais um controle para que o usuário confirme que é essa ação que ele quer fazer e não que ele fezisso por engano
void deletarConfeitaria(){
   showDialog(context: context, builder: (context)=> AlertDialog(
    title: Text('Confirmar exclusão'),
    content: Text('Tem certeza que deseja excluir esta confeitaria e todos os seus produtos?'),
    actions: [
      TextButton(onPressed: ()=> Navigator.pop(context), child: Text('Cancelar')),
      TextButton(onPressed: ()async {
        Navigator.pop(context); // fecha o dialog
          await deleteConfeitariaById(widget.confeitaria.id);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Confeitaria excluída com sucesso')),
          );
          Navigator.pop(context,true);
      }, child: Text('Sim'))
    ],
  ));
}

//função que vai editar a confeitaria
void editarConfeitaria() async{
final result =  await Navigator.push(context, MaterialPageRoute(builder: (context){
    return CadastroScreen(econfeitaria: true,confeitaria: widget.confeitaria);
  }));
if (result == true) {
  final novaConfeitaria = await db.getConfeitariaById(widget.confeitaria.id);
  if (novaConfeitaria!=null) {
    setState(() {
    widget.confeitaria = novaConfeitaria;
  });
  }
}
  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.confeitaria.nome,
          style: TextStyle(
            fontFamily: 'LobsterTwo',
            fontSize: 22,
            color: AppColors.backgroundColor,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                  editarConfeitaria();
              },
              icon: Icon(
                Icons.edit,
                color: AppColors.backgroundColor,
              )),
          IconButton(
              onPressed: (){
                  deletarConfeitaria();
              },
              icon: Icon(
                Icons.delete,
                color: AppColors.backgroundColor,
              ))
        ],
        backgroundColor: AppColors.secondColor,
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 32.0,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.secondColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 50.0,
                  children: [
                    Icon(
                      Icons.cake,
                      size: 100,
                      color: AppColors.backgroundColor,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: ListView(
                        children: [
                          Text(
                            'Rua: ${widget.confeitaria.rua}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          Text(
                            'Número: ${widget.confeitaria.numero}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          Text(
                            'Bairro: ${widget.confeitaria.bairro}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          Text(
                            'Cidade: ${widget.confeitaria.cidade}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          Text(
                            'CEP: ${widget.confeitaria.cep}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                          Text(
                            'Estado: ${widget.confeitaria.estado}',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Produtos',
                style: TextStyle(
                    fontFamily: 'LobsterTwo',
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainColor),
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  children: List.generate(produtos.length, (index){
                    return Padding(padding: const EdgeInsets.only(bottom: 8.0),
                    child: ArquiteturaProduto(produto: produtos[index]),);
                  }),
                ),
              )
            ],
          ),
        ),
        Positioned(
            right: 15,
            bottom: 5,
            child: IconButton(
                onPressed: () async{
               final result = await   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return CadastroScreen(econfeitaria: false,confeitariaId: widget.confeitaria.id,);
                  }));
                  if(result ==true){
                    setState(() {
                      pegaProdutos();
                    });
                  }
                },
                    
                icon: Icon(
                  Icons.add_circle_outline_rounded,
                  size: 60,
                  color: AppColors.secondColor,
                )))
      ]),
    );
  }
  
  
}

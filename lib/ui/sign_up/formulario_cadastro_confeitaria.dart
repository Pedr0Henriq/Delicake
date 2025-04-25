import 'package:app_desafio/database/database.dart';
import 'package:app_desafio/ui/_core/app_colors.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

class FormularioCadastroConfeitaria extends StatefulWidget {
  final Confeitaria? confeitaria;
  const FormularioCadastroConfeitaria({super.key,this.confeitaria});

  @override
  State<FormularioCadastroConfeitaria> createState() => FormularioCadastroConfeitariaState();
}

class FormularioCadastroConfeitariaState extends State<FormularioCadastroConfeitaria> {
  final AppDatabase _db = AppDatabase();
  late TextEditingController nomeController = TextEditingController();
  late TextEditingController telefoneController = TextEditingController();
  late TextEditingController cepController = TextEditingController();
  late TextEditingController cidadeController = TextEditingController();
  late TextEditingController bairroController = TextEditingController();
  late TextEditingController estadoController = TextEditingController();
  late TextEditingController ruaController = TextEditingController();
  late TextEditingController numeroController = TextEditingController();
  String endereco = '';
  LatLng? coordenadas,novasCoordenadas;


/*
Função initState:
  Basicamente foi criada para o fluxo de edição de confeitaria, quando a tela for chamada ela já seta os textformfield com os dados atuais da confeitaria

 */
  @override
  void initState() {
    super.initState();
    if(widget.confeitaria!=null){
      nomeController.text = widget.confeitaria!.nome;
      telefoneController.text = widget.confeitaria!.telefone!;
      cepController.text = widget.confeitaria!.cep;
      cidadeController.text = widget.confeitaria!.cidade;
      bairroController.text = widget.confeitaria!.bairro;
      ruaController.text = widget.confeitaria!.rua;
      estadoController.text = widget.confeitaria!.estado;
      numeroController.text = widget.confeitaria!.numero;
      }
  }
/*
Função dispose:
  Basicamente foi criada para descartar os valores armazenados pelos Controllers após a tela ser fechada

 */
    @override
  void dispose(){
    nomeController.dispose();
    telefoneController.dispose();
    cepController.dispose();
    numeroController.dispose();
    ruaController.dispose();
    bairroController.dispose();
    cidadeController.dispose();
    estadoController.dispose();
    super.dispose();
  }

  /*
  Função de buscarEndereço: Quando o usuário informa o cep da confeitaria, o sistema vai buscar o endereço da mesma por meio da API viacep
  e já coloca os dados da rua,cidade,bairro e estado, bastando apenas o usuário informar o número da casa. */

  Future<void> buscarEndereco(String cep) async {
    final url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final dados = json.decode(response.body);
      if (!dados.containsKey('erro')) {
        setState(() {
          cidadeController.text = dados['localidade'] ?? '';
          bairroController.text = dados['bairro'] ?? '';
          estadoController.text = dados['uf'] ?? '';
          ruaController.text = dados['logradouro'] ?? '';
        });
      } else {
        _showSnackBar('CEP não encontrado.');
      }
    } else {
      _showSnackBar('Erro ao buscar o CEP.');
    }
  }

 /*
  Função de obterCoordenadas: Quando o usuário aperta o botão de cadastrar na tela de cadastroScreen, é chamada a função enviarDados da tela, porém essa função chama a função enviarDados da tela
  FormulárioCadastroConfeitaria e essa por sua vez pega os dados de endereço que foram fornecidos e utilizando o  geocoding busca as coordenadas desse endereço para salvar no banco de dados
  por meio dessa função. */
    Future<LatLng?> obterCoordenadas(String endereco) async{
    try {
      List<Location> locations = await locationFromAddress(endereco);
      if(locations.isNotEmpty) return LatLng(locations.first.latitude, locations.first.longitude);
    } catch (e) {
      _showSnackBar('Erro ao buscar coordenadas: $e');
    }
    return null;
  } 

  void _showSnackBar(String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(mensagem)),
    );
  }

/*
A função de obterCamposAlterados é utilizada apenas quando o fluxo for de edição de confeitaria, ela vai receber os parâmetros que estão no bd da confeitaria
e comparar com os que foram colocados nos campos do formulário, cada diferença é adicionada num map camposAlterados e no final ele é retornado.
 */
Future<Map<String, dynamic>> obterCamposAlterados({
  required Confeitaria confeitariaOriginal,
  required String nome,
  required String telefone,
  required String cep,
  required String rua,
  required String cidade,
  required String bairro,
  required String estado,
  required String numero,
}) async {
  final camposAlterados = <String, dynamic>{};

  if (confeitariaOriginal.nome != nome.trim()) {
    camposAlterados['nome'] = nome.trim();
  }
  if (confeitariaOriginal.telefone != telefone.trim()) {
    camposAlterados['telefone'] = telefone.trim();
  }
  if (confeitariaOriginal.cep != cep.trim()) {
    camposAlterados['cep'] = cep.trim();
  }
  if (confeitariaOriginal.rua != rua.trim()) {
    camposAlterados['rua'] = rua.trim();
  }
  if (confeitariaOriginal.cidade != cidade.trim()) {
    camposAlterados['cidade'] = cidade.trim();
  }
  if (confeitariaOriginal.bairro != bairro.trim()) {
    camposAlterados['bairro'] = bairro.trim();
  }
  if (confeitariaOriginal.estado != estado.trim()) {
    camposAlterados['estado'] = estado.trim();
  }
  if (confeitariaOriginal.numero != numero.trim()) {
    camposAlterados['numero'] = numero.trim();
  }

  // Verificar se endereço foi alterado e obter novas coordenadas
  final enderecoNovo = '$rua, $numero, $bairro, $cidade, $estado, $cep';
  final novaCoordenada = await obterCoordenadas(enderecoNovo);

  if (novaCoordenada != null) {
    final latitudeAntiga = confeitariaOriginal.latitude;
    final longitudeAntiga = confeitariaOriginal.longitude;

    // Comparar valores com uma margem para evitar diferença mínima de ponto flutuante
    const margemErro = 0.00001;

    final latitudeAlterada = (novaCoordenada.latitude - latitudeAntiga).abs() > margemErro;
    final longitudeAlterada = (novaCoordenada.longitude - longitudeAntiga).abs() > margemErro;

    if (latitudeAlterada) {
      camposAlterados['latitude'] = novaCoordenada.latitude;
    }
    if (longitudeAlterada) {
      camposAlterados['longitude'] = novaCoordenada.longitude;
    }
  }

  return camposAlterados;
}


/*
Função updateConfeitariaPorCampos:
Basicamente, é uma função que vai pegar o map camposAlterados e os valores que estão lá serão jogados para a companion que por sua vez vai se conectar com ConfeitariasCompanion
e por fim é chamado o objeto _db para chamar a função updateConfeitaria no database.dart */
Future<void> updateConfeitariaPorCampos(int confeitariaId, Map<String, dynamic> camposAlterados) async {
  if (camposAlterados.isEmpty) return;

  final companion = ConfeitariasCompanion(
    nome: camposAlterados.containsKey('nome') ? Value(camposAlterados['nome']) : const Value.absent(),
    telefone: camposAlterados.containsKey('telefone') ? Value(camposAlterados['telefone']) : const Value.absent(),
    cep: camposAlterados.containsKey('cep') ? Value(camposAlterados['cep']) : const Value.absent(),
    rua: camposAlterados.containsKey('rua') ? Value(camposAlterados['rua']) : const Value.absent(),
    cidade: camposAlterados.containsKey('cidade') ? Value(camposAlterados['cidade']) : const Value.absent(),
    bairro: camposAlterados.containsKey('bairro') ? Value(camposAlterados['bairro']) : const Value.absent(),
    estado: camposAlterados.containsKey('estado') ? Value(camposAlterados['estado']) : const Value.absent(),
    numero: camposAlterados.containsKey('numero') ? Value(camposAlterados['numero']) : const Value.absent(),
    latitude: camposAlterados.containsKey('latitude') ? Value(camposAlterados['latitude']) : const Value.absent(),
    longitude: camposAlterados.containsKey('longitude') ? Value(camposAlterados['longitude']) : const Value.absent(),
  );

  await _db.updateConfeitaria(confeitariaId, companion);
}



/*
Função salvarAlterações: basicamente ela serve como a função principal para o fluxo de edição de uma confeitaria. Ela vai chamar a função de obterCamposAlterados e receber o retorno.
Se esse retorno não for vazio, ela chama a função de updateConfeitariaPorCampos e volta para a tela anterior.*/
Future<void> salvarAlteracoes() async {
  final camposAtualizados = await obterCamposAlterados(
    confeitariaOriginal: widget.confeitaria!,
    nome: nomeController.text,
    telefone: telefoneController.text,
    cep: cepController.text,
    rua: ruaController.text,
    cidade: cidadeController.text,
    bairro: bairroController.text,
    estado: estadoController.text,
    numero: numeroController.text,
  );

  if (camposAtualizados.isNotEmpty) {
    await updateConfeitariaPorCampos(widget.confeitaria!.id, camposAtualizados);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Confeitaria atualizada com sucesso!')),
    );// Volta para a tela anterior com flag de sucesso, se quiser
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Nenhuma alteração detectada.')),
    );
  }
  Navigator.pop(context,true);
}

/*
Função enviarDados: É a função que vai criar a confeitaria quando o fluxo pra chamada dessa tela for o de cadastro */
  Future<bool> enviarDados({Map<String,dynamic>? camposAtualizados}) async{
    final nome = nomeController.text;
    final telefone = telefoneController.text;
    final cep = cepController.text;
    final numero = numeroController.text;
    final rua = ruaController.text;
    final bairro = bairroController.text;
    final cidade = cidadeController.text;
    final estado = estadoController.text;
    
    endereco = '$rua, $numero, $bairro, $cidade, $estado, $cep';
    coordenadas = await obterCoordenadas(endereco);

    if(coordenadas!=null){
      final novaConfeitaria = ConfeitariasCompanion(
        nome: Value(nome),
        telefone: Value(telefone),
        cep: Value(cep),
        numero: Value(numero),
        rua: Value(rua),
        bairro: Value(bairro),
        cidade: Value(cidade),
        estado: Value(estado),
        latitude: Value(coordenadas!.latitude),
        longitude: Value(coordenadas!.longitude),
      );

      await _db.insertConfeitaria(novaConfeitaria);
      _showSnackBar('Confeitaria cadastrada com sucesso!');
      return true;
    }
    return false;

  }


/*
Por fim, comento apenas as questões das regras de validação dos campos. os campos de Nome e número são verificados se estão vazios apenas. já o de telefone tem um regex que  
verifica o seguinte:
Parte | Significado
^ | Início da string
\(? | Um parêntese esquerdo opcional ( ( ), usado para DDD com parênteses
\d{2} | Dois dígitos numéricos — corresponde ao DDD (ex: 83, 11, etc.)
\)? | Um parêntese direito opcional ( ) )
[\s-]? | Um espaço (\s) ou hífen (-) opcional — separador entre DDD e número
\d{4,5} | De 4 a 5 dígitos — é o início do número de telefone, pode ser 4 (fixo antigo) ou 5 (celular com 9 na frente)
-? | Um hífen opcional — separando os dois blocos do número
\d{4} | Quatro dígitos finais do número de telefone
$ | Fim da string 

Já para o de cep:
Parte | Significado
^ | Início da string
\d{8} | Exatamente 8 dígitos numéricos (\d = qualquer dígito de 0 a 9)
$ | Fim da string
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
            children: [
              // Nome da Confeitaria
                TextFormField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome da Confeitaria',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),
                SizedBox(height: 7.0,),
                // Telefone
                TextFormField(
                  controller: telefoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'Campo obrigatório';
                    if (!RegExp(r'^\(?\d{2}\)?[\s-]?\d{4,5}-?\d{4}$').hasMatch(value)) {
                      return 'Telefone inválido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 7.0,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: cepController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'CEP',
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                    filled: true,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) return 'Campo obrigatório';
                          if (!RegExp(r'^\d{8}$').hasMatch(value)) {
                            return 'CEP inválido';
                          }
                          return null;
                        },
                        onChanged: (value) async{
                          if (value.length == 8) {
                            showDialog(context: context,
                            barrierDismissible: false, 
                            builder: (context) => AlertDialog(
                              content: Row(
                                children: const [
                                  CircularProgressIndicator(),
                                  SizedBox(width: 16,),
                                  Text('Buscando cep...')
                                ],
                              ),
                            ));
                            await buscarEndereco(value);
                            if(context.mounted) Navigator.of(context).pop();
                          }
                          
                        },
                      ),
                      ),
                      Expanded(
                        flex: 1,
                        child: // Número
                TextFormField(
                  controller: numeroController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Número',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  validator: (value) =>
                      value == null || value.isEmpty ? 'Campo obrigatório' : null,
                ),)
                  ],
                ),
                SizedBox(height: 7.0,),
                Row(
                  children: [
                    Expanded(
                    flex:3,
                    child: // Rua
                TextFormField(
                  controller: ruaController,
                  decoration: InputDecoration(
                    labelText: 'Rua',
                    border: OutlineInputBorder(),
                  fillColor: Colors.white,
                    filled: true,),
                  readOnly: true,
                ),),
                Expanded(
                  flex: 2,
                  child: // Bairro
                TextFormField(
                  controller: bairroController,
                  decoration: InputDecoration(
                    labelText: 'Bairro',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  readOnly: true,
                ),),
                  ],
                ),
                SizedBox(height: 7.0,),
                Row(children: [
                    Expanded(
                      flex: 3,
                      child: // Cidade
                TextFormField(
                  controller: cidadeController,
                  decoration: InputDecoration(
                    labelText: 'Cidade',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  readOnly: true,
                ),),
                Expanded(
                  flex: 1,
                  child: // Estado
                TextFormField(
                  controller: estadoController,
                  decoration: InputDecoration(
                    labelText: 'Estado',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  readOnly: true,
                ),),
                  ],),
                SizedBox(height: 15.0,),
                
            ],
          ),),
    );
  }


}



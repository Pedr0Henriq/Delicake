

class Product {
  final int id;
  final String nome;
  final String descricao;
  final double valor;
  final List<String> imagens; // Agora é uma lista
  final int confeitariaId;

  Product({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.valor,
    required this.imagens,
    required this.confeitariaId,
  });

  factory Product.fromData(Map<String, dynamic> data) {
    return Product(
      id: data['id'] as int,
      nome: data['nome'] as String,
      descricao: data['descricao'] as String,
      valor: data['valor'] as double,
      imagens: (data['imagens'] as String).split('|'), // Converte a string em lista
      confeitariaId: data['confeitariaId'] as int,
    );
  }
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ConfeitariasTable extends Confeitarias
    with TableInfo<$ConfeitariasTable, Confeitaria> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConfeitariasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telefoneMeta = const VerificationMeta(
    'telefone',
  );
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
    'telefone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ruaMeta = const VerificationMeta('rua');
  @override
  late final GeneratedColumn<String> rua = GeneratedColumn<String>(
    'rua',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bairroMeta = const VerificationMeta('bairro');
  @override
  late final GeneratedColumn<String> bairro = GeneratedColumn<String>(
    'bairro',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cidadeMeta = const VerificationMeta('cidade');
  @override
  late final GeneratedColumn<String> cidade = GeneratedColumn<String>(
    'cidade',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _estadoMeta = const VerificationMeta('estado');
  @override
  late final GeneratedColumn<String> estado = GeneratedColumn<String>(
    'estado',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cepMeta = const VerificationMeta('cep');
  @override
  late final GeneratedColumn<String> cep = GeneratedColumn<String>(
    'cep',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numeroMeta = const VerificationMeta('numero');
  @override
  late final GeneratedColumn<String> numero = GeneratedColumn<String>(
    'numero',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nome,
    telefone,
    rua,
    bairro,
    cidade,
    estado,
    cep,
    numero,
    latitude,
    longitude,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'confeitarias';
  @override
  VerificationContext validateIntegrity(
    Insertable<Confeitaria> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('telefone')) {
      context.handle(
        _telefoneMeta,
        telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta),
      );
    }
    if (data.containsKey('rua')) {
      context.handle(
        _ruaMeta,
        rua.isAcceptableOrUnknown(data['rua']!, _ruaMeta),
      );
    } else if (isInserting) {
      context.missing(_ruaMeta);
    }
    if (data.containsKey('bairro')) {
      context.handle(
        _bairroMeta,
        bairro.isAcceptableOrUnknown(data['bairro']!, _bairroMeta),
      );
    } else if (isInserting) {
      context.missing(_bairroMeta);
    }
    if (data.containsKey('cidade')) {
      context.handle(
        _cidadeMeta,
        cidade.isAcceptableOrUnknown(data['cidade']!, _cidadeMeta),
      );
    } else if (isInserting) {
      context.missing(_cidadeMeta);
    }
    if (data.containsKey('estado')) {
      context.handle(
        _estadoMeta,
        estado.isAcceptableOrUnknown(data['estado']!, _estadoMeta),
      );
    } else if (isInserting) {
      context.missing(_estadoMeta);
    }
    if (data.containsKey('cep')) {
      context.handle(
        _cepMeta,
        cep.isAcceptableOrUnknown(data['cep']!, _cepMeta),
      );
    } else if (isInserting) {
      context.missing(_cepMeta);
    }
    if (data.containsKey('numero')) {
      context.handle(
        _numeroMeta,
        numero.isAcceptableOrUnknown(data['numero']!, _numeroMeta),
      );
    } else if (isInserting) {
      context.missing(_numeroMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Confeitaria map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Confeitaria(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      nome:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}nome'],
          )!,
      telefone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefone'],
      ),
      rua:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}rua'],
          )!,
      bairro:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}bairro'],
          )!,
      cidade:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}cidade'],
          )!,
      estado:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}estado'],
          )!,
      cep:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}cep'],
          )!,
      numero:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}numero'],
          )!,
      latitude:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}latitude'],
          )!,
      longitude:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}longitude'],
          )!,
    );
  }

  @override
  $ConfeitariasTable createAlias(String alias) {
    return $ConfeitariasTable(attachedDatabase, alias);
  }
}

class Confeitaria extends DataClass implements Insertable<Confeitaria> {
  final int id;
  final String nome;
  final String? telefone;
  final String rua;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;
  final String numero;
  final double latitude;
  final double longitude;
  const Confeitaria({
    required this.id,
    required this.nome,
    this.telefone,
    required this.rua,
    required this.bairro,
    required this.cidade,
    required this.estado,
    required this.cep,
    required this.numero,
    required this.latitude,
    required this.longitude,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    if (!nullToAbsent || telefone != null) {
      map['telefone'] = Variable<String>(telefone);
    }
    map['rua'] = Variable<String>(rua);
    map['bairro'] = Variable<String>(bairro);
    map['cidade'] = Variable<String>(cidade);
    map['estado'] = Variable<String>(estado);
    map['cep'] = Variable<String>(cep);
    map['numero'] = Variable<String>(numero);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    return map;
  }

  ConfeitariasCompanion toCompanion(bool nullToAbsent) {
    return ConfeitariasCompanion(
      id: Value(id),
      nome: Value(nome),
      telefone:
          telefone == null && nullToAbsent
              ? const Value.absent()
              : Value(telefone),
      rua: Value(rua),
      bairro: Value(bairro),
      cidade: Value(cidade),
      estado: Value(estado),
      cep: Value(cep),
      numero: Value(numero),
      latitude: Value(latitude),
      longitude: Value(longitude),
    );
  }

  factory Confeitaria.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Confeitaria(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      telefone: serializer.fromJson<String?>(json['telefone']),
      rua: serializer.fromJson<String>(json['rua']),
      bairro: serializer.fromJson<String>(json['bairro']),
      cidade: serializer.fromJson<String>(json['cidade']),
      estado: serializer.fromJson<String>(json['estado']),
      cep: serializer.fromJson<String>(json['cep']),
      numero: serializer.fromJson<String>(json['numero']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'telefone': serializer.toJson<String?>(telefone),
      'rua': serializer.toJson<String>(rua),
      'bairro': serializer.toJson<String>(bairro),
      'cidade': serializer.toJson<String>(cidade),
      'estado': serializer.toJson<String>(estado),
      'cep': serializer.toJson<String>(cep),
      'numero': serializer.toJson<String>(numero),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
    };
  }

  Confeitaria copyWith({
    int? id,
    String? nome,
    Value<String?> telefone = const Value.absent(),
    String? rua,
    String? bairro,
    String? cidade,
    String? estado,
    String? cep,
    String? numero,
    double? latitude,
    double? longitude,
  }) => Confeitaria(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    telefone: telefone.present ? telefone.value : this.telefone,
    rua: rua ?? this.rua,
    bairro: bairro ?? this.bairro,
    cidade: cidade ?? this.cidade,
    estado: estado ?? this.estado,
    cep: cep ?? this.cep,
    numero: numero ?? this.numero,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
  );
  Confeitaria copyWithCompanion(ConfeitariasCompanion data) {
    return Confeitaria(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      rua: data.rua.present ? data.rua.value : this.rua,
      bairro: data.bairro.present ? data.bairro.value : this.bairro,
      cidade: data.cidade.present ? data.cidade.value : this.cidade,
      estado: data.estado.present ? data.estado.value : this.estado,
      cep: data.cep.present ? data.cep.value : this.cep,
      numero: data.numero.present ? data.numero.value : this.numero,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Confeitaria(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('telefone: $telefone, ')
          ..write('rua: $rua, ')
          ..write('bairro: $bairro, ')
          ..write('cidade: $cidade, ')
          ..write('estado: $estado, ')
          ..write('cep: $cep, ')
          ..write('numero: $numero, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    nome,
    telefone,
    rua,
    bairro,
    cidade,
    estado,
    cep,
    numero,
    latitude,
    longitude,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Confeitaria &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.telefone == this.telefone &&
          other.rua == this.rua &&
          other.bairro == this.bairro &&
          other.cidade == this.cidade &&
          other.estado == this.estado &&
          other.cep == this.cep &&
          other.numero == this.numero &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude);
}

class ConfeitariasCompanion extends UpdateCompanion<Confeitaria> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String?> telefone;
  final Value<String> rua;
  final Value<String> bairro;
  final Value<String> cidade;
  final Value<String> estado;
  final Value<String> cep;
  final Value<String> numero;
  final Value<double> latitude;
  final Value<double> longitude;
  const ConfeitariasCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.telefone = const Value.absent(),
    this.rua = const Value.absent(),
    this.bairro = const Value.absent(),
    this.cidade = const Value.absent(),
    this.estado = const Value.absent(),
    this.cep = const Value.absent(),
    this.numero = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
  });
  ConfeitariasCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    this.telefone = const Value.absent(),
    required String rua,
    required String bairro,
    required String cidade,
    required String estado,
    required String cep,
    required String numero,
    required double latitude,
    required double longitude,
  }) : nome = Value(nome),
       rua = Value(rua),
       bairro = Value(bairro),
       cidade = Value(cidade),
       estado = Value(estado),
       cep = Value(cep),
       numero = Value(numero),
       latitude = Value(latitude),
       longitude = Value(longitude);
  static Insertable<Confeitaria> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? telefone,
    Expression<String>? rua,
    Expression<String>? bairro,
    Expression<String>? cidade,
    Expression<String>? estado,
    Expression<String>? cep,
    Expression<String>? numero,
    Expression<double>? latitude,
    Expression<double>? longitude,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (telefone != null) 'telefone': telefone,
      if (rua != null) 'rua': rua,
      if (bairro != null) 'bairro': bairro,
      if (cidade != null) 'cidade': cidade,
      if (estado != null) 'estado': estado,
      if (cep != null) 'cep': cep,
      if (numero != null) 'numero': numero,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
    });
  }

  ConfeitariasCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<String?>? telefone,
    Value<String>? rua,
    Value<String>? bairro,
    Value<String>? cidade,
    Value<String>? estado,
    Value<String>? cep,
    Value<String>? numero,
    Value<double>? latitude,
    Value<double>? longitude,
  }) {
    return ConfeitariasCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      rua: rua ?? this.rua,
      bairro: bairro ?? this.bairro,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
      cep: cep ?? this.cep,
      numero: numero ?? this.numero,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (rua.present) {
      map['rua'] = Variable<String>(rua.value);
    }
    if (bairro.present) {
      map['bairro'] = Variable<String>(bairro.value);
    }
    if (cidade.present) {
      map['cidade'] = Variable<String>(cidade.value);
    }
    if (estado.present) {
      map['estado'] = Variable<String>(estado.value);
    }
    if (cep.present) {
      map['cep'] = Variable<String>(cep.value);
    }
    if (numero.present) {
      map['numero'] = Variable<String>(numero.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConfeitariasCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('telefone: $telefone, ')
          ..write('rua: $rua, ')
          ..write('bairro: $bairro, ')
          ..write('cidade: $cidade, ')
          ..write('estado: $estado, ')
          ..write('cep: $cep, ')
          ..write('numero: $numero, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude')
          ..write(')'))
        .toString();
  }
}

class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdutosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 50,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descricaoMeta = const VerificationMeta(
    'descricao',
  );
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
    'descricao',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valorMeta = const VerificationMeta('valor');
  @override
  late final GeneratedColumn<double> valor = GeneratedColumn<double>(
    'valor',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> imagens =
      GeneratedColumn<String>(
        'imagens',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<List<String>?>($ProdutosTable.$converterimagensn);
  static const VerificationMeta _confeitariaIdMeta = const VerificationMeta(
    'confeitariaId',
  );
  @override
  late final GeneratedColumn<int> confeitariaId = GeneratedColumn<int>(
    'confeitaria_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    $customConstraints: 'REFERENCES confeitarias(id) ON DELETE CASCADE',
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nome,
    descricao,
    valor,
    imagens,
    confeitariaId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'produtos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Produto> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(
        _descricaoMeta,
        descricao.isAcceptableOrUnknown(data['descricao']!, _descricaoMeta),
      );
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('valor')) {
      context.handle(
        _valorMeta,
        valor.isAcceptableOrUnknown(data['valor']!, _valorMeta),
      );
    } else if (isInserting) {
      context.missing(_valorMeta);
    }
    if (data.containsKey('confeitaria_id')) {
      context.handle(
        _confeitariaIdMeta,
        confeitariaId.isAcceptableOrUnknown(
          data['confeitaria_id']!,
          _confeitariaIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_confeitariaIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Produto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Produto(
      id:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}id'],
          )!,
      nome:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}nome'],
          )!,
      descricao:
          attachedDatabase.typeMapping.read(
            DriftSqlType.string,
            data['${effectivePrefix}descricao'],
          )!,
      valor:
          attachedDatabase.typeMapping.read(
            DriftSqlType.double,
            data['${effectivePrefix}valor'],
          )!,
      imagens: $ProdutosTable.$converterimagensn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}imagens'],
        ),
      ),
      confeitariaId:
          attachedDatabase.typeMapping.read(
            DriftSqlType.int,
            data['${effectivePrefix}confeitaria_id'],
          )!,
    );
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterimagens =
      const JsonListConverter();
  static TypeConverter<List<String>?, String?> $converterimagensn =
      NullAwareTypeConverter.wrap($converterimagens);
}

class Produto extends DataClass implements Insertable<Produto> {
  final int id;
  final String nome;
  final String descricao;
  final double valor;
  final List<String>? imagens;
  final int confeitariaId;
  const Produto({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.valor,
    this.imagens,
    required this.confeitariaId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['descricao'] = Variable<String>(descricao);
    map['valor'] = Variable<double>(valor);
    if (!nullToAbsent || imagens != null) {
      map['imagens'] = Variable<String>(
        $ProdutosTable.$converterimagensn.toSql(imagens),
      );
    }
    map['confeitaria_id'] = Variable<int>(confeitariaId);
    return map;
  }

  ProdutosCompanion toCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      id: Value(id),
      nome: Value(nome),
      descricao: Value(descricao),
      valor: Value(valor),
      imagens:
          imagens == null && nullToAbsent
              ? const Value.absent()
              : Value(imagens),
      confeitariaId: Value(confeitariaId),
    );
  }

  factory Produto.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Produto(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      descricao: serializer.fromJson<String>(json['descricao']),
      valor: serializer.fromJson<double>(json['valor']),
      imagens: serializer.fromJson<List<String>?>(json['imagens']),
      confeitariaId: serializer.fromJson<int>(json['confeitariaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'descricao': serializer.toJson<String>(descricao),
      'valor': serializer.toJson<double>(valor),
      'imagens': serializer.toJson<List<String>?>(imagens),
      'confeitariaId': serializer.toJson<int>(confeitariaId),
    };
  }

  Produto copyWith({
    int? id,
    String? nome,
    String? descricao,
    double? valor,
    Value<List<String>?> imagens = const Value.absent(),
    int? confeitariaId,
  }) => Produto(
    id: id ?? this.id,
    nome: nome ?? this.nome,
    descricao: descricao ?? this.descricao,
    valor: valor ?? this.valor,
    imagens: imagens.present ? imagens.value : this.imagens,
    confeitariaId: confeitariaId ?? this.confeitariaId,
  );
  Produto copyWithCompanion(ProdutosCompanion data) {
    return Produto(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      valor: data.valor.present ? data.valor.value : this.valor,
      imagens: data.imagens.present ? data.imagens.value : this.imagens,
      confeitariaId:
          data.confeitariaId.present
              ? data.confeitariaId.value
              : this.confeitariaId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('valor: $valor, ')
          ..write('imagens: $imagens, ')
          ..write('confeitariaId: $confeitariaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nome, descricao, valor, imagens, confeitariaId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Produto &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.valor == this.valor &&
          other.imagens == this.imagens &&
          other.confeitariaId == this.confeitariaId);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> descricao;
  final Value<double> valor;
  final Value<List<String>?> imagens;
  final Value<int> confeitariaId;
  const ProdutosCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.valor = const Value.absent(),
    this.imagens = const Value.absent(),
    this.confeitariaId = const Value.absent(),
  });
  ProdutosCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String descricao,
    required double valor,
    this.imagens = const Value.absent(),
    required int confeitariaId,
  }) : nome = Value(nome),
       descricao = Value(descricao),
       valor = Value(valor),
       confeitariaId = Value(confeitariaId);
  static Insertable<Produto> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<double>? valor,
    Expression<String>? imagens,
    Expression<int>? confeitariaId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (descricao != null) 'descricao': descricao,
      if (valor != null) 'valor': valor,
      if (imagens != null) 'imagens': imagens,
      if (confeitariaId != null) 'confeitaria_id': confeitariaId,
    });
  }

  ProdutosCompanion copyWith({
    Value<int>? id,
    Value<String>? nome,
    Value<String>? descricao,
    Value<double>? valor,
    Value<List<String>?>? imagens,
    Value<int>? confeitariaId,
  }) {
    return ProdutosCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      valor: valor ?? this.valor,
      imagens: imagens ?? this.imagens,
      confeitariaId: confeitariaId ?? this.confeitariaId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (valor.present) {
      map['valor'] = Variable<double>(valor.value);
    }
    if (imagens.present) {
      map['imagens'] = Variable<String>(
        $ProdutosTable.$converterimagensn.toSql(imagens.value),
      );
    }
    if (confeitariaId.present) {
      map['confeitaria_id'] = Variable<int>(confeitariaId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutosCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('valor: $valor, ')
          ..write('imagens: $imagens, ')
          ..write('confeitariaId: $confeitariaId')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ConfeitariasTable confeitarias = $ConfeitariasTable(this);
  late final $ProdutosTable produtos = $ProdutosTable(this);
  late final ConfeitariasDao confeitariasDao = ConfeitariasDao(
    this as AppDatabase,
  );
  late final ProdutosDao produtosDao = ProdutosDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [confeitarias, produtos];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'confeitarias',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('produtos', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$ConfeitariasTableCreateCompanionBuilder =
    ConfeitariasCompanion Function({
      Value<int> id,
      required String nome,
      Value<String?> telefone,
      required String rua,
      required String bairro,
      required String cidade,
      required String estado,
      required String cep,
      required String numero,
      required double latitude,
      required double longitude,
    });
typedef $$ConfeitariasTableUpdateCompanionBuilder =
    ConfeitariasCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<String?> telefone,
      Value<String> rua,
      Value<String> bairro,
      Value<String> cidade,
      Value<String> estado,
      Value<String> cep,
      Value<String> numero,
      Value<double> latitude,
      Value<double> longitude,
    });

final class $$ConfeitariasTableReferences
    extends BaseReferences<_$AppDatabase, $ConfeitariasTable, Confeitaria> {
  $$ConfeitariasTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProdutosTable, List<Produto>> _produtosRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.produtos,
    aliasName: $_aliasNameGenerator(
      db.confeitarias.id,
      db.produtos.confeitariaId,
    ),
  );

  $$ProdutosTableProcessedTableManager get produtosRefs {
    final manager = $$ProdutosTableTableManager(
      $_db,
      $_db.produtos,
    ).filter((f) => f.confeitariaId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_produtosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ConfeitariasTableFilterComposer
    extends Composer<_$AppDatabase, $ConfeitariasTable> {
  $$ConfeitariasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rua => $composableBuilder(
    column: $table.rua,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bairro => $composableBuilder(
    column: $table.bairro,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cidade => $composableBuilder(
    column: $table.cidade,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get estado => $composableBuilder(
    column: $table.estado,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cep => $composableBuilder(
    column: $table.cep,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get numero => $composableBuilder(
    column: $table.numero,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> produtosRefs(
    Expression<bool> Function($$ProdutosTableFilterComposer f) f,
  ) {
    final $$ProdutosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.produtos,
      getReferencedColumn: (t) => t.confeitariaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProdutosTableFilterComposer(
            $db: $db,
            $table: $db.produtos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ConfeitariasTableOrderingComposer
    extends Composer<_$AppDatabase, $ConfeitariasTable> {
  $$ConfeitariasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rua => $composableBuilder(
    column: $table.rua,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bairro => $composableBuilder(
    column: $table.bairro,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cidade => $composableBuilder(
    column: $table.cidade,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get estado => $composableBuilder(
    column: $table.estado,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cep => $composableBuilder(
    column: $table.cep,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get numero => $composableBuilder(
    column: $table.numero,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ConfeitariasTableAnnotationComposer
    extends Composer<_$AppDatabase, $ConfeitariasTable> {
  $$ConfeitariasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get rua =>
      $composableBuilder(column: $table.rua, builder: (column) => column);

  GeneratedColumn<String> get bairro =>
      $composableBuilder(column: $table.bairro, builder: (column) => column);

  GeneratedColumn<String> get cidade =>
      $composableBuilder(column: $table.cidade, builder: (column) => column);

  GeneratedColumn<String> get estado =>
      $composableBuilder(column: $table.estado, builder: (column) => column);

  GeneratedColumn<String> get cep =>
      $composableBuilder(column: $table.cep, builder: (column) => column);

  GeneratedColumn<String> get numero =>
      $composableBuilder(column: $table.numero, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  Expression<T> produtosRefs<T extends Object>(
    Expression<T> Function($$ProdutosTableAnnotationComposer a) f,
  ) {
    final $$ProdutosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.produtos,
      getReferencedColumn: (t) => t.confeitariaId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProdutosTableAnnotationComposer(
            $db: $db,
            $table: $db.produtos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ConfeitariasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ConfeitariasTable,
          Confeitaria,
          $$ConfeitariasTableFilterComposer,
          $$ConfeitariasTableOrderingComposer,
          $$ConfeitariasTableAnnotationComposer,
          $$ConfeitariasTableCreateCompanionBuilder,
          $$ConfeitariasTableUpdateCompanionBuilder,
          (Confeitaria, $$ConfeitariasTableReferences),
          Confeitaria,
          PrefetchHooks Function({bool produtosRefs})
        > {
  $$ConfeitariasTableTableManager(_$AppDatabase db, $ConfeitariasTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ConfeitariasTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ConfeitariasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () =>
                  $$ConfeitariasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String?> telefone = const Value.absent(),
                Value<String> rua = const Value.absent(),
                Value<String> bairro = const Value.absent(),
                Value<String> cidade = const Value.absent(),
                Value<String> estado = const Value.absent(),
                Value<String> cep = const Value.absent(),
                Value<String> numero = const Value.absent(),
                Value<double> latitude = const Value.absent(),
                Value<double> longitude = const Value.absent(),
              }) => ConfeitariasCompanion(
                id: id,
                nome: nome,
                telefone: telefone,
                rua: rua,
                bairro: bairro,
                cidade: cidade,
                estado: estado,
                cep: cep,
                numero: numero,
                latitude: latitude,
                longitude: longitude,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                Value<String?> telefone = const Value.absent(),
                required String rua,
                required String bairro,
                required String cidade,
                required String estado,
                required String cep,
                required String numero,
                required double latitude,
                required double longitude,
              }) => ConfeitariasCompanion.insert(
                id: id,
                nome: nome,
                telefone: telefone,
                rua: rua,
                bairro: bairro,
                cidade: cidade,
                estado: estado,
                cep: cep,
                numero: numero,
                latitude: latitude,
                longitude: longitude,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$ConfeitariasTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({produtosRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (produtosRefs) db.produtos],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (produtosRefs)
                    await $_getPrefetchedData<
                      Confeitaria,
                      $ConfeitariasTable,
                      Produto
                    >(
                      currentTable: table,
                      referencedTable: $$ConfeitariasTableReferences
                          ._produtosRefsTable(db),
                      managerFromTypedResult:
                          (p0) =>
                              $$ConfeitariasTableReferences(
                                db,
                                table,
                                p0,
                              ).produtosRefs,
                      referencedItemsForCurrentItem:
                          (item, referencedItems) => referencedItems.where(
                            (e) => e.confeitariaId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ConfeitariasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ConfeitariasTable,
      Confeitaria,
      $$ConfeitariasTableFilterComposer,
      $$ConfeitariasTableOrderingComposer,
      $$ConfeitariasTableAnnotationComposer,
      $$ConfeitariasTableCreateCompanionBuilder,
      $$ConfeitariasTableUpdateCompanionBuilder,
      (Confeitaria, $$ConfeitariasTableReferences),
      Confeitaria,
      PrefetchHooks Function({bool produtosRefs})
    >;
typedef $$ProdutosTableCreateCompanionBuilder =
    ProdutosCompanion Function({
      Value<int> id,
      required String nome,
      required String descricao,
      required double valor,
      Value<List<String>?> imagens,
      required int confeitariaId,
    });
typedef $$ProdutosTableUpdateCompanionBuilder =
    ProdutosCompanion Function({
      Value<int> id,
      Value<String> nome,
      Value<String> descricao,
      Value<double> valor,
      Value<List<String>?> imagens,
      Value<int> confeitariaId,
    });

final class $$ProdutosTableReferences
    extends BaseReferences<_$AppDatabase, $ProdutosTable, Produto> {
  $$ProdutosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ConfeitariasTable _confeitariaIdTable(_$AppDatabase db) =>
      db.confeitarias.createAlias(
        $_aliasNameGenerator(db.produtos.confeitariaId, db.confeitarias.id),
      );

  $$ConfeitariasTableProcessedTableManager get confeitariaId {
    final $_column = $_itemColumn<int>('confeitaria_id')!;

    final manager = $$ConfeitariasTableTableManager(
      $_db,
      $_db.confeitarias,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_confeitariaIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ProdutosTableFilterComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get descricao => $composableBuilder(
    column: $table.descricao,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get valor => $composableBuilder(
    column: $table.valor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
  get imagens => $composableBuilder(
    column: $table.imagens,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  $$ConfeitariasTableFilterComposer get confeitariaId {
    final $$ConfeitariasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.confeitariaId,
      referencedTable: $db.confeitarias,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ConfeitariasTableFilterComposer(
            $db: $db,
            $table: $db.confeitarias,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProdutosTableOrderingComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get descricao => $composableBuilder(
    column: $table.descricao,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get valor => $composableBuilder(
    column: $table.valor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagens => $composableBuilder(
    column: $table.imagens,
    builder: (column) => ColumnOrderings(column),
  );

  $$ConfeitariasTableOrderingComposer get confeitariaId {
    final $$ConfeitariasTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.confeitariaId,
      referencedTable: $db.confeitarias,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ConfeitariasTableOrderingComposer(
            $db: $db,
            $table: $db.confeitarias,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProdutosTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProdutosTable> {
  $$ProdutosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get descricao =>
      $composableBuilder(column: $table.descricao, builder: (column) => column);

  GeneratedColumn<double> get valor =>
      $composableBuilder(column: $table.valor, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<String>?, String> get imagens =>
      $composableBuilder(column: $table.imagens, builder: (column) => column);

  $$ConfeitariasTableAnnotationComposer get confeitariaId {
    final $$ConfeitariasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.confeitariaId,
      referencedTable: $db.confeitarias,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ConfeitariasTableAnnotationComposer(
            $db: $db,
            $table: $db.confeitarias,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProdutosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProdutosTable,
          Produto,
          $$ProdutosTableFilterComposer,
          $$ProdutosTableOrderingComposer,
          $$ProdutosTableAnnotationComposer,
          $$ProdutosTableCreateCompanionBuilder,
          $$ProdutosTableUpdateCompanionBuilder,
          (Produto, $$ProdutosTableReferences),
          Produto,
          PrefetchHooks Function({bool confeitariaId})
        > {
  $$ProdutosTableTableManager(_$AppDatabase db, $ProdutosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer:
              () => $$ProdutosTableFilterComposer($db: db, $table: table),
          createOrderingComposer:
              () => $$ProdutosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer:
              () => $$ProdutosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<String> descricao = const Value.absent(),
                Value<double> valor = const Value.absent(),
                Value<List<String>?> imagens = const Value.absent(),
                Value<int> confeitariaId = const Value.absent(),
              }) => ProdutosCompanion(
                id: id,
                nome: nome,
                descricao: descricao,
                valor: valor,
                imagens: imagens,
                confeitariaId: confeitariaId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String nome,
                required String descricao,
                required double valor,
                Value<List<String>?> imagens = const Value.absent(),
                required int confeitariaId,
              }) => ProdutosCompanion.insert(
                id: id,
                nome: nome,
                descricao: descricao,
                valor: valor,
                imagens: imagens,
                confeitariaId: confeitariaId,
              ),
          withReferenceMapper:
              (p0) =>
                  p0
                      .map(
                        (e) => (
                          e.readTable(table),
                          $$ProdutosTableReferences(db, table, e),
                        ),
                      )
                      .toList(),
          prefetchHooksCallback: ({confeitariaId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                T extends TableManagerState<
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic,
                  dynamic
                >
              >(state) {
                if (confeitariaId) {
                  state =
                      state.withJoin(
                            currentTable: table,
                            currentColumn: table.confeitariaId,
                            referencedTable: $$ProdutosTableReferences
                                ._confeitariaIdTable(db),
                            referencedColumn:
                                $$ProdutosTableReferences
                                    ._confeitariaIdTable(db)
                                    .id,
                          )
                          as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ProdutosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProdutosTable,
      Produto,
      $$ProdutosTableFilterComposer,
      $$ProdutosTableOrderingComposer,
      $$ProdutosTableAnnotationComposer,
      $$ProdutosTableCreateCompanionBuilder,
      $$ProdutosTableUpdateCompanionBuilder,
      (Produto, $$ProdutosTableReferences),
      Produto,
      PrefetchHooks Function({bool confeitariaId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ConfeitariasTableTableManager get confeitarias =>
      $$ConfeitariasTableTableManager(_db, _db.confeitarias);
  $$ProdutosTableTableManager get produtos =>
      $$ProdutosTableTableManager(_db, _db.produtos);
}

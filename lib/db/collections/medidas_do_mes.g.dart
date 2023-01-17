// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medidas_do_mes.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMedidasDoMesCollection on Isar {
  IsarCollection<MedidasDoMes> get medidasDoMes => this.collection();
}

const MedidasDoMesSchema = CollectionSchema(
  name: r'MedidasDoMes',
  id: 4200396868035578312,
  properties: {
    r'barriga': PropertySchema(
      id: 0,
      name: r'barriga',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'bracoDireito': PropertySchema(
      id: 1,
      name: r'bracoDireito',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'bracoEsquerdo': PropertySchema(
      id: 2,
      name: r'bracoEsquerdo',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'bumbum': PropertySchema(
      id: 3,
      name: r'bumbum',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'cintura': PropertySchema(
      id: 4,
      name: r'cintura',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'costas': PropertySchema(
      id: 5,
      name: r'costas',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'coxaDireita': PropertySchema(
      id: 6,
      name: r'coxaDireita',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'coxaEsquerda': PropertySchema(
      id: 7,
      name: r'coxaEsquerda',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'dataDasMedidas': PropertySchema(
      id: 8,
      name: r'dataDasMedidas',
      type: IsarType.dateTime,
    ),
    r'panturrilhaDireita': PropertySchema(
      id: 9,
      name: r'panturrilhaDireita',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'panturrilhaEsquerda': PropertySchema(
      id: 10,
      name: r'panturrilhaEsquerda',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'peito': PropertySchema(
      id: 11,
      name: r'peito',
      type: IsarType.object,
      target: r'Medida',
    ),
    r'peso': PropertySchema(
      id: 12,
      name: r'peso',
      type: IsarType.object,
      target: r'Medida',
    )
  },
  estimateSize: _medidasDoMesEstimateSize,
  serialize: _medidasDoMesSerialize,
  deserialize: _medidasDoMesDeserialize,
  deserializeProp: _medidasDoMesDeserializeProp,
  idName: r'id',
  indexes: {
    r'dataDasMedidas': IndexSchema(
      id: 1349533836283861011,
      name: r'dataDasMedidas',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'dataDasMedidas',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'Medida': MedidaSchema},
  getId: _medidasDoMesGetId,
  getLinks: _medidasDoMesGetLinks,
  attach: _medidasDoMesAttach,
  version: '3.0.5',
);

int _medidasDoMesEstimateSize(
  MedidasDoMes object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.barriga, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.bracoDireito, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.bracoEsquerdo, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(object.bumbum, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.cintura, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(object.costas, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.coxaDireita, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.coxaEsquerda, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.panturrilhaDireita, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(
          object.panturrilhaEsquerda, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(object.peito, allOffsets[Medida]!, allOffsets);
  bytesCount += 3 +
      MedidaSchema.estimateSize(object.peso, allOffsets[Medida]!, allOffsets);
  return bytesCount;
}

void _medidasDoMesSerialize(
  MedidasDoMes object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Medida>(
    offsets[0],
    allOffsets,
    MedidaSchema.serialize,
    object.barriga,
  );
  writer.writeObject<Medida>(
    offsets[1],
    allOffsets,
    MedidaSchema.serialize,
    object.bracoDireito,
  );
  writer.writeObject<Medida>(
    offsets[2],
    allOffsets,
    MedidaSchema.serialize,
    object.bracoEsquerdo,
  );
  writer.writeObject<Medida>(
    offsets[3],
    allOffsets,
    MedidaSchema.serialize,
    object.bumbum,
  );
  writer.writeObject<Medida>(
    offsets[4],
    allOffsets,
    MedidaSchema.serialize,
    object.cintura,
  );
  writer.writeObject<Medida>(
    offsets[5],
    allOffsets,
    MedidaSchema.serialize,
    object.costas,
  );
  writer.writeObject<Medida>(
    offsets[6],
    allOffsets,
    MedidaSchema.serialize,
    object.coxaDireita,
  );
  writer.writeObject<Medida>(
    offsets[7],
    allOffsets,
    MedidaSchema.serialize,
    object.coxaEsquerda,
  );
  writer.writeDateTime(offsets[8], object.dataDasMedidas);
  writer.writeObject<Medida>(
    offsets[9],
    allOffsets,
    MedidaSchema.serialize,
    object.panturrilhaDireita,
  );
  writer.writeObject<Medida>(
    offsets[10],
    allOffsets,
    MedidaSchema.serialize,
    object.panturrilhaEsquerda,
  );
  writer.writeObject<Medida>(
    offsets[11],
    allOffsets,
    MedidaSchema.serialize,
    object.peito,
  );
  writer.writeObject<Medida>(
    offsets[12],
    allOffsets,
    MedidaSchema.serialize,
    object.peso,
  );
}

MedidasDoMes _medidasDoMesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedidasDoMes();
  object.barriga = reader.readObjectOrNull<Medida>(
        offsets[0],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.bracoDireito = reader.readObjectOrNull<Medida>(
        offsets[1],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.bracoEsquerdo = reader.readObjectOrNull<Medida>(
        offsets[2],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.bumbum = reader.readObjectOrNull<Medida>(
        offsets[3],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.cintura = reader.readObjectOrNull<Medida>(
        offsets[4],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.costas = reader.readObjectOrNull<Medida>(
        offsets[5],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.coxaDireita = reader.readObjectOrNull<Medida>(
        offsets[6],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.coxaEsquerda = reader.readObjectOrNull<Medida>(
        offsets[7],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.dataDasMedidas = reader.readDateTime(offsets[8]);
  object.id = id;
  object.panturrilhaDireita = reader.readObjectOrNull<Medida>(
        offsets[9],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.panturrilhaEsquerda = reader.readObjectOrNull<Medida>(
        offsets[10],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.peito = reader.readObjectOrNull<Medida>(
        offsets[11],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  object.peso = reader.readObjectOrNull<Medida>(
        offsets[12],
        MedidaSchema.deserialize,
        allOffsets,
      ) ??
      Medida();
  return object;
}

P _medidasDoMesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 1:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 2:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 3:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 4:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 5:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 6:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 7:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 10:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 11:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    case 12:
      return (reader.readObjectOrNull<Medida>(
            offset,
            MedidaSchema.deserialize,
            allOffsets,
          ) ??
          Medida()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medidasDoMesGetId(MedidasDoMes object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medidasDoMesGetLinks(MedidasDoMes object) {
  return [];
}

void _medidasDoMesAttach(
    IsarCollection<dynamic> col, Id id, MedidasDoMes object) {
  object.id = id;
}

extension MedidasDoMesQueryWhereSort
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QWhere> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhere> anyDataDasMedidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'dataDasMedidas'),
      );
    });
  }
}

extension MedidasDoMesQueryWhere
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QWhereClause> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause>
      dataDasMedidasEqualTo(DateTime dataDasMedidas) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dataDasMedidas',
        value: [dataDasMedidas],
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause>
      dataDasMedidasNotEqualTo(DateTime dataDasMedidas) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dataDasMedidas',
              lower: [],
              upper: [dataDasMedidas],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dataDasMedidas',
              lower: [dataDasMedidas],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dataDasMedidas',
              lower: [dataDasMedidas],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'dataDasMedidas',
              lower: [],
              upper: [dataDasMedidas],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause>
      dataDasMedidasGreaterThan(
    DateTime dataDasMedidas, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dataDasMedidas',
        lower: [dataDasMedidas],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause>
      dataDasMedidasLessThan(
    DateTime dataDasMedidas, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dataDasMedidas',
        lower: [],
        upper: [dataDasMedidas],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause>
      dataDasMedidasBetween(
    DateTime lowerDataDasMedidas,
    DateTime upperDataDasMedidas, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'dataDasMedidas',
        lower: [lowerDataDasMedidas],
        includeLower: includeLower,
        upper: [upperDataDasMedidas],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedidasDoMesQueryFilter
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataDasMedidas',
        value: value,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataDasMedidas',
        value: value,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataDasMedidas',
        value: value,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataDasMedidas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedidasDoMesQueryObject
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> barriga(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'barriga');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> bracoDireito(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bracoDireito');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> bracoEsquerdo(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bracoEsquerdo');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> bumbum(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'bumbum');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> cintura(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cintura');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> costas(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'costas');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> coxaDireita(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'coxaDireita');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> coxaEsquerda(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'coxaEsquerda');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      panturrilhaDireita(FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'panturrilhaDireita');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      panturrilhaEsquerda(FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'panturrilhaEsquerda');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> peito(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'peito');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> peso(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'peso');
    });
  }
}

extension MedidasDoMesQueryLinks
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {}

extension MedidasDoMesQuerySortBy
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QSortBy> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterSortBy>
      sortByDataDasMedidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDasMedidas', Sort.asc);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterSortBy>
      sortByDataDasMedidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDasMedidas', Sort.desc);
    });
  }
}

extension MedidasDoMesQuerySortThenBy
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QSortThenBy> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterSortBy>
      thenByDataDasMedidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDasMedidas', Sort.asc);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterSortBy>
      thenByDataDasMedidasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDasMedidas', Sort.desc);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension MedidasDoMesQueryWhereDistinct
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QDistinct> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QDistinct>
      distinctByDataDasMedidas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataDasMedidas');
    });
  }
}

extension MedidasDoMesQueryProperty
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QQueryProperty> {
  QueryBuilder<MedidasDoMes, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> barrigaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'barriga');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> bracoDireitoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bracoDireito');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> bracoEsquerdoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bracoEsquerdo');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> bumbumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bumbum');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> cinturaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cintura');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> costasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'costas');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> coxaDireitaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coxaDireita');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> coxaEsquerdaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coxaEsquerda');
    });
  }

  QueryBuilder<MedidasDoMes, DateTime, QQueryOperations>
      dataDasMedidasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataDasMedidas');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations>
      panturrilhaDireitaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'panturrilhaDireita');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations>
      panturrilhaEsquerdaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'panturrilhaEsquerda');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> peitoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'peito');
    });
  }

  QueryBuilder<MedidasDoMes, Medida, QQueryOperations> pesoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'peso');
    });
  }
}

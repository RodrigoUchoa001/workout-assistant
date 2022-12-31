// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medida.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMedidaCollection on Isar {
  IsarCollection<Medida> get medidas => this.collection();
}

const MedidaSchema = CollectionSchema(
  name: r'Medida',
  id: -8762915985137951152,
  properties: {
    r'dataDaMedida': PropertySchema(
      id: 0,
      name: r'dataDaMedida',
      type: IsarType.dateTime,
    ),
    r'tipoDeMedida': PropertySchema(
      id: 1,
      name: r'tipoDeMedida',
      type: IsarType.string,
    ),
    r'unidadeDaMedida': PropertySchema(
      id: 2,
      name: r'unidadeDaMedida',
      type: IsarType.string,
    ),
    r'valorDaMedida': PropertySchema(
      id: 3,
      name: r'valorDaMedida',
      type: IsarType.double,
    )
  },
  estimateSize: _medidaEstimateSize,
  serialize: _medidaSerialize,
  deserialize: _medidaDeserialize,
  deserializeProp: _medidaDeserializeProp,
  idName: r'id',
  indexes: {
    r'tipoDeMedida': IndexSchema(
      id: 1463943635564656384,
      name: r'tipoDeMedida',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tipoDeMedida',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {
    r'mesDaMedida': LinkSchema(
      id: 3802203348938790379,
      name: r'mesDaMedida',
      target: r'MedidasDoMes',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _medidaGetId,
  getLinks: _medidaGetLinks,
  attach: _medidaAttach,
  version: '3.0.5',
);

int _medidaEstimateSize(
  Medida object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.tipoDeMedida.length * 3;
  bytesCount += 3 + object.unidadeDaMedida.length * 3;
  return bytesCount;
}

void _medidaSerialize(
  Medida object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dataDaMedida);
  writer.writeString(offsets[1], object.tipoDeMedida);
  writer.writeString(offsets[2], object.unidadeDaMedida);
  writer.writeDouble(offsets[3], object.valorDaMedida);
}

Medida _medidaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Medida();
  object.dataDaMedida = reader.readDateTime(offsets[0]);
  object.id = id;
  object.tipoDeMedida = reader.readString(offsets[1]);
  object.unidadeDaMedida = reader.readString(offsets[2]);
  object.valorDaMedida = reader.readDouble(offsets[3]);
  return object;
}

P _medidaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medidaGetId(Medida object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medidaGetLinks(Medida object) {
  return [object.mesDaMedida];
}

void _medidaAttach(IsarCollection<dynamic> col, Id id, Medida object) {
  object.id = id;
  object.mesDaMedida
      .attach(col, col.isar.collection<MedidasDoMes>(), r'mesDaMedida', id);
}

extension MedidaByIndex on IsarCollection<Medida> {
  Future<Medida?> getByTipoDeMedida(String tipoDeMedida) {
    return getByIndex(r'tipoDeMedida', [tipoDeMedida]);
  }

  Medida? getByTipoDeMedidaSync(String tipoDeMedida) {
    return getByIndexSync(r'tipoDeMedida', [tipoDeMedida]);
  }

  Future<bool> deleteByTipoDeMedida(String tipoDeMedida) {
    return deleteByIndex(r'tipoDeMedida', [tipoDeMedida]);
  }

  bool deleteByTipoDeMedidaSync(String tipoDeMedida) {
    return deleteByIndexSync(r'tipoDeMedida', [tipoDeMedida]);
  }

  Future<List<Medida?>> getAllByTipoDeMedida(List<String> tipoDeMedidaValues) {
    final values = tipoDeMedidaValues.map((e) => [e]).toList();
    return getAllByIndex(r'tipoDeMedida', values);
  }

  List<Medida?> getAllByTipoDeMedidaSync(List<String> tipoDeMedidaValues) {
    final values = tipoDeMedidaValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'tipoDeMedida', values);
  }

  Future<int> deleteAllByTipoDeMedida(List<String> tipoDeMedidaValues) {
    final values = tipoDeMedidaValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'tipoDeMedida', values);
  }

  int deleteAllByTipoDeMedidaSync(List<String> tipoDeMedidaValues) {
    final values = tipoDeMedidaValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'tipoDeMedida', values);
  }

  Future<Id> putByTipoDeMedida(Medida object) {
    return putByIndex(r'tipoDeMedida', object);
  }

  Id putByTipoDeMedidaSync(Medida object, {bool saveLinks = true}) {
    return putByIndexSync(r'tipoDeMedida', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTipoDeMedida(List<Medida> objects) {
    return putAllByIndex(r'tipoDeMedida', objects);
  }

  List<Id> putAllByTipoDeMedidaSync(List<Medida> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'tipoDeMedida', objects, saveLinks: saveLinks);
  }
}

extension MedidaQueryWhereSort on QueryBuilder<Medida, Medida, QWhere> {
  QueryBuilder<Medida, Medida, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedidaQueryWhere on QueryBuilder<Medida, Medida, QWhereClause> {
  QueryBuilder<Medida, Medida, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Medida, Medida, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Medida, Medida, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Medida, Medida, QAfterWhereClause> idBetween(
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

  QueryBuilder<Medida, Medida, QAfterWhereClause> tipoDeMedidaEqualTo(
      String tipoDeMedida) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tipoDeMedida',
        value: [tipoDeMedida],
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterWhereClause> tipoDeMedidaNotEqualTo(
      String tipoDeMedida) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tipoDeMedida',
              lower: [],
              upper: [tipoDeMedida],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tipoDeMedida',
              lower: [tipoDeMedida],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tipoDeMedida',
              lower: [tipoDeMedida],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tipoDeMedida',
              lower: [],
              upper: [tipoDeMedida],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MedidaQueryFilter on QueryBuilder<Medida, Medida, QFilterCondition> {
  QueryBuilder<Medida, Medida, QAfterFilterCondition> dataDaMedidaEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataDaMedida',
        value: value,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> dataDaMedidaGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataDaMedida',
        value: value,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> dataDaMedidaLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataDaMedida',
        value: value,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> dataDaMedidaBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataDaMedida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Medida, Medida, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Medida, Medida, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoDeMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tipoDeMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tipoDeMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tipoDeMedida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tipoDeMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tipoDeMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tipoDeMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tipoDeMedida',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tipoDeMedida',
        value: '',
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> tipoDeMedidaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tipoDeMedida',
        value: '',
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unidadeDaMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition>
      unidadeDaMedidaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unidadeDaMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unidadeDaMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unidadeDaMedida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unidadeDaMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unidadeDaMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unidadeDaMedida',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unidadeDaMedida',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> unidadeDaMedidaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unidadeDaMedida',
        value: '',
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition>
      unidadeDaMedidaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unidadeDaMedida',
        value: '',
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> valorDaMedidaEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valorDaMedida',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> valorDaMedidaGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valorDaMedida',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> valorDaMedidaLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valorDaMedida',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> valorDaMedidaBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valorDaMedida',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension MedidaQueryObject on QueryBuilder<Medida, Medida, QFilterCondition> {}

extension MedidaQueryLinks on QueryBuilder<Medida, Medida, QFilterCondition> {
  QueryBuilder<Medida, Medida, QAfterFilterCondition> mesDaMedida(
      FilterQuery<MedidasDoMes> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'mesDaMedida');
    });
  }

  QueryBuilder<Medida, Medida, QAfterFilterCondition> mesDaMedidaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'mesDaMedida', 0, true, 0, true);
    });
  }
}

extension MedidaQuerySortBy on QueryBuilder<Medida, Medida, QSortBy> {
  QueryBuilder<Medida, Medida, QAfterSortBy> sortByDataDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDaMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByDataDaMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDaMedida', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByTipoDeMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDeMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByTipoDeMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDeMedida', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByUnidadeDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadeDaMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByUnidadeDaMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadeDaMedida', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByValorDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorDaMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> sortByValorDaMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorDaMedida', Sort.desc);
    });
  }
}

extension MedidaQuerySortThenBy on QueryBuilder<Medida, Medida, QSortThenBy> {
  QueryBuilder<Medida, Medida, QAfterSortBy> thenByDataDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDaMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByDataDaMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataDaMedida', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByTipoDeMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDeMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByTipoDeMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tipoDeMedida', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByUnidadeDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadeDaMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByUnidadeDaMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unidadeDaMedida', Sort.desc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByValorDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorDaMedida', Sort.asc);
    });
  }

  QueryBuilder<Medida, Medida, QAfterSortBy> thenByValorDaMedidaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valorDaMedida', Sort.desc);
    });
  }
}

extension MedidaQueryWhereDistinct on QueryBuilder<Medida, Medida, QDistinct> {
  QueryBuilder<Medida, Medida, QDistinct> distinctByDataDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataDaMedida');
    });
  }

  QueryBuilder<Medida, Medida, QDistinct> distinctByTipoDeMedida(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tipoDeMedida', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Medida, Medida, QDistinct> distinctByUnidadeDaMedida(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unidadeDaMedida',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Medida, Medida, QDistinct> distinctByValorDaMedida() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valorDaMedida');
    });
  }
}

extension MedidaQueryProperty on QueryBuilder<Medida, Medida, QQueryProperty> {
  QueryBuilder<Medida, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Medida, DateTime, QQueryOperations> dataDaMedidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataDaMedida');
    });
  }

  QueryBuilder<Medida, String, QQueryOperations> tipoDeMedidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tipoDeMedida');
    });
  }

  QueryBuilder<Medida, String, QQueryOperations> unidadeDaMedidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unidadeDaMedida');
    });
  }

  QueryBuilder<Medida, double, QQueryOperations> valorDaMedidaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valorDaMedida');
    });
  }
}

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
    r'dataDasMedidas': PropertySchema(
      id: 0,
      name: r'dataDasMedidas',
      type: IsarType.string,
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
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
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
  bytesCount += 3 + object.dataDasMedidas.length * 3;
  return bytesCount;
}

void _medidasDoMesSerialize(
  MedidasDoMes object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.dataDasMedidas);
}

MedidasDoMes _medidasDoMesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedidasDoMes();
  object.dataDasMedidas = reader.readString(offsets[0]);
  object.id = id;
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
      return (reader.readString(offset)) as P;
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
      dataDasMedidasEqualTo(String dataDasMedidas) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'dataDasMedidas',
        value: [dataDasMedidas],
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterWhereClause>
      dataDasMedidasNotEqualTo(String dataDasMedidas) {
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
}

extension MedidasDoMesQueryFilter
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataDasMedidas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataDasMedidas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataDasMedidas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataDasMedidas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dataDasMedidas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dataDasMedidas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dataDasMedidas',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dataDasMedidas',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataDasMedidas',
        value: '',
      ));
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      dataDasMedidasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dataDasMedidas',
        value: '',
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
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {}

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
  QueryBuilder<MedidasDoMes, MedidasDoMes, QDistinct> distinctByDataDasMedidas(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataDasMedidas',
          caseSensitive: caseSensitive);
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

  QueryBuilder<MedidasDoMes, String, QQueryOperations>
      dataDasMedidasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataDasMedidas');
    });
  }
}

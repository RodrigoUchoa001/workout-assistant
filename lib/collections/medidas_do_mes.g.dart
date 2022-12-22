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
      type: IsarType.dateTime,
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
  links: {
    r'medidas': LinkSchema(
      id: -2621654811910363135,
      name: r'medidas',
      target: r'Medida',
      single: false,
    )
  },
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
  return bytesCount;
}

void _medidasDoMesSerialize(
  MedidasDoMes object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dataDasMedidas);
}

MedidasDoMes _medidasDoMesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedidasDoMes();
  object.dataDasMedidas = reader.readDateTime(offsets[0]);
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
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medidasDoMesGetId(MedidasDoMes object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _medidasDoMesGetLinks(MedidasDoMes object) {
  return [object.medidas];
}

void _medidasDoMesAttach(
    IsarCollection<dynamic> col, Id id, MedidasDoMes object) {
  object.id = id;
  object.medidas.attach(col, col.isar.collection<Medida>(), r'medidas', id);
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
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {}

extension MedidasDoMesQueryLinks
    on QueryBuilder<MedidasDoMes, MedidasDoMes, QFilterCondition> {
  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition> medidas(
      FilterQuery<Medida> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'medidas');
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      medidasLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'medidas', length, true, length, true);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      medidasIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'medidas', 0, true, 0, true);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      medidasIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'medidas', 0, false, 999999, true);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      medidasLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'medidas', 0, true, length, include);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      medidasLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'medidas', length, include, 999999, true);
    });
  }

  QueryBuilder<MedidasDoMes, MedidasDoMes, QAfterFilterCondition>
      medidasLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'medidas', lower, includeLower, upper, includeUpper);
    });
  }
}

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

  QueryBuilder<MedidasDoMes, DateTime, QQueryOperations>
      dataDasMedidasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataDasMedidas');
    });
  }
}

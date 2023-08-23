// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compare_products_db.dart';

// ignore_for_file: type=lint
class $ProductsTableTable extends ProductsTable
    with TableInfo<$ProductsTableTable, ProductsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [productId, name, image, price, brand, category];
  @override
  String get aliasedName => _alias ?? 'products_table';
  @override
  String get actualTableName => 'products_table';
  @override
  VerificationContext validateIntegrity(Insertable<ProductsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ProductsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductsTableData(
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price']),
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand']),
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
    );
  }

  @override
  $ProductsTableTable createAlias(String alias) {
    return $ProductsTableTable(attachedDatabase, alias);
  }
}

class ProductsTableData extends DataClass
    implements Insertable<ProductsTableData> {
  final int? productId;
  final String? name;
  final String? image;
  final String? price;
  final String? brand;
  final String? category;
  const ProductsTableData(
      {this.productId,
      this.name,
      this.image,
      this.price,
      this.brand,
      this.category});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<String>(price);
    }
    if (!nullToAbsent || brand != null) {
      map['brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    return map;
  }

  ProductsTableCompanion toCompanion(bool nullToAbsent) {
    return ProductsTableCompanion(
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory ProductsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductsTableData(
      productId: serializer.fromJson<int?>(json['productId']),
      name: serializer.fromJson<String?>(json['name']),
      image: serializer.fromJson<String?>(json['image']),
      price: serializer.fromJson<String?>(json['price']),
      brand: serializer.fromJson<String?>(json['brand']),
      category: serializer.fromJson<String?>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<int?>(productId),
      'name': serializer.toJson<String?>(name),
      'image': serializer.toJson<String?>(image),
      'price': serializer.toJson<String?>(price),
      'brand': serializer.toJson<String?>(brand),
      'category': serializer.toJson<String?>(category),
    };
  }

  ProductsTableData copyWith(
          {Value<int?> productId = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<String?> price = const Value.absent(),
          Value<String?> brand = const Value.absent(),
          Value<String?> category = const Value.absent()}) =>
      ProductsTableData(
        productId: productId.present ? productId.value : this.productId,
        name: name.present ? name.value : this.name,
        image: image.present ? image.value : this.image,
        price: price.present ? price.value : this.price,
        brand: brand.present ? brand.value : this.brand,
        category: category.present ? category.value : this.category,
      );
  @override
  String toString() {
    return (StringBuffer('ProductsTableData(')
          ..write('productId: $productId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('brand: $brand, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(productId, name, image, price, brand, category);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsTableData &&
          other.productId == this.productId &&
          other.name == this.name &&
          other.image == this.image &&
          other.price == this.price &&
          other.brand == this.brand &&
          other.category == this.category);
}

class ProductsTableCompanion extends UpdateCompanion<ProductsTableData> {
  final Value<int?> productId;
  final Value<String?> name;
  final Value<String?> image;
  final Value<String?> price;
  final Value<String?> brand;
  final Value<String?> category;
  final Value<int> rowid;
  const ProductsTableCompanion({
    this.productId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
    this.brand = const Value.absent(),
    this.category = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsTableCompanion.insert({
    this.productId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
    this.brand = const Value.absent(),
    this.category = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  static Insertable<ProductsTableData> custom({
    Expression<int>? productId,
    Expression<String>? name,
    Expression<String>? image,
    Expression<String>? price,
    Expression<String>? brand,
    Expression<String>? category,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (price != null) 'price': price,
      if (brand != null) 'brand': brand,
      if (category != null) 'category': category,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsTableCompanion copyWith(
      {Value<int?>? productId,
      Value<String?>? name,
      Value<String?>? image,
      Value<String?>? price,
      Value<String?>? brand,
      Value<String?>? category,
      Value<int>? rowid}) {
    return ProductsTableCompanion(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      brand: brand ?? this.brand,
      category: category ?? this.category,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsTableCompanion(')
          ..write('productId: $productId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('price: $price, ')
          ..write('brand: $brand, ')
          ..write('category: $category, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ComparedProductsDb extends GeneratedDatabase {
  _$ComparedProductsDb(QueryExecutor e) : super(e);
  late final $ProductsTableTable productsTable = $ProductsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [productsTable];
}

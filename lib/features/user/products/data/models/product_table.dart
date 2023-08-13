import 'package:drift/drift.dart';

class ProductsTable extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get price => text().nullable()();
  TextColumn get brand => text().nullable()();
  TextColumn get category => text().nullable()();
}
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'bovino_dao.dart';
import 'package:bovino_vax/models/bovino.dart';

@Database(version: 1, entities: [Bovino])
abstract class AppDatabase extends FloorDatabase {
  BovinoDao get bovinoDao;

}

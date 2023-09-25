import 'package:floor/floor.dart';
import 'package:bovino_vax/models/bovino.dart';

@dao
abstract class BovinoDao {
  @Query('SELECT * FROM animal ORDER BY animal.id')
  Future<List<Bovino>> findAllBovinos();

  @Query('SELECT * FROM animal WHERE id = :id')
  Future<Bovino?> findBovinoId(int id);

  @insert
  Future<void>insertBovino(Bovino bovino);

  @delete
  Future<void>deleteBovino(Bovino bovino);

  @update
  Future<void>updateBovino(Bovino bovino);
}

import 'package:floor/floor.dart';

@entity
class Bovino {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String? name; 
 
  Bovino({    
    this.id,
    this.name,    
  });
}

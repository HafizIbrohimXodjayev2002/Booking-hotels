import 'dart:io';
import 'package:flutter/services.dart';
import 'package:imtihon2/malumotlar/picture.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:synchronized/synchronized.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static Database? _database;

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper.internal();
      return _databaseHelper!;
    } else {
      return _databaseHelper!;
    }
  }
  DatabaseHelper.internal();

  Future<Database> _getDatabase() async {
    if (_database == null) {
      _database = await initialDatabase();
      return _database!;
    } else {
      return _database!;
    }
  }

  initialDatabase() async {
    var lock = Lock();
    Database? _db;
    if (_db == null) {
      await lock.synchronized(() async {
        if (_db == null) {
          var databasePath = await getDatabasesPath();
          String path = join(databasePath, "malumotlar.db");
          print("Database path -----------------" + path.toString());
          var file = File(path);

          if (!await file.exists()) {
            ByteData data =
                await rootBundle.load(join("assets", "malumotlar.db"));
            List<int> bytes =
                data.buffer.asInt8List(data.offsetInBytes, data.lengthInBytes);
            await File(path).writeAsBytes(bytes);
          }
          _db = await openDatabase(path);
        }
      });
    }
    return _db;
  }
  void savePicture(Picture picture) async {
     var dbClient = await _getDatabase();
     await dbClient.insert("malumotlar", picture.toMap());
} 
Future<List<Picture>> getPictures() async {
    var dbClient = await _getDatabase();
    List<Map> list = await dbClient.rawQuery('SELECT * FROM malumotlar');
    List<Picture> pictures = [];
    for (int i = 0; i < list.length; i++) {
      pictures.add(new Picture(list[i]["picture"]));
    }
    return pictures;
  }

}


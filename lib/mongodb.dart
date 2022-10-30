
import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:mongodbexample/server.dart';

class MongoDatabase {

    static var db,collection;

    static connect() async {
      db = await Db.create(MONGO_URL);
      await db.open();
      inspect(db);
      collection = db.collection(COLLECTION_NAME);
    }

    static Future getData() async {
      final arrData = await collection.find().toList();
      return arrData;
    }
}


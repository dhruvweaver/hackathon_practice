import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/services.dart';

class DatabaseCounter {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  //Send Data to Firebase
  Future<void> sendData(data) async {
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref('uploads/hello-world.text');
    //try {
    // Upload raw data.
    await ref.putData(data);
    // Get raw data.
    //Uint8List downloadedData = await ref.getData();
    //// prints -> Hello World!
    //print(utf8.decode(downloadedData));
    // } on FirebaseException catch (e) {
    //   // e.g, e.code == 'canceled'
    //}
  } //
}

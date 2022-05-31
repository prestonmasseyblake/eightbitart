import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_auth/firebase_auth.dart';

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  checkStorage() {
    print(storage.ref('test').listAll());
    
  }

  Future<void> uploadFile(
    String filePath,
    String fileName,
  ) async {
    File file = File(filePath);
    try {
      await storage.ref('test/$fileName').putFile(file);
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<firebase_storage.ListResult> listFiles() async {
    print("trying to print results");
    firebase_storage.ListResult results = await storage.ref('test').listAll();
    print(results);
    results.items.forEach((firebase_storage.Reference ref) {
      print("Found file");
    });
    return results;
  }

  Future<String> downloadedURL(String imageName) async {
    String downloadURL = await storage.ref('test/$imageName').getDownloadURL();
    return downloadURL;
  }

  Future<String> getUser() async {
    String User = "randy";
    User = FirebaseAuth.instance.currentUser!.email!;
    return User;
  }
}

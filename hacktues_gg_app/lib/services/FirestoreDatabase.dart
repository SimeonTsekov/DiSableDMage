import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirestoreDatabase {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
}

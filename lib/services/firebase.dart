import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference data =
      FirebaseFirestore.instance.collection("data");

  //Create
  //Future<void> addData() {
  //  return data
  //      .add({'note': "Notes that i wrote", 'timestamp': Timestamp.now()});
  // }

  //Read
  Stream<QuerySnapshot> getDataStream() {
    final dataStream = data.snapshots();
    return dataStream;
  }

  //Update
  Future<void> updateData(String docID, String newNote) {
    return data
        .doc(docID)
        .update({'note': newNote, 'timestamp': Timestamp.now()});
  }
  //Delete
}

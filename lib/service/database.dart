import 'package:changeApp/models/ray.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //collection refrence

  final CollectionReference rayCollection =
      Firestore.instance.collection('welcomepage');

  Future updateUserData(String heading, String imageurl, String text) async {
    return rayCollection.document("credentials").setData({
      'heading': heading,
      'imageurl': imageurl,
      'text': text,
    });
  }

  List<Ray> _brewListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Ray(
        heading: doc.data['heading'] ?? '',
        imageurl: doc.data['imageurl'] ?? '',
        text: doc.data['text'] ?? '',
      );
    }).toList();
  }

  Stream<QuerySnapshot> get ray {
    return rayCollection.snapshots();
  }

//Stream<DocumentSnapshot> get userData {
  //return
//}
}

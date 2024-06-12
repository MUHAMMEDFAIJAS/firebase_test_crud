import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projectfinal/model.dart';

class ProjectService {
  String collectionref = 'projects';

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late final CollectionReference<Projectmodel> projectref =
      firestore.collection(collectionref).withConverter(
            fromFirestore: (snapshot, options) =>
                Projectmodel.fromJson(snapshot.data() ?? {}),
            toFirestore: (value, options) => value.toJson(),
          );

  Future<void> adddata(Projectmodel model) async {
    await projectref.add(model);
  }

  Stream<QuerySnapshot<Projectmodel>> getdata() {
    return projectref.snapshots();
  }

  Future<void> deletedata(String id) async {
    await projectref.doc(id).delete();
  }

  Future<void> updatedata(String id, Projectmodel model) async {
    await projectref.doc(id).update(model.toJson());
  }
}

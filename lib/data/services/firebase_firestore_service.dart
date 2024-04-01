import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:krypt/util/exception.dart';
import 'package:krypt/util/logging/app_logger.dart';

@singleton
class FirebaseFirestoreService {
  final FirebaseFirestore _instance;

  const FirebaseFirestoreService(this._instance);

  MapCollectionReference collection(String path) => _instance.collection(path);

  MapDocumentReference doc(String path) => _instance.doc(path);

  Future<String?> save(String collection, Map<String, dynamic> data) async {
    try {
      final result = await _instance.collection(collection).add(data);
      AppLogger.debug("document id is ${result.id}");
      return result.id;
    } on AppFirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw KryptAppException('Firestore Permission Denied: $e');
      } else if (e.code == 'not-found') {
        throw KryptAppException('Firestore Document Not Found: $e');
      } else {
        throw KryptAppException('Firestore Exception: $e');
      }
    } catch (exception, stackTrace) {
      AppLogger.error(exception, stackTrace);
      return null;
    }
  }

  Future<void> set(String collection, Map<String, dynamic> data, String path, [bool mergeData = false]) async {
    try {
      await _instance.collection(collection).doc(path).set(data, SetOptions(merge: mergeData));
    } on AppFirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw KryptAppException('Firestore Permission Denied: $e');
      } else if (e.code == 'not-found') {
        throw KryptAppException('Firestore Document Not Found: $e');
      } else {
        throw KryptAppException('Firestore Exception: $e');
      }
    } catch (exception, stackTrace) {
      AppLogger.error(exception, stackTrace);
    }
  }

  MapCollectionReference fetchAll(String path) => collection(path);

  MapDocumentReference fetchOne(String path, String uuid) => doc('$path/$uuid');

  Future<void> update(String collection, String path, Map<String, dynamic> data) async {
    try {
      await _instance.collection(collection).doc(path).update(data);
    } on AppFirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw KryptAppException('Firestore Permission Denied: $e');
      } else if (e.code == 'not-found') {
        throw KryptAppException('Firestore Document Not Found: $e');
      } else {
        throw KryptAppException('Firestore Exception: $e');
      }
    } catch (exception, stackTrace) {
      AppLogger.error(exception, stackTrace);
    }
  }

  Future<bool> checkIfValueIsNotTaken({
    required String collection,
    required String value,
    required String field,
  }) async {
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await _instance.collection(collection).where(field, isEqualTo: value).limit(1).get();

    return querySnapshot.docs.isEmpty;
  }
}

typedef DynamicMap = Map<String, dynamic>;
typedef MapQuerySnapshot = QuerySnapshot<DynamicMap>;
typedef MapQueryDocumentSnapshot = QueryDocumentSnapshot<DynamicMap>;
typedef MapDocumentSnapshot = DocumentSnapshot<DynamicMap>;
typedef MapDocumentReference = DocumentReference<DynamicMap>;
typedef MapCollectionReference = CollectionReference<DynamicMap>;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solana/solana.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  FirebaseFirestore get fireStore => FirebaseFirestore.instance;

  SolanaClient get solanaClient {
    return SolanaClient(
      rpcUrl: Uri.parse('https://api.testnet.solana.com'),
      websocketUrl: Uri.parse('wss://api.testnet.solana.com'),
    );
  }
}

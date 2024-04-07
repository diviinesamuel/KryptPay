import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:krypt/util/logging/app_logger.dart';
import 'package:solana/solana.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';

@Singleton()
class SolanaService {

  final SolanaClient _solanaClient;

  SolanaService(this._solanaClient);

  Future<Ed25519HDPublicKey> createSolanaAccount() async {
    // Generate a new keypair
    final keyPair = await Ed25519HDKeyPair.random();

    // Get the public key
    final publicKey = keyPair.publicKey;

    // Print the public key (for demonstration purposes)
    AppLogger.debug('Public Key: $publicKey');

    return publicKey;
  }

  Future<void> signAndSendTransactions(int number) async {
    // final session = await LocalAssociationScenario.create();
    //
    // session.startActivityForResult(null).ignore();
    //
    // final client = await session.start();
    // if (await _doReauthorize(client)) {
    //   final signer = state.publicKey as Ed25519HDPublicKey;
    //
    //   final blockhash = await _solanaClient.rpcClient
    //       .getLatestBlockhash()
    //       .then((it) => it.value.blockhash);
    //   final txs = _generateTransactions(
    //     number: number,
    //     signer: signer,
    //     blockhash: blockhash,
    //   ).map((e) => e.toByteArray().toList()).map(Uint8List.fromList).toList();
    //
    //   await client.signAndSendTransactions(transactions: txs);
    // }
    // await session.close();
  }
}
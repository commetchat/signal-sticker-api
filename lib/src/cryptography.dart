import 'dart:convert';
import 'dart:typed_data';
import 'package:cryptography/cryptography.dart';

class _KeyData {
  late List<int> aesKey;
  late List<int> hmacKey;

  _KeyData(List<int> derivedKey) {
    aesKey = derivedKey.sublist(0, 32);
    hmacKey = derivedKey.sublist(32, 64);
  }
}

class SignalCryptography {
  static Future<_KeyData> _deriveKeys(String key) async {
    const info = "Sticker Pack";

    var masterKey = _convertHexDecimal(key);

    var salt = Uint8List(32);

    final algorithm = Hkdf(
      hmac: Hmac.sha256(),
      outputLength: 512,
    );
    var secret = SecretKeyData(masterKey);
    var data = await algorithm.deriveKey(
        secretKey: secret, info: utf8.encode(info), nonce: salt);

    return _KeyData(data.bytes);
  }

  static Future<List<int>?> decrypt(String key, Uint8List data) async {
    var keys = await _deriveKeys(key);
    var theirIv = data.sublist(0, 16);
    var ciperTextBody = data.sublist(16, data.length - 32);
    var theirMac = base64Encode(data.sublist(data.length - 32));
    var combinedCipherText = data.sublist(0, data.length - 32);

    var mac = await Hmac.sha256().calculateMac(combinedCipherText,
        secretKey: SecretKeyData(keys.hmacKey));

    if (theirMac != base64Encode(mac.bytes)) {
      return null;
    }

    var decryptor = AesCbc.with256bits(macAlgorithm: MacAlgorithm.empty);
    var decrypted = await decryptor.decrypt(
        SecretBox(ciperTextBody, nonce: theirIv, mac: Mac.empty),
        secretKey: SecretKey(keys.aesKey));
    return decrypted;
  }

  static List<int> _convertHexDecimal(String text) {
    var list = List<int>.empty(growable: true);
    for (int i = 0; i < text.length; i += 2) {
      var sub = text.substring(i, i + 2);
      list.add(
        int.parse(sub, radix: 16),
      );
    }
    return list;
  }
}

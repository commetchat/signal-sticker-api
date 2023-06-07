import 'package:http/http.dart' as http;
import 'package:signal_sticker_api/src/cryptography.dart';
import 'package:signal_sticker_api/src/signal_sticker_pack.dart';

class SignalStickerClient {
  final String host;

  const SignalStickerClient({this.host = "cdn-ca.signal.org"});

  Future<SignalStickerPack?> getPack(String packId, String key) async {
    var url = Uri.https(host, "/stickers/$packId/manifest.proto");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = await SignalCryptography.decrypt(key, response.bodyBytes);
      if (data == null) return null;

      return SignalStickerPack(
          id: packId, decryptedData: data, key: key, host: host);
    }
    return null;
  }
}

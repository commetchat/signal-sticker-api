import 'package:http/http.dart' as http;
import 'package:signal_sticker_api/src/cryptography.dart';
import 'package:signal_sticker_api/src/signal_sticker_pack.dart';

class PackInfo {
  String packId;
  String key;

  PackInfo({required this.packId, required this.key});
}

class SignalStickerClient {
  final String host;
  final String rootPath;
  final bool useHttps;

  const SignalStickerClient(
      {this.host = "cdn-ca.signal.org",
      this.rootPath = "",
      this.useHttps = true});

  Future<SignalStickerPack?> getPack(PackInfo info) async {
    var path = "$rootPath/stickers/${info.packId}/manifest.proto";
    var url = useHttps ? Uri.https(host, path) : Uri.http(host, path);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = await SignalCryptography.decrypt(info.key, response.bodyBytes);
      if (data == null) return null;

      return SignalStickerPack(
          id: info.packId, decryptedData: data, key: info.key, client: this);
    }
    return null;
  }

  PackInfo? getPackFromUri(Uri uri) {
    String? queryString;

    if (uri.host == "signal.art" && uri.path == "/addstickers/") {
      queryString = uri.fragment;
    }

    if (uri.scheme == "sgnl" && uri.authority == "addstickers") {
      queryString = uri.query;
    }

    if (queryString == null) {
      return null;
    }

    var query = Uri.splitQueryString(queryString);
    var key = query["pack_key"];
    var id = query["pack_id"];

    if (key == null || id == null) {
      return null;
    }

    return PackInfo(packId: id, key: key);
  }
}

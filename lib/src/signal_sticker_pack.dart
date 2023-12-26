import 'package:http/http.dart' as http;
import 'package:signal_sticker_api/src/cryptography.dart';
import 'package:signal_sticker_api/src/generated/StickerResources.pb.dart';
import 'package:signal_sticker_api/src/signal_sticker_client.dart';

class SignalStickerPack {
  final String key;
  final String id;
  final SignalStickerClient client;
  late final String name;
  late final String author;
  late final int cover;
  final List<int> _decryptedData;
  late List<SignalSticker> stickers;

  SignalStickerPack(
      {required this.id,
      required List<int> decryptedData,
      required this.key,
      required this.client})
      : _decryptedData = decryptedData {
    var pack = Pack.fromBuffer(_decryptedData);
    stickers = pack.stickers
        .map((e) => SignalSticker(id: e.id, emoji: e.emoji, pack: this))
        .toList();

    name = pack.title;
    author = pack.author;
    cover = pack.cover.id;
  }
}

class SignalSticker {
  final int id;
  final String emoji;
  List<int>? _data;
  SignalStickerPack pack;

  SignalSticker({required this.id, required this.emoji, required this.pack});

  Future<List<int>?> getData() async {
    if (_data != null) return _data;

    var path = "${pack.client.rootPath}/stickers/${pack.id}/full/$id";

    var uri = pack.client.useHttps
        ? Uri.https(pack.client.host, path)
        : Uri.http(pack.client.host, path);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var decrypted =
          await SignalCryptography.decrypt(pack.key, response.bodyBytes);
      if (decrypted != null) _data = decrypted;
    }

    return _data;
  }
}

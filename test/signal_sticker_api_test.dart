import 'dart:convert';

import 'package:cryptography/cryptography.dart';
import 'package:signal_sticker_api/signal_sticker_api.dart';
import 'package:test/test.dart';

void main() {
  final SignalStickerClient client = SignalStickerClient();

  test('Test fetch data', () async {
    var pack = await client.getPack("61e9f6a32d173d87d9ac6b0bb0d13eb4",
        "0bea44caecbb127975f24a214635e6f9bf2853edada647b8630c05c60a9e66ef");

    expect(pack, isNotNull);
    expect(pack!.stickers, isNotEmpty);

    var data = await pack.stickers[0].getData();
    expect(data, isNotNull);

    var hash = await Sha1().hash(data!);
    expect(base64Encode(hash.bytes), equals("1ud++Dc/vlJaRkwQ56Dn9cki3T0="));
  });
}

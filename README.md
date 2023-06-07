# signal-sticker-api
A wrapper around the Sticker api used by Signal.

based on [signalstickers/stickers-client](https://github.com/signalstickers/stickers-client/tree/master)

## Features

Fetch and decrypt Signal sticker packs

## Usage

```dart
final SignalStickerClient client = SignalStickerClient();

var pack = await client.getPack("$PACK_ID", "$PACK_KEY");
var data = await pack!.stickers[0].getData();
```
import 'package:flutter/cupertino.dart';

class ChatListTileData {
  String title, subtitle;
  AssetImage? image;
  bool? online;
  ChatListTileData(
      {this.title = ' ', this.subtitle = ' ', this.image, this.online});
}

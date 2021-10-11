import 'package:flutter/material.dart';
import 'package:interview_app/DataHandler/chat_list_tile_data.dart';

class AppData extends ChangeNotifier {
  ChatListTileData data = ChatListTileData();

  void updateChatListTileData(ChatListTileData tileData) {
    data = tileData;
    notifyListeners();
  }
}

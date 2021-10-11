import 'package:flutter/material.dart';
import 'package:interview_app/DataHandler/chat_list_tile_data.dart';
import 'package:interview_app/Widgets/divider_widget.dart';
import 'package:interview_app/Widgets/list_tile_widget.dart';
import 'package:interview_app/constants.dart';

class ChatsTab extends StatefulWidget {
  @override
  State<ChatsTab> createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  List<ChatListTileData> data = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chat',
                style: kBigTextStyle,
              ),
              SizedBox(height: 6),
              TextField(
                showCursor: false,
                style: TextStyle(color: Color(0xff2b2b2b), fontSize: 18),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xfff0f0f0),
                  prefixIcon: Image.asset('images/search_icon.png'),
                  suffixIcon: Image.asset('images/filter_icon.png'),
                  hintText: 'Search...',
                  hintStyle: TextStyle(fontSize: 22, color: Color(0xffaeaeb2)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ListTileWidget(
                      image: data[index].image,
                      title: data[index].title,
                      subtitle: data[index].subtitle,
                      online: data[index].online,
                    );
                  },
                  separatorBuilder: (context, index) => LongDividerWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Method will be accepting map as input parameters
  void updateList() {
    ChatListTileData tileData = ChatListTileData();
    tileData.online = true;
    tileData.title = 'Will Knowles';
    tileData.subtitle = 'Hey! How\'s your dog';
    tileData.image = AssetImage('images/avatar_icon.png');

    // Provider.of<AppData>(context, listen: false)
    //     .updateChatListTileData(tileData);
    ChatListTileData tile = ChatListTileData();
    tile.online = false;
    tile.title = 'Ryan Bond';
    tile.subtitle = 'Let\'s go out to do something now I want to see you';
    tile.image = AssetImage('images/avatar_icon.png');
    data.add(tileData);
    data.add(tile);
  }

  @override
  void initState() {
    super.initState();
    updateList();
  }
}

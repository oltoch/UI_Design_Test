import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {Key? key, this.image, this.title, this.subtitle, this.online})
      : super(key: key);

  final AssetImage? image;
  final String? title, subtitle;
  final bool? online;
  bool _isOnline() {
    return online == null || online == false ? false : true;
  }

  bool _hasAvatar() {
    return image == null ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 1),
      child: ListTile(
        leading: Container(
          child: CircleAvatar(
            backgroundImage: _hasAvatar() ? image : AssetImage(''),
            radius: 25,
          ),
        ),
        title: Text(
          title!,
          style: TextStyle(
              fontSize: 22,
              color: Color(0xff2b2b2b),
              fontWeight: FontWeight.bold),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Text(
            subtitle!,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18, color: Color(0xff2b2b2b)),
          ),
        ),
        trailing: _isOnline() ? Image.asset('images/online_icon.png') : null,
      ),
    );
  }
}

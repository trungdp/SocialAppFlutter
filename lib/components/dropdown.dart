import 'package:flutter/material.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class DropDownBtn extends StatelessWidget {
  final String text;

  DropDownBtn({Key key, this.text}) : super(key: key);

  List<Item> users = <Item>[
    const Item(
        'Android',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Flutter',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'ReactNative',
        Icon(
          Icons.format_indent_decrease,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'iOS',
        Icon(
          Icons.mobile_screen_share,
          color: const Color(0xFF167F67),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: DropdownButton<Item>(
        hint: Text(this.text),
        // value: selectedUser,
        onChanged: (value) {},
        isExpanded: true,
        items: users.map((Item user) {
          return DropdownMenuItem<Item>(
            value: user,
            child: Row(
              children: <Widget>[
                user.icon,
                SizedBox(
                  width: 10,
                ),
                Text(
                  user.name,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

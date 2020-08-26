import 'package:facebook_app/config/palette.dart';
import 'package:facebook_app/models/models.dart';
import 'package:facebook_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final Function(int) onTap;
  final int selectedIndex;
  final List<IconData> icons;

  const CustomAppBar(
      {Key key,
      @required this.currentUser,
      @required this.onTap,
      @required this.selectedIndex,
      @required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(color: Colors.white, boxShadow: const [
        BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4.0),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
          ),
          Container(
            height: double.infinity,
            width: 600.0,
            child: CustomTabBar(isBottomIndicator: true,
                icons: icons, selectedIndex: selectedIndex, onTap: onTap),
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCard(user: currentUser),
              CircleButton(
                iconData: Icons.search,
                onPressed: () {
                  print('Icon Button pressed!');
                },
                iconSize: 30.0,
              ),
              CircleButton(
                iconData: MdiIcons.facebookMessenger,
                onPressed: () {
                  print('Messenger');
                },
                iconSize: 30.0,
              ),
            ],
          ))
        ],
      ),
    );
  }
}

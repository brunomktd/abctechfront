import 'package:flutter/material.dart';

class AbcTechBar extends StatelessWidget implements PreferredSizeWidget {
  final bool hideMenu;
  const AbcTechBar({this.hideMenu = false, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.only(left: 8),
        child: Text(
          'ABC TECH',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      actions: !hideMenu
          ? [
              PopupMenuButton(
                onSelected: (route) => Navigator.of(context).pushNamed('/$route'),
                icon: const Icon(
                  Icons.menu,
                  size: 35,
                ),
                padding: const EdgeInsets.only(right: 30),
                itemBuilder: (BuildContext context) {
                  return {'Sobre'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

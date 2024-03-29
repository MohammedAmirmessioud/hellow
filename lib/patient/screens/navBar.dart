import 'package:flutter/material.dart';
import 'package:real_version/patient/screens/profil_screen.dart';
import 'package:real_version/patient/screens/settings_page.dart';
import 'package:real_version/patient/screens/vaccin_screen.dart';
import 'package:real_version/patient/screens/visit_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  /* bool _color = false;
  @override
  void initState() {
    super.initState();
    _color = true;
  }*/
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
      child: Drawer(
          elevation: 7,
          backgroundColor: Colors.white,
          child: Material(
            color: Colors.white,
            child: ListView(
              children: [
                SizedBox(height: 100),
                Padding(
                  padding: padding,
                  child: buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person_outline_rounded,
                    onClicked: () => selectedItem(context, 0),
                  ),
                ),
                Container(
                  width: 224,
                  height: 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: const Color(0x33c4c4c4),
                  ),
                ),
                Padding(
                  padding: padding,
                  child: buildMenuItem(
                    text: 'Visites Medicaux ',
                    icon: Icons.assignment_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                ),
                Container(
                  width: 224,
                  height: 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: const Color(0x33c4c4c4),
                  ),
                ),
                Padding(
                  padding: padding,
                  child: buildMenuItem(
                    text: 'Vaccins',
                    icon: Icons.vaccines_outlined,
                    onClicked: () => selectedItem(context, 2),
                  ),
                ),
                Container(
                  width: 224,
                  height: 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: const Color(0x33c4c4c4),
                  ),
                ),
                Padding(
                  padding: padding,
                  child: buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings_outlined,
                    onClicked: () => selectedItem(context, 3),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Color(0xff406083);
    final hoverColor = Color(0xff0dbed8);

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => VisitScreen()));
        break;
      case 2:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const VaccinScreen()));
        break;
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProfilPage()));
        break;
      case 3:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const SettingsScreen()));
        break;
    }
  }
}

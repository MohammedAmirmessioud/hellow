import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:real_version/patient/screens/notifications_screen.dart';
import 'navBar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:clipboard/clipboard.dart';
import 'package:real_version/patient/models/profile.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProfilPage extends StatefulWidget {
  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  var id = '98746578562365';
  var bDay = '24 / 05 / 2001';
  var region = "Amizour, Bejaia";
  var adresse = "bloc i chambre 214";
  var telephone = "0662541966";
  var nss = "1563486513254165";
  final sexe = M;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.04),
      drawer: NavBar(),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Color.fromARGB(156, 6, 37, 70)),
          centerTitle: true,
          title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Poppins',
              color: Color.fromARGB(156, 6, 37, 70),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue.withOpacity(0.00),
          elevation: 0.0,
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NotificationsPage()));
                  },
                  child: const Icon(
                    Icons.notifications,
                  ),
                ))
          ],
          actionsIconTheme:
              const IconThemeData(color: Color.fromARGB(156, 6, 37, 70))),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: SizedBox(
                height: 146,
                width: 146,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage("assets/avatar.png"),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'Dalia Benafia',
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 44, 98, 143),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0.3 * size.width),
                  child: const Text('ID :',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 44, 98, 143),
                      )),
                ),
                Text(id,
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 44, 98, 143),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: SizedBox(
                    height: 20,
                    width: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () async {
                          final data = ClipboardData(text: id);
                          Clipboard.setData(data);
                        },
                        child: const Text('copy',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 44, 98, 143),
                            ))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 269,
                      height: 37,
                      child: Stack(
                        children: [
                          Container(
                            width: 269,
                            height: 37,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 269,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x33c4c4c4),
                                        blurRadius: 40,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 134,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        width: 124.78,
                                        height: 19.47,
                                        child: AutoSizeText(
                                          "Date de naissance:",
                                          style: TextStyle(
                                            color: Color(0xff406083),
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 145.24,
                            top: 7,
                            child: SizedBox(
                              width: 100,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  bDay,
                                  style: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 12.50,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 269,
                      height: 37,
                      child: Stack(
                        children: [
                          Container(
                            width: 269,
                            height: 37,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 269,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      const BoxShadow(
                                        color: const Color(0x33c4c4c4),
                                        blurRadius: 40,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 134,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        width: 124.78,
                                        height: 19.47,
                                        child: Text(
                                          "Region : ",
                                          style: TextStyle(
                                            color: Color(0xff406083),
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 70.24,
                            top: 8,
                            child: SizedBox(
                              width: 110,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  region,
                                  style: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 12.50,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 269,
                      height: 37,
                      child: Stack(
                        children: [
                          Container(
                            width: 269,
                            height: 37,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 269,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: const Color(0x33c4c4c4),
                                        blurRadius: 40,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 134,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        width: 124.78,
                                        height: 19.47,
                                        child: Text(
                                          "adresse: ",
                                          style: TextStyle(
                                            color: Color(0xff406083),
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 75.24,
                            top: 9,
                            child: SizedBox(
                              width: 125,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  adresse,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 12.50,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 269,
                      height: 37,
                      child: Stack(
                        children: [
                          Container(
                            width: 269,
                            height: 37,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 269,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: const Color(0x33c4c4c4),
                                        blurRadius: 40,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 134,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        width: 124.78,
                                        height: 19.47,
                                        child: AutoSizeText(
                                          "Telephone :",
                                          style: TextStyle(
                                            color: Color(0xff406083),
                                            fontSize: 13,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 90.24,
                            top: 15,
                            child: SizedBox(
                              width: 83.87,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  telephone,
                                  style: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 12.50,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: 269,
                      height: 37,
                      child: Stack(
                        children: [
                          Container(
                            width: 269,
                            height: 37,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 269,
                                  height: 37,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: const Color(0x33c4c4c4),
                                        blurRadius: 40,
                                        offset: Offset(0, 5),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 134,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        width: 124.78,
                                        height: 19.47,
                                        child: FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            "num de securité social :",
                                            style: TextStyle(
                                              color: Color(0xff406083),
                                              fontSize: 13,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 140,
                            top: 10,
                            child: SizedBox(
                              width: 100,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  nss,
                                  style: const TextStyle(
                                    color: Color(0xffc4c4c4),
                                    fontSize: 12.50,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 4,
                ),

                /*(sexe == F)
                                      ?  const FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text(
                                            'F',
                                            style: TextStyle(
                                              color: Color(0xffc4c4c4),
                                              fontSize: 20,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                      )
                                      : const FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child:  Text(
                                            'M',
                                            style: TextStyle(
                                              color: Color(0xffc4c4c4),
                                              fontSize: 20,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                      ),*/
              ],
            )
          ],
        ),
      ),
    );
  }
}

class M {}

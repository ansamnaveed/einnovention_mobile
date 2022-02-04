import 'package:einnovention_mobile/widgets/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: themeColor,
            ),
          ),
          leadingWidth: 20,
          title: Image.asset(
            'assets/logo/einnovention.png',
            width: MediaQuery.of(context).size.width * 0.3,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mail_outline_rounded,
                color: themeColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: themeColor,
              ),
            ),
            // IconButton(
            //   onPressed: () {
            PopupMenuButton(
              tooltip: 'Einnovention Mobile',
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.account_box_outlined,
                  color: themeColor,
                ),
              ),
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(
                    enabled: false,
                    height: 0,
                    padding: EdgeInsets.zero,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          // color: Color(0xfffff0eb),
                          ),
                      child: Column(
                        children: [
                          borderedButton(
                            'Check In',
                            () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return timer(context, 'message');
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ].toList();
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banner & Profile',
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Image.asset(
                    'assets/images/banner.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {},
                      ),
                      actions: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  // Row for profile picture and follow button
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // Aligns vertically
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0, top: 130.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_pic.png'),
                          radius: 60.0,
                        ),
                      ),
                      // Padding for follow button
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 40.0,
                            top: 160.0), // Adjust top padding if needed
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(18.0),
                            child: InkWell(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.0, vertical: 7.0),
                                child: Text(
                                  'Follow',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Add your text widgets here
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 20.0),
                    child: Text(
                      'UPN Veteran Jawa Timur',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 5.0),
                    child: Text(
                      '@upnvjt_official',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 10.0),
                    child: Text(
                      'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 5.0),
                    child: Text(
                      'Translate bio',
                      style: TextStyle(fontSize: 12.0, color: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
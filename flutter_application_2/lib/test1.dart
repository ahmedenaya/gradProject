import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

int si = 0;
List pages = [home(), my_profile()];

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3e2f7f),
        ),
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 20,
            selectedItemColor: Color(0xff3e2f7f),
            selectedIconTheme: IconThemeData(size: 25),
            selectedFontSize: 15,
            currentIndex: si,
            onTap: (index) {
              setState(() {
                si = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  label: "Home", icon: Icon(Icons.home_filled)),
              BottomNavigationBarItem(
                  label: "My profile", icon: Icon(Icons.person_3))
            ]),
        body: pages.elementAt(si));
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    "assets/imgs/background1.jpg",
                  ))),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.white,
                margin: EdgeInsets.only(top: 0, right: 0, left: 0, bottom: 10),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 32,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                            Container(
                              // margin: EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Text("data"),
                                  VerticalDivider(
                                      color: Colors.grey, thickness: 10),
                                  Text("data"),
                                  VerticalDivider(
                                    color: Colors.grey,
                                  ),
                                  Text("data")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.settings)))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Card(
                              child: Container(
                                height: 70,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset("imgs/yhealth.PNG"),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text("day one"),
                                          Text("full body hustle"),
                                          Text("40 minutes")
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.play_arrow)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.check)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class my_profile extends StatefulWidget {
  const my_profile({super.key});

  @override
  State<my_profile> createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    "assets/imgs/background1.jpg",
                  ))),
        ),
      ],
    );
  }
}

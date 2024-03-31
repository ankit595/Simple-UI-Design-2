import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  final List<String> Profile = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
    "assets/7.png",
    "assets/8.png",
    "assets/9.png",
    "assets/10.png",
  ];
  final List<String> Names = [
    "Emma",
    "Liam",
    "Olivia",
    "Noah",
    "Ava",
    "Isabella",
    "Sophia",
    "Mia",
    "Charlotte",
    "Amelia"
  ];
  final List<String> Dashboard = [
    "Work",
    "Paint",
    "Meeting",
    "Deadline",
    "Communication",
    "Teamwork",
    "Presentation",
    "Project",
    "Document",
    "Strategy"
  ];
  final List<IconData> DashIcons = [
    Icons.work_outline_outlined,
    Icons.color_lens_outlined,
    Icons.people_alt_outlined,
    Icons.work_history_outlined,
    Icons.speaker_notes_outlined,
    Icons.handshake_outlined,
    Icons.screen_share_outlined,
    Icons.task_outlined,
    Icons.note_outlined,
    Icons.games_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Discover",
          style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  child: Text("1"),
                ),
                PopupMenuItem(
                  child: Text("2"),
                ),
                PopupMenuItem(
                  child: Text("3"),
                )
              ];
            },

          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange,
                width: 2),
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(10)),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .45,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            top: -30,
                            left: -20,
                            child: Image(
                              image: const AssetImage(
                                "assets/img.png",
                              ),
                              width: MediaQuery.of(context).size.width * .57,
                              height: MediaQuery.of(context).size.height * .4,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: const Text(
                      "Show me your design ••",
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Colleagues 🏬",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Expanded(
            flex:1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * .1,
                    width: MediaQuery.of(context).size.width * .3,
                    child: Card(
                      shadowColor: Colors.pink,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(Profile[index]),
                            width: MediaQuery.of(context).size.width * .16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Names[index],
                              style: const TextStyle(
                                fontFamily: "Pacifico",
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Dasboard ✈️",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),

          Expanded(
            flex: 1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .38,
                    child: Card(
                      shadowColor: Colors.pink,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            alignment: Alignment.topLeft,
                            child: Icon(DashIcons[index], size: 40),
                          ),
                          Container(
                              padding: const EdgeInsets.only(left: 15,top: 5,
                              bottom: 15),
                              alignment: Alignment.topLeft,
                              child: Text(Dashboard[index],
                                style: const TextStyle(
                                  fontFamily: "Pacifico",
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),)),
                          Container(
                            width: 100,
                            height: 5,
                            child: const LinearProgressIndicator(
                              value: 0.7,
                              backgroundColor: Colors.grey,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.deepOrangeAccent),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

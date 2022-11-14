import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teams/pages/invite_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(children: [
            appBarSearch(),
            headerList("All People -3", "See all"),
            Expanded(flex: 1, child: personList()),
            headerList("Invited people - 1", "See all"),
            Expanded(flex: 2, child: invitedPeople()),
          ]),
        ),
        bottomNavigationBar: getBottomNavigationBar(),
        floatingActionButton:  FloatingActionButton(
            elevation: 0.0,
            child:  const Icon(
              Icons.add,
              color: Colors.white,
            ),
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => InvitePage()));
            }));
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      selectedFontSize: 0,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      items: [
        getBottomNavigationItem("Home", 0, "assets/images/home.png"),
        getBottomNavigationItem("Loans", 1, "assets/images/loans.png"),
        getBottomNavigationItem("Contracts", 2, "assets/images/contracts.png"),
        getBottomNavigationItem("Teams", 3, "assets/images/teams.png"),
        getBottomNavigationItem("Chat", 4, "assets/images/chat.png"),
      ],
    );
  }

  BottomNavigationBarItem getBottomNavigationItem(
      String title, int index, String iconname) {
    return BottomNavigationBarItem(
      icon: getBottomNavigationIcon(index, iconname, title),
      label: title,
    );
  }

  Widget getBottomNavigationIcon(int index, String iconName, String title) {
    return Container(
      width: double.infinity,
      child: Material(
        // color: Colors.grey,
        child: InkWell(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image.asset(iconName, width: 30, height: 20)),
              getBottomNavigationTitle(title, index),
            ],
          ),
          onTap: () => null,
        ),
      ),
    );
  }

  Widget getBottomNavigationTitle(String title, int index) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(title,
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 11)),
    );
  }

  Widget appBarSearch() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: const [
          Text(
            "Teams",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 300,
          ),
          Icon(Icons.search)
        ],
      ),
    );
  }

  Widget headerList(String title, String seeAll) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        Text(
          seeAll,
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ]),
    );
  }

  Widget personList() {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 10, top: 10, bottom: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Color.fromARGB(0, 21, 6, 159),
                      ), //Border.all
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text("NB")),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("Krishna Soundhar"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Active")
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                Text("Admin")
              ],
            ),
          );
        });
  }

  Widget invitedPeople() {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 10, top: 10, bottom: 10),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Color.fromARGB(0, 21, 6, 159),
                      ), //Border.all
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(child: Text("NB")),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text("Emperor J"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Admin")
                  ],
                ),
              ],
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_sau1/views/forth_page1_ui.dart';

import 'forth_page2_ui.dart';
import 'forth_page3_ui.dart';
import 'forth_page4_ui.dart';
import 'forth_page5_ui.dart';
import 'forth_page6_ui.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({Key? key}) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Forth UI ไอที',
          style: TextStyle(
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.yellowAccent,
                indicatorColor: Colors.yellowAccent,
                unselectedLabelColor: Colors.grey[400],
                labelStyle: TextStyle(fontFamily: 'Kanit'),
                tabs: [
                  Tab(
                    text: 'ตารางสอน',
                    icon: Icon(
                      Icons.ac_unit_sharp,
                    ),
                  ),
                  Tab(
                    text: 'รายวิชา',
                    icon: Icon(
                      Icons.sd_card,
                    ),
                  ),
                  Tab(
                    text: 'ผลการศึกษา',
                    icon: Icon(
                      Icons.label_important_outline,
                    ),
                  ),
                  Tab(
                    text: 'แผนการเรียน',
                    icon: Icon(
                      Icons.nat_rounded,
                    ),
                  ),
                  Tab(
                    text: 'ค่าเทอม',
                    icon: Icon(
                      Icons.cabin_rounded,
                    ),
                  ),
                  Tab(
                    text: 'แจ้งปัญหา',
                    icon: Icon(
                      Icons.g_mobiledata_outlined,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ForthTabpage1UI(),
                  ForthTabpage2UI(),
                  ForthTabpage3UI(),
                  ForthTabpage4UI(),
                  ForthTabpage5UI(),
                  ForthTabpage6UI(),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.jpg',
                ),
              ),
              accountName: Text('ถิระพันธ์ จั่นวิลัย'),
              accountEmail: Text('ID: 6252410019'),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgdrawer.png'),
                      fit: BoxFit.fill)),
              otherAccountsPictures: [
                Image.asset('assets/images/saulogo.png'),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าแรก',
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('ตารางสอน'),
              leading: Icon(
                Icons.table_chart,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('ตารางสอบ'),
              leading: Icon(Icons.access_alarm),
              trailing: Text(
                '9999',
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ออกจากโปรแกรม',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}

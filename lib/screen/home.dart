import 'package:flutter/material.dart';
import 'package:contoh1/screen/sidemenu.dart';
// import  'package:contoh1/Utilities/ExFAB.dart';
// import  'package:contoh1/Utilities/FAB.dart';

/// This is the stateful widget that the main application instantiates.
class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _HOMEState extends State<HOME> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  // bool _pinned = true;
  // bool _snap = false;
  // bool _floating = false;

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
            ),
            // pinned: _pinned,
            // snap: _snap,
            elevation: 0.0,
            backgroundColor: Colors.white,
            floating: true,
            // expandedHeight: 160.0,
            flexibleSpace: SafeArea(
              // mainAxisAlignment: MainAxisAlignment.center,
              child: Container(
                width: size.width,
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffeef3fb),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x33000000),
                      blurRadius: 15,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.only(right: 15, left: 15),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _drawerkey.currentState!.openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Search in mail',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        SizedBox(
                          width: 35,
                          child: RawMaterialButton(
                            onPressed: () {},
                            child: CircleAvatar(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // title: Text('SliverAppBar'),
              // background: FlutterLogo(),
            ),
          ),
          // const SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 20,
          //     child: Center(
          //       child: Text('Scroll to see the SliverAppBar in effect.'),
          //     ),
          //   ),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Container(
                      
                    ),
                  ),
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      key: _drawerkey,
      drawer: SideBar(),
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: OverflowBar(
      //       alignment: MainAxisAlignment.spaceEvenly,
      //       children: <Widget>[
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('pinned'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _pinned = val;
      //                 });
      //               },
      //               value: _pinned,
      //             ),
      //           ],
      //         ),
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('snap'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _snap = val;
      //                   // Snapping only applies when the app bar is floating.
      //                   _floating = _floating || _snap;
      //                 });
      //               },
      //               value: _snap,
      //             ),
      //           ],
      //         ),
      //         Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             const Text('floating'),
      //             Switch(
      //               onChanged: (bool val) {
      //                 setState(() {
      //                   _floating = val;
      //                   _snap = _snap && _floating;
      //                 });
      //               },
      //               value: _floating,
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
// class HOME extends StatefulWidget {
//   @override
//   _HOMEState createState() => _HOMEState();
// }

// class _HOMEState extends State<HOME> with TickerProviderStateMixin {
//   // ignore: unused_field
//   final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
//    final items = List<String>.generate(100, (i) => "Item $i");
//   ScrollController _scrollController = new ScrollController();
//   bool isFAB = false;

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(() {
//       if (_scrollController.offset > 50) {
//         setState(() {
//           isFAB = true;
//         });
//       } else {
//         setState(() {
//           isFAB = false;
//         });
//       }
//     });
//   }
      
//   //   @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: buildAppBar(),
//   //     body: buildListView(),
//   //     floatingActionButton: isFAB ? buildFAB() : buildExtendedFAB(),
//   //   );
//   // }    
//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     var body = buildListView();
//     return Scaffold(
//                        //  body: buildListView(),
//       floatingActionButton: isFAB ? buildFAB() : buildExtendedFAB(),
//       bottomNavigationBar: Container(
//         height: 100,
//         child: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.mail),
//               // ignore: deprecated_member_use
//               title: Text('Email'),
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.video_call),
//               // ignore: deprecated_member_use
//               title: Text('Meet'),
//             ),
//           ],
//           currentIndex: 0,
//           backgroundColor: Color(0xffeef3fb),
//           selectedItemColor: Colors.blueGrey[900],
//           unselectedItemColor: Colors.grey[400],
//           showUnselectedLabels: true,
//         ),
//       ),
//     );
//   }
// // Widget buildListView() => ListView.builder(
// //   controller: _scrollController,
// //   physics: BouncingScrollPhysics(),
// //   itemCount: items.length,
// //   itemBuilder: (context, index){
// //     return ListTile(
// //       title: Text('${items[index]}'),
// //       );
// //   },
// //   );

//             ],
//           ),
//         ),
//       ],
//     );
//   }
//   );
// }

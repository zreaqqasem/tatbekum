import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> imgList = [
    'https://wallpaperaccess.com/full/767033.jpg',
    'https://wallpaperaccess.com/full/767033.jpg',
    'https://wallpaperaccess.com/full/767033.jpg',
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        child: FlatButton(
                          child: SvgPicture.asset(
                            'assets/images/notification.svg',
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState.openEndDrawer(),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        child: FlatButton(
                          child: SvgPicture.asset(
                            'assets/images/saleh.svg',
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState.openEndDrawer(),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 1),
                              color: Color(0xffFBFBFB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0))),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 3,
                              ),
                              Expanded(
                                child: Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black12, width: 1),
                                      color: Color(0xffFFFFFF),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(24.0))),
                                  child: (Row(
                                    children: [
                                      Icon(Icons.arrow_back_ios_sharp),
                                      Text(
                                        'الشرقية',
                                        style: TextStyle(color: Colors.black26),
                                      )
                                    ],
                                  )),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                'التوصيل',
                                textAlign: TextAlign.center,
                              ))
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0))),
                        child: FlatButton(
                          child: SvgPicture.asset(
                            'assets/images/menu.svg',
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState.openEndDrawer(),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        child: FlatButton(
                          child: SvgPicture.asset(
                            'assets/images/filter.svg',
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState.openEndDrawer(),
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Color(0xffF8F8F8),
                        height: 50,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'ابحث من هنا '),
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Color(0xffF8F8F8),
                        height: 50,
                      ),
                      Container(
                        width: 50,
                        child: FlatButton(
                          child: SvgPicture.asset(
                            'assets/images/search.svg',
                          ),
                          onPressed: () =>
                              scaffoldKey.currentState.openEndDrawer(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      )),
                  child: Center(
                    child: Text(
                      'ماذا تريد ان تطلب يا أحمد ؟',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                              viewportFraction: 1.0,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                          items: imgList.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    height:
                                        MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        )),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        child: Image.network(i)));
                              },
                            );
                          }).toList(),
                        ),
                        Positioned(
                          bottom: 10,
                          left: MediaQuery.of(context).size.width / 2.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: imgList.map((i) {
                              int index = imgList.indexOf(i);
                              return Container(
                                width: 10.0,
                                height: 10.0,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Color(0xff2A357C)
                                      : Color(0xffFFFFFF),
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('عرض الكل'),
                    Spacer(),
                    Text(
                      'روابط سريعة',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/saleh2.svg',
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),

                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/3orood2.svg',
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/خصم.svg',
                                        width: 50,
                                        height: 50,
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/5adamat.svg',
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/حسابي.svg',
                                        width: 40,
                                        height: 40,

                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),

                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/notification.svg',
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/notification.svg',
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: (Column(
                              children: [
                                Padding(
                                  child: Container(
                                    child: FlatButton(
                                      child: SvgPicture.asset(
                                        'assets/images/notification.svg',
                                      ),
                                      onPressed: () =>
                                          scaffoldKey.currentState.openEndDrawer(),
                                    ),
                                    height: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12,width: 1),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(10),
                                ),
                                Text('الاسر \nالمنتجة')
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CarouselSlider(
                      options: CarouselOptions(
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: imgList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                height:
                                MediaQuery.of(context).size.width * 0.6,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    )),
                                child: ClipRRect(
                                    borderRadius:
                                    BorderRadius.circular(15.0),
                                    child: Image.network('')));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),

              ],
            ),
          )),
        ),
      ),
      endDrawer: Drawer(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'اهلا بك',
                          style: TextStyle(
                              color: Color(0xff32519F),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'خميس المطيري',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'الرئيسية',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: SvgPicture.asset(
                  'assets/images/home.svg',
                  width: 28,
                  height: 28,
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'البروفايل',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/حسابي.svg',
                      width: 28,
                      height: 28,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      '.اكواد الخصم',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/خصم.svg',
                      width: 20,
                      height: 20,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'الرسائل',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/الرسائل.svg',
                      width: 28,
                      height: 28,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'الطلبات',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/طلباتي.svg',
                      width: 28,
                      height: 28,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'الأقسام',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/الاقسام.svg',
                      width: 28,
                      height: 28,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'المحفطة',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/المحفظة.svg',
                      width: 24,
                      height: 24,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'المفضلة',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/المفضلة.svg',
                      width: 26,
                      height: 26,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'الرقم الموحد',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/الرقم الموحد.svg',
                      width: 26,
                      height: 26,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'التقييمات',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/التقييم.svg',
                      width: 28,
                      height: 28,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'العروض',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: SvgPicture.asset(
                      'assets/images/عروض.svg',
                      width: 28,
                      height: 28,
                    )),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Text(
                      'الاعدادات',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 4),
                  child: Container(
                    child: SvgPicture.asset(
                      'assets/images/اعدادات.svg',
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

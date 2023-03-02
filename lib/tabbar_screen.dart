import 'package:flutter/material.dart';

class TabbarScreen extends StatefulWidget {
  ///1234567890
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    tabController!.animateTo(
      2,
      duration: Duration(seconds: 2),
    );

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController!.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Tabbar"),
          bottom: TabBar(
            onTap: (value) {
              return debugPrint(" value is ------->>>> $value");
            },
            controller: tabController!,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.pink,
            indicatorColor: Colors.green,
            indicatorWeight: 20,
            splashBorderRadius: BorderRadius.circular(20),
            indicatorSize: TabBarIndicatorSize.label,

            isScrollable: true,

            tabs: [
              Tab(
                height: 100,
                child: Image.asset(
                  "assets/images/cartoon.jpeg",
                  fit: BoxFit.fill,
                  height: 50,
                  width: 50,
                ),
                // text: "janu",
                // icon: Icon(Icons.access_time_filled_rounded),
              ),
              Tab(
                text: "janu",
              ),
              Tab(
                icon: Icon(Icons.circle_rounded),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController!,
          children: [
            Text("chats"),
            Text("status"),
            Icon(Icons.call),
          ],
        ),
      ),
    );
  }
}

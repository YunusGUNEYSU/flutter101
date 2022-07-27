import 'package:flutter/material.dart';

class TabBarLearn extends StatefulWidget {
  const TabBarLearn({Key? key}) : super(key: key);

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _myTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(0);
          }),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Page1',
                ),
                Tab(
                  text: 'Page2',
                )
              ],
            ),
          ),
          appBar: AppBar(),
          body: TabBarView(controller: _tabController, children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
          ]),
        ));
      
  }
}
enum _myTabViews{
  home,settings,favorite,profile
}
extension _myTabViewsExtansion on _myTabViews{
  void name(args) {
    
  }
}
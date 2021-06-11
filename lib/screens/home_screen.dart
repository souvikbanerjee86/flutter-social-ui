import 'package:flutter/material.dart';
import 'package:flutter_social_ui/data/data.dart';
import 'package:flutter_social_ui/widgets/following_users.dart';
import 'package:flutter_social_ui/widgets/posts_carousal.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          'FRENDZ',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 15.0),
        ),
        bottom: TabBar(
            controller: _tabController,
            indicatorWeight: 3.0,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontSize: 16.0),
            tabs: <Widget>[
              Tab(text: 'Trending'),
              Tab(text: 'Latest'),
            ]),
      ),
      body: ListView(
        children: [
          FollowingUsers(),
          PostsCarousal(
            pageController: _pageController,
            title: 'Posts',
            posts: posts,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              child: Stack(
                children: [
                  Image.asset('assets/b.png'),
                  Positioned(
                      left: 170,
                      top: 70,
                      child: Image.asset('assets/profile.png', width: MediaQuery.of(context).size.width * 0.19)),
                ],
              ),
            ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const Text(
              "Mohan Sharma",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.007),
            const Text(
              '@mohansharma8227',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.029),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "25",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007),
                      const Text(
                        "Posts",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007),
                      Text(
                        "Homes",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1242",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "7",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007),
                      const Text(
                        "Following",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  labelStyle:
                      const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  unselectedLabelColor: Colors.grey,

                  indicatorColor: Colors.black,
                  indicatorWeight: 2,
                  tabs: const [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Tab(text: 'Posts')),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Tab(text: 'Saved')),
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children:  [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: GridView.builder(
                        itemCount: 20,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 15.0,
                              mainAxisSpacing: 15.0),
                          itemBuilder: (BuildContext context, int index){
                            return Image.asset('assets/s1.png');
                          }),
                    ),

                    // second tab bar view widget
                    Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
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

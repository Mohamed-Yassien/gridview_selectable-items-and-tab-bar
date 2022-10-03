import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        drawer: const Drawer(
          backgroundColor: Color(0xFF2B3230),
        ),
        appBar: AppBar(
          toolbarHeight: 120,
          elevation: 0,
          title: Text(
            'TabBar Screen',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            physics: const BouncingScrollPhysics(),
            onTap: (int index) {
              print(index);
            },
            tabs: [
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  )
                ],
              ),
            ],
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: Text(
                '1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Center(
              child: Text(
                '3',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Center(
              child: Text(
                '4',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Center(
              child: Text(
                '5',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Center(
              child: Text(
                '6',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Center(
              child: Text(
                '7',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

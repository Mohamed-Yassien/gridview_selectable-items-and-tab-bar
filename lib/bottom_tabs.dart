import 'package:flutter/material.dart';

class BottomTabs extends StatelessWidget  with PreferredSizeWidget{
  const BottomTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: TabBar(
        indicatorColor: Colors.transparent,
        onTap: (int index) {
          print(index);
        },
        tabs: [
          Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.pink,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

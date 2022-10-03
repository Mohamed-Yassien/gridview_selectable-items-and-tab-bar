import 'package:flutter/material.dart';
import 'package:flutter_selectable_items/reusable_grid_item.dart';
import 'package:flutter_selectable_items/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Selectable Items',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Select One Only',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Spacer(),
            Expanded(
              flex: 2,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return ReusableGridItem(
                    color: selectedIndex == index ? Colors.red : Colors.white,
                    press: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
                itemCount: 6,
              ),
            ),
            TextButton(
              onPressed: () {
                if (selectedIndex != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(
                        itemIndex: selectedIndex!,
                      ),
                    ),
                  );
                }
              },
              child: Text(
                'Continue',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

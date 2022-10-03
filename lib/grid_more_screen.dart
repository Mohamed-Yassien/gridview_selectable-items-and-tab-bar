import 'package:flutter/material.dart';
import 'package:flutter_selectable_items/ahly_screen.dart';
import 'package:flutter_selectable_items/grid_more_item.dart';
import 'package:flutter_selectable_items/liverpool_screen.dart';

import 'item_model.dart';

class GridMoreScreen extends StatelessWidget {
  const GridMoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFF2B3230),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Text(
                  'Code Icons',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              ExpansionTile(
                title: Text(
                  'Resident',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                iconColor: Colors.white,
                collapsedIconColor: Colors.white,
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                    child: ListTile(
                      onTap: (){
                        print(index);
                      },
                      title: Text(
                        'unit',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      trailing: const Icon(
                        Icons.reset_tv_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text(
          'GridMore',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              title: Text(
                'Mohamed Ali',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 16),
              ),
              subtitle: Text(
                '24 years old',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                itemCount: ItemModel.demoItems.length,
                itemBuilder: (context, index) {
                  return GridMoreItem(
                    title: ItemModel.demoItems[index].title,
                    color: ItemModel.demoItems[index].color,
                    press: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AhlyScreen(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LiverPollScreen(),
                            ),
                          );
                          break;
                        case 2:
                          break;
                        case 3:
                          break;
                        case 4:
                          break;
                        default:
                          break;
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

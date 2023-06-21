import 'package:flutter/material.dart';
import 'package:master_flutter_application/models/catalog.dart';
import 'package:master_flutter_application/widgets/drawer.dart';

import 'widgets/item_widget.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go back')),
          ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(item: CatalogModel.items[index]);
            },
          )
        ],
      ),
    );
  }
}

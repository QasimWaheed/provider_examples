import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../object/base_object.dart';
import '../../services/provider_object.dart';

class ExpensiveWidget extends StatelessWidget {
  const ExpensiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final expensiveObject = context.select<ObjectProvider, ExpensiveObject>(
          (provider) => provider.expensiveObject,
    );
    return Container(
      height: 100,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Expensive Widget"),
          const Text("Last Updated: "),
          Text(expensiveObject.lastUpdated),
        ],
      ),
    );
  }
}
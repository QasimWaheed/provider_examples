import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../object/base_object.dart';
import '../../services/provider_object.dart';

class CheapWidget extends StatelessWidget {
  const CheapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cheapObject = context.select<ObjectProvider, CheapObject>(
          (provider) => provider.cheapObject,
    );
    return Container(
      height: 100,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Cheap Widget"),
          const Text("Last Updated: "),
          Text(cheapObject.lastUpdated),
        ],
      ),
    );
  }
}
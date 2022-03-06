import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../services/provider_object.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final objectProvider = context.watch<ObjectProvider>();
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Object Provider Widget"),
          const Text("ID: "),
          Text(objectProvider.id),
        ],
      ),
    );
  }
}
import 'package:details_provider_testing/services/provider_object.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/cheap_widget.dart';
import '../widget/expensive_widget.dart';
import '../widget/object_provider_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Expanded(child: CheapWidget()),
              Expanded(child: ExpensiveWidget()),
            ],
          ),
          Row(
            children: const [
              Expanded(child: ObjectProviderWidget()),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () => context.read<ObjectProvider>().stop(),
                child: const Text("Stop"),
              ),
              TextButton(
                onPressed: () => context.read<ObjectProvider>().start(),
                child: const Text("Start"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rivision/model.dart';
import 'package:rivision/service.dsrt.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DemoData.demoModel(),
        builder:
            (BuildContext context, AsyncSnapshot<List<DemoModel>?> snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              final data = snapshot.data?[index];
              return ListTile(
                title: Text(data?.title ?? ""),
              );
            },
          );
        },
      ),
    );
  }
}

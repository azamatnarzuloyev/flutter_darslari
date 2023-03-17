import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
   MyApp({super.key});
final List<Map> myproducts = List.generate(100, (index) => {"id":index, "name":"product $index"});

  @override
  State<MyApp> createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:MyHomepage() ,
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(Object context) {
      var myproducts;
      return Scaffold(
        appBar: AppBar(
          title: Text("fluter gridview"),
        ),
       body:GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myproducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(myproducts[index]["name"]),
              );
            }),
      );
  }


}
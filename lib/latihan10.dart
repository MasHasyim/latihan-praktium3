import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "For You",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Following", 
                    style: TextStyle(
                      color: Colors.white, 
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 5, 
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: ListTile(
                      leading: const FlutterLogo(size: 24),
                      title: Text("Data ke $index"),
                    ),
                  );
                },
              ),
              GridView.count(
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  List<String> owlImages = [
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                  ];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(owlImages[index]),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:assignment1/row_item.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("عاصمة فلسطين"),
          titleTextStyle: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("image/Quds.jpg",
                  height: 250, width: double.infinity, fit: BoxFit.fill),
              const SizedBox(height: 10),
              const Text(
                "مدينة القدس",
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),

          row_item("الاسم" , "القدس"),
              row_item("المساحة" , "١٢٥ كم"),
              row_item("السكان" , "٣٥٨٠٠٠ نسمة"),
              row_item("الدولة" , "فلسطين"),
              row_item("اسم الطالب" , "عز الدين موسى المقيد")
            ],
          ),
        ),
      ),
    );
  }
}

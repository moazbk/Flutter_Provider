import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/models/task_data.dart';
import 'package:provider/provider.dart';
import 'screens/TaskScreen.dart';
void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (context) => TaskData(),
       child: MaterialApp(
         home: TaskScreen(),
       ),
     );
   }
 }

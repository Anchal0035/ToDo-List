import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive_flutter/hive_flutter.dart';


class TodoList extends StatelessWidget {

  final String TaskName;
  final bool taskComplete;
  Function(bool?)? onchanged;
  Function(BuildContext)? deleteTask;

 TodoList({ super.key,
   required this.TaskName,
   required this.taskComplete,
   required this.onchanged,
 required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25,right: 25,top: 25),

      //slidable delete
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteTask,
            icon: Icons.delete,
              backgroundColor: Colors.red,
            )
          ],
        ),
        child: Container(
            padding: EdgeInsets.all(25),
            child: Row(
              children:[

                Checkbox(
                    value: taskComplete,
                    onChanged: onchanged,
                activeColor: Colors.black,),

                Text(TaskName,
                style: TextStyle(decoration:taskComplete?TextDecoration.lineThrough :null),),
              ],),
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10)
            ),
        ),
      )

    );
  }
}

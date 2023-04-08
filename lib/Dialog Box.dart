import 'package:flutter/material.dart';

import 'Buttons.dart';

class DialogBox extends StatelessWidget {

  final Controller;
  VoidCallback onSave;
  VoidCallback onCancel;

 DialogBox({super.key,
   required this.Controller,
 required this.onSave,
 required this. onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          children: [
            //user input
            TextField(
              controller:Controller ,
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: "Add new task"),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  //save button
                  Buttons(text: "Save", onPressed: onSave,),
                  SizedBox(width: 10,),

                  //cancel button
                  Buttons(text: "Cancel", onPressed:onCancel,)


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

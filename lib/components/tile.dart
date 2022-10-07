import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  String ? text;
  IconData leadIcon;
    IconData trailIcon;
Function() ontap1;
  
   MyTile(this.leadIcon,this.text,this.trailIcon,this.ontap1);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
        child: GestureDetector(
          onTap: () => ontap1(),
          child: ListTile(
            // onTap: (){ontap();},
                  iconColor: Colors.blue,
                  tileColor: Colors.white,
                  trailing: Icon(trailIcon,size: 20),
                  title: Text("$text",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
                  leading: Icon(leadIcon),
                ),
        ),
      
    );
  }
}
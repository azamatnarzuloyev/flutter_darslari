import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Container(
      child: Card(
        child: Row(
         
          children:<Widget> [
           Expanded(
            flex: 2,
            child: Container(
            color: Colors.blue,
             width: 200,
              margin: const EdgeInsets.all(20),
              child: Column(
                
                children: const <Widget> [
                        
                   Text("flutter darslari")                 
                ],
              ),
            ),
           ),
           Expanded(child: Container(
            width: 200,
            color: Colors.red,
          
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("data"),
                Text("data"),
              ],
              
            ),
           ))
          ],
         
         
         ),
         
          ),
    );
       
  }
  }

//   Row(
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//     Expanded(
//       child: Image.asset('images/pic1.jpg'),
//     ),
//     Expanded(
//       flex: 2,
//       child: Image.asset('images/pic2.jpg'),
//     ),
//     Expanded(
//       child: Image.asset('images/pic3.jpg'),
//     ),
//   ],
// );
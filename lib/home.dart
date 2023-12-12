import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import 'datamodel.dart';
class Home extends StatefulWidget {
  const Home({super.key, required this.datsModel,});
   final DataModel datsModel;


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
             mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Center(
               child: Container(
                   width: MediaQuery.of(context).size.width*0.4,
                   height: MediaQuery.of(context).size.height*0.4,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                         image: DecorationImage(image: NetworkImage("${widget.datsModel.image}",
                         ),fit: BoxFit.cover,)
                   ),
                   ),
             ),

 Center(child: Text("${widget.datsModel.name}",style: GoogleFonts.pacifico(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
             SizedBox(height: 10,),
             Center(
               child: Text("FLUTTER  DEVELOPER",
               style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,color: Colors.tealAccent,fontSize: 17),
               ),
             ),
             SizedBox(
               height: 30,
                 width: 170,
                 child: Divider(thickness: 3,color: Colors.tealAccent,)),
             SizedBox(height: 20,),
             Center(
               child: Container(
                 width: MediaQuery.of(context).size.width*0.8,
                 height: 55,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Center(
                   child: ListTile(
                     leading:  Icon(Icons.call),
                    title: Text("${widget.datsModel.email}"),
                   ),
                 ),
               ),
             ),
             SizedBox(height: 20,),
             Center(
               child: Container(
                 width: MediaQuery.of(context).size.width*0.8,
                 height: 55,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15)
                 ),
                 child: Center(
                   child: ListTile(
                     leading:  Icon(Icons.email_outlined,color: Colors.teal),
                     title: Text("${widget.datsModel.phone}",style: TextStyle(color: Colors.teal)),
                   ),
                 ),
               ),
             ),

                         //doplicate


             // Center(
             //   child: Container(
             //     width: MediaQuery.of(context).size.width*0.4,
             //     height: MediaQuery.of(context).size.height*0.4,
             //     decoration: BoxDecoration(
             //         shape: BoxShape.circle,
             //         image: DecorationImage(image: AssetImage("images/profile.jpeg",
             //         ),fit: BoxFit.cover,)
             //     ),
             //   ),
             // ),
             //
             // Center(child: Text("Fahim Shahariar Fahad",style: GoogleFonts.pacifico(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30))),
             // SizedBox(height: 10,),
             // Center(
             //   child: Text("FLUTTER  DEVELOPER",
             //     style: GoogleFonts.aboreto(fontWeight: FontWeight.bold,color: Colors.tealAccent,fontSize: 17),
             //   ),
             // ),
             // SizedBox(
             //     height: 30,
             //     width: 170,
             //     child: Divider(thickness: 3,color: Colors.tealAccent,)),
             // SizedBox(height: 20,),
             // Center(
             //   child: Container(
             //     width: MediaQuery.of(context).size.width*0.8,
             //     height: 55,
             //     decoration: BoxDecoration(
             //         color: Colors.white,
             //         borderRadius: BorderRadius.circular(15)
             //     ),
             //     child: Center(
             //       child: ListTile(
             //         leading:  Icon(Icons.call),
             //         title: Text("01627413327"),
             //       ),
             //     ),
             //   ),
             // ),
             // SizedBox(height: 20,),
             // Center(
             //   child: Container(
             //     width: MediaQuery.of(context).size.width*0.8,
             //     height: 55,
             //     decoration: BoxDecoration(
             //         color: Colors.white,
             //         borderRadius: BorderRadius.circular(15)
             //     ),
             //     child: Center(
             //       child: ListTile(
             //         leading:  Icon(Icons.email_outlined,color: Colors.teal),
             //         title: Text("mrfahad26531@gmail.com",style: TextStyle(color: Colors.teal)),
             //       ),
             //     ),
             //   ),
             // ),
           ],
        ),
      ),
    );
  }
}

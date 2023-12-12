
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iconly/iconly.dart';
import 'package:protpolio1/datamodel.dart';
import 'package:protpolio1/home.dart';

class Main1 extends StatefulWidget {
   Main1({super.key});

  @override
  State<Main1> createState() => _Main1State();
}

class _Main1State extends State<Main1> {
  DataModel data_model=DataModel(image: '',name: '',email: '',phone: '');


  GlobalKey<FormState> formkey=GlobalKey<FormState>();


  // TextEditingController image_Con=TextEditingController();
  // TextEditingController email_Con=TextEditingController();
  // TextEditingController name_Con=TextEditingController();
  // TextEditingController phone_Con=TextEditingController();


  @override
  Widget build(BuildContext context) {
     return   SafeArea(
      child: Scaffold(
appBar: AppBar(),

body:  Form(
  key: formkey,
  child:   Column(

    children: [

       SizedBox(height:30,),



      Padding(

        padding: const EdgeInsets.all(8.0),

        child:   TextFormField(

       validator: (value) {
         if(value?.isEmpty ?? true){
           return "Image link is required";
         }return null;
       },

   onChanged: (value) {

     data_model.image=value;

   },

          decoration: InputDecoration(

            hintText: "Image url",

            labelText: "URL",

            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(20),



            ),



          ),



        ),

      ),

      SizedBox(height: 20,),

      Padding(

        padding: const EdgeInsets.all(8.0),

        child:   TextFormField(
 validator: (value) {
   if(value?.isEmpty ?? true){
     return "Name is required";
   }return null;
 },
  onChanged: (value) {

    data_model.name=value;

  },

          decoration: InputDecoration(

            hintText: "Enter your name",

            labelText: "Name",

            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(20),



            ),



          ),



        ),

      ),

      SizedBox(height: 20,),

      Padding(

        padding: const EdgeInsets.all(8.0),

        child:   TextFormField(
          validator: (value) {
            if(value?.isEmpty ?? true){
              return "Email id is required";
            }return null;
          },
  onChanged: (value) {

    data_model.email=value;

  },

          decoration: InputDecoration(

            hintText: "Enter your email",

            labelText: "Email",

            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(20),



            ),



          ),



        ),

      ),

      SizedBox(height: 20,),

      Padding(

        padding: const EdgeInsets.all(8.0),

        child:   TextFormField(
          validator: (value) {
            if(value?.isEmpty ?? true){
              return "Phone number is required";
            }return null;
          },
  onChanged: (value) {

    data_model.phone=value;

  },
          decoration: InputDecoration(

            hintText: "Enter your phone no",

            labelText: "phone",

            border: OutlineInputBorder(

              borderRadius: BorderRadius.circular(20),



            ),



          ),



        ),

      ),

      SizedBox(height: 100,),







      GestureDetector(

        onTap: () {
 if(formkey.currentState?.validate()?? false){
   Navigator.push(context,

       MaterialPageRoute(builder: (context) =>  Home(datsModel: data_model)

       ));
 }return null;


        },

        child:   Padding(



          padding: const EdgeInsets.all(8.0),



          child:   Container(







            height: 50,







            width: MediaQuery.of(context).size.width*0.6,







            decoration: BoxDecoration(







                borderRadius: BorderRadius.circular(10),







                color: Colors.teal







            ),







            child: Center(child: Text("Press",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),







          ),



        ),

      )



    ],

  ),
),

       ),
    );
  }
}



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void addData() async{
    var user = {"name": nameController.text, "email": emailController.text};
    var data= FirebaseFirestore.instance.collection("user");
    data.add(user);
    print("data added");
    nameController.clear();
    emailController.clear();
  }
  void getData(){
   var myData=FirebaseFirestore.instance.collection("user").get();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(title: Text("Home Page"), backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Enter name",
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Enter email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
        
            ElevatedButton(onPressed: addData, child: Text("add")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
        
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Padding(
               padding: const EdgeInsets.all(18.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.network("https://media.istockphoto.com/id/1165842880/photo/financial-saving-concept-plant-growing-out-of-coins.jpg?s=612x612&w=0&k=20&c=KW_-8RjiyGswXp3QKxIIRyUe-UYtaEY0lkBSMNjVjSc=",width: 250,height: 250,),
                  ),
                
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.network("https://media.istockphoto.com/id/1165842880/photo/financial-saving-concept-plant-growing-out-of-coins.jpg?s=612x612&w=0&k=20&c=KW_-8RjiyGswXp3QKxIIRyUe-UYtaEY0lkBSMNjVjSc=",width: 250,height: 250,),
                  ),
                ],
               ),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text("My Name is Aziza")
              ],
             ),Padding(
               padding: const EdgeInsets.all(18.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.network("https://media.istockphoto.com/id/1165842880/photo/financial-saving-concept-plant-growing-out-of-coins.jpg?s=612x612&w=0&k=20&c=KW_-8RjiyGswXp3QKxIIRyUe-UYtaEY0lkBSMNjVjSc=",width: 250,height: 250,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.network("https://media.istockphoto.com/id/1165842880/photo/financial-saving-concept-plant-growing-out-of-coins.jpg?s=612x612&w=0&k=20&c=KW_-8RjiyGswXp3QKxIIRyUe-UYtaEY0lkBSMNjVjSc=",width: 250,height: 250,),
                  ),
                ],
               ),
             )
          ],
        ),
      ),
    );
  }
}
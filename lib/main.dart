import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Password Google Flutter Template',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:const Text("Save Password Google Flutter"),),
      body: 
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        const    Text("GFG Articles",style: TextStyle(fontSize: 20),),  const SizedBox(height: 10,),
           TextFormField(
            decoration: const InputDecoration(hintText: "User Name"),
              autofillHints: const [ AutofillHints.newUsername,
              
              AutofillHints.username,    AutofillHints.email,
              ],
    // Autofill Hints where you want to store the data of this textfiled 
    // I am considering  this as username,email
            ),  TextFormField(
                      decoration: const InputDecoration(hintText: "Password"),
              autofillHints:const [AutofillHints.password],
    // Autofill Hints where you want to store the data of this textfiled 
    // I am considering  this as password
            ),
           const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
               TextInput.finishAutofillContext();
           // To store all the autofills in googles according to autofill selected
          
            }, child:const Text("Save Password"))
          ],
        ),
      ),
    ),);
  }
}
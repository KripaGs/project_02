import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _PageState();
}

class _PageState extends State<bmi> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double result=0;
  double h_value=0;
  double w_value=0;
  void calculator(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [TextField(
          controller: height,
          decoration: InputDecoration(
              filled: true,
              fillColor:Colors.white,
              hintText: "Enter Your Height...",
        hintStyle: TextStyle(
            color: Colors.black12,
            fontStyle: FontStyle.italic,
        ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                BorderSide(width: 3,color: Colors.lightGreen),
              borderRadius: BorderRadius.circular(50.0),
            )
          ),
        ),
          SizedBox(height: 18,),
          TextField(
            controller: weight,
          decoration: InputDecoration(
            filled: true,
            fillColor:Colors.white,
            hintText: "Enter Your Weight...",
            hintStyle: TextStyle(
              color: Colors.black12,
              fontStyle: FontStyle.italic,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                BorderSide(width: 3,color: Colors.lightGreen),
              borderRadius: BorderRadius.circular(50.0),

            )
          ),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                calculator();
              });
            }, child: Text("Calculate")),
          Text(result.toString())
        ],
      ),
    );
  }
}

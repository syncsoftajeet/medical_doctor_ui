import 'package:flutter/material.dart';
import 'package:medical_doctor_ui/screen/welcom_screen.dart';


void main(){
  runApp(const MedicalUi());
}

class MedicalUi extends StatelessWidget {
  const MedicalUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}


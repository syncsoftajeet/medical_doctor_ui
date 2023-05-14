import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';
import 'package:medical_doctor_ui/screen/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var passwordToggle = false;
    return  SafeArea(child: Scaffold(


      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Image.asset("assets/doctors.png"),
              SizedBox(height: 30,),
              Padding(padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter User Name"),
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  obscureText: passwordToggle ? true : false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                    prefixIcon: Icon(Icons.lock),
                    /*suffixIcon: InkWell(
                      onTap: (){
                        if(passwordToggle==true){
                          passwordToggle = false;
                        }else{
                          passwordToggle = true;
                        }

                        setState(() {

                        });

                      },
                    )*/
                  ),
                ),
              ),

              SizedBox(height: 30,),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.appColor,
                  ),
                  child: Center(
                    child: Text("Login",style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have any account? ",style: GoogleFonts.inter(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    },
                    child: Text("Create Account ",style: GoogleFonts.inter(
                        color: AppColor.appColor,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ],
              )


            ],
          ),
        ),
      ),

    ));
  }
}

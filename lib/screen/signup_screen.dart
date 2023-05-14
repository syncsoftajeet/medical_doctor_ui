import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';
import 'package:medical_doctor_ui/screen/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [

                SizedBox(
                  height: 20,
                ),

                Image.asset("assets/doctors.png"),

                SizedBox(
                  height: 50,
                ),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label:  Text("Full Name",style: GoogleFonts.inter(
                      fontSize: 12
                    ),
                    ),
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  label:  Text("Email Address",style: GoogleFonts.inter(
                      fontSize: 12
                  ),
                  ),
                  prefixIcon: Icon(Icons.email)
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label:  Text("Phone Number",style: GoogleFonts.inter(
                        fontSize: 12
                    ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label:  Text("Enter Password",style: GoogleFonts.inter(
                        fontSize: 12
                    ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.appColor,
                    ),
                    child: Center(
                      child: Text("Create Account",style: GoogleFonts.inter(
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
                    Text("Already have account? ",style: GoogleFonts.inter(
                        color: Colors.black38,
                        fontWeight: FontWeight.w500
                    ),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text("Log In ",style: GoogleFonts.inter(
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
        
      ),
    );
  }
}

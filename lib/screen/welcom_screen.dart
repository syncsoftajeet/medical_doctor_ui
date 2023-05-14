import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';
import 'package:medical_doctor_ui/screen/home_screen.dart';
import 'package:medical_doctor_ui/screen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: Column(
            children: [

              SizedBox(
                height: 10,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    print("Hello---------");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 15,top: 15),
                    child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColor.appColor,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Text("Skip",style: GoogleFonts.inter(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image.asset("assets/doctors.png"),
              SizedBox(
                height: 80,
              ),
              Text("Doctors Appointment",style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 29,
                color: AppColor.appColor
              ),),
              SizedBox(
                height: 10,
              ),
              Text("Appointment Your Doctor",style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),),

              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap : (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(12),
                          color: AppColor.appColor,
                        ),
                        child: Center(
                          child: Text("Log In",style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                          ),),
                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColor.appColor,
                      ),
                      child: Center(
                        child: Text("Sign Up",style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),

    ));
  }
}

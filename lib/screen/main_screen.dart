import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';
import 'package:medical_doctor_ui/screen/doctor_details.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10,right: 15,left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text("Hello Alex",style: GoogleFonts.inter(
                      fontSize: 21,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(26),
                      child: Image.asset("assets/doctor1.jpg",height: 50,width: 50,),
                    )

                  ],
                ),
              ),

              SizedBox(height: 30,),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 10,right: 15,left: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex : 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: AppColor.appColor,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 1,
                                        color: AppColor.appColor
                                    )
                                  ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.white
                                      ),
                                      child: Icon(Icons.add,color: AppColor.appColor,size: 30,),
                                    ),

                                    SizedBox(
                                      height:25,
                                    ),
                                    Text("Clinic Visit",style: GoogleFonts.inter(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),),
                                    Text("Make an appointment",style: GoogleFonts.inter(
                                      fontSize: 11,
                                      color: Colors.white,
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 20,
                          ),

                          Expanded(
                              flex : 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 1,
                                          color: Colors.grey.withOpacity(0.4)
                                      )
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color: AppColor.appColor.withOpacity(0.1)
                                        ),
                                        child: Icon(Icons.home,color: AppColor.appColor,size: 30,),
                                      ),

                                      SizedBox(
                                        height:25,
                                      ),
                                      Text("Home Visit",style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                                      ),),
                                      Text("Call the doctor",style: GoogleFonts.inter(
                                        fontSize: 11,
                                        color: Colors.black,
                                      ),)
                                    ],
                                  ),
                                ),
                              ))

                        ],
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("What are Your Symptoms?",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 17,
                        ),textAlign: TextAlign.start,),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context,index){
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color :AppColor.cardBackground ,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12,
                                          spreadRadius: 2,
                                          blurRadius: 1,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                                      child: Text("Temprature",style: GoogleFonts.inter(
                                          fontSize: 14,
                                          color: AppColor.appColor,
                                          fontWeight: FontWeight.w600
                                      ),),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Popular Doctor",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 17,
                        ),textAlign: TextAlign.start,),
                      ),

                      SizedBox(height: 10,),

                      Expanded(
                        child: GridView.builder(
                          physics:  BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            scrollDirection: Axis.vertical,
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 150/150,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 13

                            ), itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorDetails()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: AppColor.cardBackground,
                                    borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                    )
                                  ]
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset("assets/doctor1.jpg",height: 60,width: 60,),
                                      ),

                                      SizedBox(
                                        height: 10,
                                      ),

                                      Text("Dr. Doctor Name ",style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.7)
                                      ),),
                                      SizedBox(height: 8,),
                                      Text("Theropist ",style: GoogleFonts.inter(
                                          fontSize: 10,
                                          color: Colors.black.withOpacity(0.7)
                                      ),),
                                      SizedBox(height: 8,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,size: 12,),
                                          Text(" 4.9 ",style: GoogleFonts.inter(
                                              fontSize: 10,
                                              color: Colors.black.withOpacity(0.7)
                                          ),),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      )

                    ],
                  ),
                ),
              ),

            ],

          )
      ),
    );
  }
}

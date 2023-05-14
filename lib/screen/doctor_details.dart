
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';


class DoctorDetails extends StatelessWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Container(
        color: AppColor.appColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  },child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  Icon(CupertinoIcons.line_horizontal_3_decrease,color: Colors.white,)
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/doctor1.jpg",height: 60,width: 60,fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Text("Dr. Doctor Name",style: GoogleFonts.inter(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),),
            SizedBox(height: 5,),
            Text("Dermatology",style: GoogleFonts.inter(
                fontSize: 13,
                color: Colors.white
            ),),

            SizedBox(height: 11,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        blurRadius: 1,
                        spreadRadius: 1
                      )
                    ],
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Icon(
                    Icons.call,color: Colors.white,size: 18,
                  ),

                ),

                SizedBox(
                  width: 15,
                ),

                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.6),
                            blurRadius: 1,
                            spreadRadius: 1
                        )
                      ],
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Icon(
                    Icons.chat,color: Colors.white,size: 18,
                  ),

                )
              ],
            ),

            SizedBox(
              height: 50,
            ),

            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(12),topRight:Radius.circular(12))
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("About Doctor",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 14
                      ),),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the",style: GoogleFonts.inter(
                        color: Colors.black,
                      fontSize: 11
                    ),),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text("Reviews",style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14
                        ),),

                        Icon(Icons.star,color: Colors.yellow,size: 18,),
                        Text(" 4.9 ",style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),),

                        Text("(124) ",style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.7)
                        ),),

                        Spacer(),

                        Text("See all",style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: AppColor.appColor,
                            fontSize: 14
                        ),),
                      ],
                    ),

                    SizedBox(height: 30,),

                    SizedBox(
                      height: 120,
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                            child: Container(
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: AppColor.cardBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 2,
                                    spreadRadius: 2
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 17,vertical: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset("assets/doctor2.jpg",
                                            height: 35,width: 35,fit: BoxFit.cover,),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Dr. Doctor Name",style: GoogleFonts.inter(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 11
                                            ),),
                                            Text("1 day ago",style: GoogleFonts.inter(

                                                fontSize: 9
                                            ),)
                                          ],
                                        ),
                                        Spacer(),
                                        Icon(Icons.star,color: Colors.yellow,size: 12,),
                                        Text(" 4.9 ",style: GoogleFonts.inter(
                                            fontSize: 10,
                                            color: Colors.black.withOpacity(0.7)
                                        ),),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Flexible(
                                      child: Text("Lorem ipsum is a placeholder text commonly used to demonstrate the",style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontSize: 9,
                                        fontWeight: FontWeight.w500
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),


                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Locations",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 14
                      ),),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: AppColor.appColor.withOpacity(0.3)
                            ),
                            child: Icon(Icons.location_on,color: AppColor.appColor,size: 30,),
                          ),
                          SizedBox(
                            width: 20,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("New York, Mediacl Center",style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 14
                              ),),
                              Text("Address line of medical center",style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 10
                              ),)
                            ],
                          )

                        ],
                      ),
                    ),


                    Spacer(),

                    Divider(
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Consaution Price",style: GoogleFonts.inter(
                                  fontSize: 11,
                                  fontWeight:FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6)
                                ),),
                                Text("\$100",style: GoogleFonts.inter(
                                    fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 15,right: 15),
                              height:51,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColor.appColor
                              ),
                              child: Center(
                                child: Text("Book Appointment",style: GoogleFonts.inter(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600
                                ),),
                              ),
                            )

                          ],
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    ));
  }
}


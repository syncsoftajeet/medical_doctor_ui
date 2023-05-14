
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';

class UpcommingScreen extends StatelessWidget {
  const UpcommingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("About Doctor",style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.black
        ),),
        SizedBox(
          height: 10,
        ),

        ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 2
                      )
                    ],
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Dr. Doctor Name",style: GoogleFonts.inter(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600
                        ),),
                        subtitle: Text("Dermatology",style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),

                        ),),
                        trailing: CircleAvatar(
                          radius: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset("assets/doctor1.jpg",fit: BoxFit.cover,),
                          ),
                        ),
                      ),

                      Divider(),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.calendar_month,color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text("12/03/2023",style: GoogleFonts.inter(
                                  fontSize: 10,color: Colors.black.withOpacity(0.4)
                                ),)
                              ],
                            ),

                            Row(
                              children: [
                                Icon(Icons.alarm,color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text("10:30 AM",style: GoogleFonts.inter(
                                    fontSize: 10,color: Colors.black.withOpacity(0.4)
                                ),)
                              ],
                            ),



                            Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Text("Confirmed",style: GoogleFonts.inter(
                                    fontSize: 10,color: Colors.black.withOpacity(0.4)
                                ),)
                              ],
                            )

                          ],
                        ),
                      ),

                      SizedBox(height: 7,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Container(
                            width: 140,
                            height: 42,
                            decoration: BoxDecoration(
                              color: AppColor.cardBackground,
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text("Cancel",style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),),
                            ),
                          ),

                          Container(
                            width: 140,
                            height: 42,
                            decoration: BoxDecoration(
                                color: AppColor.appColor,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Center(
                              child: Text("Reschedule",style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                color: Colors.white
                              ),),
                            ),
                          )

                        ],
                      ),

                      SizedBox(height: 8,),

                    ],
                  ),
                ),
              );
        })

      ],
    );
  }
}

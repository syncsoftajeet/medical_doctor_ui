import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';
import 'package:medical_doctor_ui/screen/upcoming_screen.dart';


class ScheduleScreen extends StatefulWidget {
 const ScheduleScreen({Key? key}) : super(key: key);


  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  static const List<Widget> tablist = <Widget>[
    UpcommingScreen(),
    Text("Completeed"),
    Text("cancelled")
  ];

  int selectd_tab = 0;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Schedule",style: GoogleFonts.inter(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black
            ),),

            SizedBox(height: 25,),

            Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.cardBackground,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 2,
                    blurRadius: 2
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                    setState(() {
                      selectd_tab = 0;
                    });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                          color: selectd_tab==0?AppColor.appColor : null,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Upcoming",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: selectd_tab==0?Colors.white : Colors.black.withOpacity(0.7),
                        fontSize: 13,
                      ),),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        selectd_tab = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                          color: selectd_tab==1?AppColor.appColor : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Completed",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: selectd_tab==1?Colors.white : Colors.black.withOpacity(0.7),
                        fontSize: 13,
                      ),),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      setState(() {
                        selectd_tab = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 25),
                      decoration: BoxDecoration(
                          color:   selectd_tab==2?AppColor.appColor : null,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Cancelled",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: selectd_tab==2?Colors.white : Colors.black.withOpacity(0.7),
                        fontSize: 14,
                      ),),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            tablist[selectd_tab]

          ],
        ),
      ),
    ));
  }
}

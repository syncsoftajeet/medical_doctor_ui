import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_doctor_ui/app_color.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Messages",style: GoogleFonts.inter(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black
              ),),

              SizedBox(height: 25,),

              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.cardBackground,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 3,
                      blurRadius: 2
                    )
                  ]
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Here",
                      prefixIcon: Icon(Icons.search)
                    ),
                    
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Text("Active Now",style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),
              SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 65,
                child: ListView.builder(

                  physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                    child: Stack(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 1,
                                  spreadRadius: 1
                                )
                              ]
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset("assets/doctor3.jpg",fit: BoxFit.cover,),
                            ),
                          ),
                          Visibility(
                            visible: index%2==0?true : false,
                            child: Positioned(
                              right: 0,
                              top: 3,
                              child: Container(
                                height: 14,
                                width: 14,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green
                                ),
                              ),
                            ),
                          )

                        ],
                    ),
                  );
                }),
              ),


              SizedBox(
                height: 20,
              ),

              Text("Recent Chat",style: GoogleFonts.inter(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),

              SizedBox(
                height: 10,
              ),

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return ListTile(
                      // visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    onTap: (){},
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/doctor2.jpg"),
                    ),
                    title: Text("Dr Doctor Name",style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text("Hello, Doctor are you there?",style: GoogleFonts.inter(
                      color: Colors.black38,
                      fontSize: 13
                    ),),
                    trailing: Text("12:30",style: GoogleFonts.roboto(
                      fontSize: 11,
                      color: Colors.black38
                    ),),
                  );
                }),
              )


            ],
          ),
        ),


      ),
    );
  }
}


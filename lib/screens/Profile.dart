import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 210,
              color: Color(0xff9E9E9E),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        new SvgPicture.asset('assets/ic_back.svg',height: 30,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        )
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Text("Avenger",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 10,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("9876543210",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 20),),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: new SvgPicture.asset('assets/ic_profile_user.svg',height: 30,)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                child: Column(
                  children: [
                    ListTile(
                      leading: new SvgPicture.asset('assets/ic_profile_user.svg',height: 30,),
                      title: Text("Bank Account",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("Your added bank account details",style: TextStyle(color: Colors.grey),),
                      trailing: Text(">",style: TextStyle(color: Colors.grey,fontSize: 25),),
                    ),
                    
                    ListTile(
                      leading: new SvgPicture.asset('assets/ic_creditreport.svg',height: 30,),
                      title: Text("Credit Report",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("Check your credit report for free!",style: TextStyle(color: Colors.grey),),
                      trailing: Text(">",style: TextStyle(color: Colors.grey,fontSize: 25),),
                    ),
                    ListTile(
                      leading: new SvgPicture.asset('assets/ic_userkyc.svg',height: 30,),
                      title: Text("User KYC",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("Kyc Documents",style: TextStyle(color: Colors.grey),),
                      trailing: Text(">",style: TextStyle(color: Colors.grey,fontSize: 25),),
                    ),
                    ListTile(
                      leading: new SvgPicture.asset('assets/ic_profile_history.svg',height: 30,),
                      title: Text("History",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("Previous Loans",style: TextStyle(color: Colors.grey),),
                      trailing: Text(">",style: TextStyle(color: Colors.grey,fontSize: 25),),
                    ),
                    ListTile(
                      leading: new SvgPicture.asset('assets/ic_profile_rateapp.svg',height: 30,),
                      title: Text("Rate App",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("Write a review",style: TextStyle(color: Colors.grey),),
                      trailing: Text(">",style: TextStyle(color: Colors.grey,fontSize: 25),),
                    ),
                    ListTile(
                      leading: new SvgPicture.asset('assets/ic_profile_settings.svg',height: 30,),
                      title: Text("Settings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("App settings and about information",style: TextStyle(color: Colors.grey),),
                      trailing: Text(">",style: TextStyle(color: Colors.grey,fontSize: 25),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
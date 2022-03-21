import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';
class ViewContact extends StatefulWidget {
  var mydata;
  ViewContact(this.mydata);
  @override
  _ViewContactState createState() => _ViewContactState(this.mydata);

}

class _ViewContactState extends State<ViewContact> {
var mydata;
  _ViewContactState(this.mydata);
  File _image;
String url;

  Future getImage() async {
    var gimage = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = gimage;
      
    });
  }
  void delete(String title){
  FirebaseDatabase.instance.reference().child("contact").child(title).remove();
  }
  
	TextEditingController name = TextEditingController();
	TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();
 

  void save(){
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
		    padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
		    child: ListView(
			    children: <Widget>[
            GestureDetector(
                          child: Container(
              width: 140.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        
                        image:_image==null? AssetImage("assets/lco.png"): FileImage(_image))),
              ),
              onTap: ()=>getImage(),
            ),

				    // Second Element
				    Padding(
					    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
					    child: TextField(
						    controller: name,
						 
						    onChanged: (value) {
				
						    	
						    },
						    decoration: InputDecoration(
							    labelText: 'Name',
							   
							    border: OutlineInputBorder(
								    borderRadius: BorderRadius.circular(5.0)
							    )
						    ),
					    ),
				    ),

				    // Third Element
				    Padding(
					    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
					    child: TextField(
						    controller: phone,
						   
						    onChanged: (value) {
				
							    
						    },
						    decoration: InputDecoration(
								    labelText: 'Phone',
								    
								    border: OutlineInputBorder(
										    borderRadius: BorderRadius.circular(5.0)
								    )
						    ),
					    ),
				    ),
             Padding(
					    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
					    child: TextField(
						    controller: email,
						   
						    onChanged: (value) {
				
							    
						    },
						    decoration: InputDecoration(
								    labelText: 'Email',
								    
								    border: OutlineInputBorder(
										    borderRadius: BorderRadius.circular(5.0)
								    )
						    ),
					    ),
				    ),
            Padding(
					    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
					    child: TextField(
						    controller: address,
						   
						    onChanged: (value) {
				
							    
						    },
						    decoration: InputDecoration(
								    labelText: 'Address',
								    
								    border: OutlineInputBorder(
										    borderRadius: BorderRadius.circular(5.0)
								    )
						    ),
					    ),
				    ),


				    // Fourth Element
				    Padding(
					    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
					    child: Row(
						    children: <Widget>[
						    	Expanded(
								    child: RaisedButton(
									    color: Theme.of(context).primaryColorDark,
									    textColor: Theme.of(context).primaryColorLight,
									    child: Text(
										    'Save',
										    textScaleFactor: 1.5,
									    ),
									    onPressed: () {
									        

									    },
								    ),
							    ),
                 
							    Container(width: 5.0,),

							    Expanded(
								    child: RaisedButton(
									    color: Theme.of(context).primaryColorDark,
									    textColor: Theme.of(context).primaryColorLight,
									    child: Text(
										    'Delete',
										    textScaleFactor: 1.5,
									    ),
									    onPressed: () {
										    
									    },
								    ),
							    ),
                  

						    ],
                
					    ),
              
				    ),
         Row(
           children: <Widget>[
             
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 40,
            backgroundColor: Colors.green,
                      child: Icon(Icons.call),
                    ),
              ),

                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: CircleAvatar(
                       radius: 40,
            backgroundColor: Colors.blue,
                      child: Icon(Icons.message),
                  ),
                   ),
                   Padding(
                     
                     padding: const EdgeInsets.all(20.0),
                     child: CircleAvatar(
                       radius: 40,
            backgroundColor: Colors.red,
                      child: Icon(Icons.mail),
                  ),
                   ),
           ],
         )

			    ],
		    ),
	    ),

    );
  }
}
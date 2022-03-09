import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:
           Stack(
             alignment: AlignmentDirectional.center,
            children: <Widget>[
              ClipPath(
                clipper: ClipHome(),
              //  height: double.infinity,
                //width: double.infinity,
                child: Container(
                  color: Colors.red,
                ),
                ),
                 Column(
                    children: <Widget>[
                      Container(
                        height: 300,
                        width: double.infinity,
                      )
                      ,
                      ClipOval(child:
              Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/Akshay.jpg", 
                      fit: BoxFit.fill,
                      ),
                      )
                      ),
                    
                  Text(
                    "Akshay Madan", style: TextStyle(fontSize: 30), 
                  ),
                  Text("Flutter Developer",style: TextStyle(fontSize: 20),)
                  ],
                 ),
                Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                       Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '12',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Projects',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(55.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      '354',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Followers',
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '40',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Repository',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              )
                              
                      ],
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: RaisedButton(
                        child: Text("Follow"
                        ,),
                        onPressed: (){},
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
                 
            ]
            
           )
    );
  }
}
class ClipHome extends CustomClipper<Path>{
Path getClip(Size size){
  var path = Path();
  path.lineTo(0.0, 0.0);
  path.lineTo(0.0, 600.0);
  path.lineTo(size.width, 200.0);
  path.lineTo(size.width,0.0);
  return path;
}
bool shouldReclip(ClipHome oldClipper){ 
  return oldClipper != this;
}
}
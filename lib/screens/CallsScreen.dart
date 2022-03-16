import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: ListView(
                  children: <Widget>[
                    ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Akshay Madan",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Tushar Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 9:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Samansh Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 10:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Om Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Vikas Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Manish Lco",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                 Divider(
            height: 10.0,
          ),
                 ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Sagar Kumar",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                ListTile(
                  leading: 
                   
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/91.jpg"),
                      ),
                     
                  title: Text("Shikha raj",style: TextStyle(fontWeight:FontWeight.bold ),),
                  subtitle: Text("Today, 8:30 AM"),
                  trailing: Icon(Icons.call,color: Theme.of(context).accentColor,),
                ),
                  ],
                ),
                
              );
  }
}
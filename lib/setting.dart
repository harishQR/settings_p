import 'package:flutter/material.dart';
import 'package:test_one/source.dart';
class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  List img = [
    "asset/set6.jpg",
    "asset/set2.jpg",
    "asset/set3.png",
  ];
  List txt = [
    "Appearance",
    "Privacy",
    "Dark Mode",
  ];
  List txtsub = [
    "Make Ziar App yours",
    "Lock Ziar App to improve your privacy",
    "Automatic",
  ];
  List img2 = [
    "asset/signout2.png",
    "asset/change.png",
  ];
  List txt2 = [
    "Sign out",
    "Change email",
  ];
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Image.asset("asset/boy2.png",fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text("Harish \n Ragav",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 245,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 240,
                        child: ListView.builder(itemCount:3,itemBuilder : (BuildContext context,int index){
                          return Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  width: 44,
                                  height: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),

                                      child: Image.asset(img[index],fit: BoxFit.cover,)),
                                ),
                                title: Text(txt[index],style: TextStyle(color: a,fontWeight: FontWeight.bold),),
                                subtitle: Text(txtsub[index],style: TextStyle(color: Colors.grey),),
                                trailing: index == 2 ? Switch(value: isSwitch, onChanged: (bool value){
                                  setState(() {
                                    isSwitch = value;
                                  });
                                }): GestureDetector(
                                    onTap: (){},
                                    child: Container(
                                        width:24,
                                        height:24,
                                        child: Image.asset("asset/arrow_f.png",))),

                              ),
                              if (index < 2) Divider(thickness: 1,color: Colors.grey.shade300,),
                            ],
                          );

                          }
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: b,
                  ),
               child: Center(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: Container(
                           width: 54,
                             height: 54,
                             decoration: BoxDecoration(
                             ),
                             child: Image.asset("asset/set1.jpg",fit: BoxFit.cover,)),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 6.0,top: 6.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("About",style: TextStyle(fontWeight: FontWeight.bold),),
                             Text("Learn more about Ziar'app",style: TextStyle(color: Colors.grey),),
                           ],
                         ),),
                      Padding(
                        padding: const EdgeInsets.only(left: 110.0),
                        child: Container(
                            height: 24,
                            width: 24,
                            child: Image.asset("asset/arrow_f.png",width: 34,height: 34,)),
                      ),
                     ],
                   ),
                 ),
               ),
                ),
              ),
              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: b,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                width: 54,
                                height: 54,
                                decoration: BoxDecoration(
                                ),
                                child: Image.asset("asset/set5.jpg",fit: BoxFit.cover,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0,top: 6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Send Feedback",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("Let us Know how we can make Ziar'app",style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Container(
                                height: 24,
                                width: 24,
                                child: Image.asset("asset/arrow_f.png",width: 34,height: 34,)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

             SizedBox(height: 5,),
             Padding(
               padding: const EdgeInsets.only(left: 8.0),
               child: Row(
               children: [
                 Text("Account",style: TextStyle(fontWeight: FontWeight.bold,color: a,fontSize: 34),),
               ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView.builder(itemCount:2,itemBuilder : (BuildContext context,int index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all( 8.0),
                          child: ListTile(
                            leading: Container(
                              width: 44,
                              height: 44,
                              child: Image.asset(img2[index],fit: BoxFit.cover,),
                            ),
                            title: Text(txt2[index],style: TextStyle(color: a,fontWeight: FontWeight.bold),),
                            trailing:GestureDetector(
                                onTap: (){},
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(

                                  ),
                                  child: Image.asset("asset/arrow_f.png"),
                                )),

                          ),
                        ),
                        if (index < 1) Divider(thickness: 1,color: Colors.grey.shade300,),
                      ],
                    );

                  }
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

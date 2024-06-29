import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ChatPage extends StatefulWidget {
   ChatPage({super.key});
  String id = "mapageId";

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: <Widget> [
          IconButton(
              onPressed: (){
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 26,
              )
          )
        ],
      ),

      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height ,
            decoration: BoxDecoration(
                color: Colors.black
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  /// Titre conversation
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Column(
                       children: [
                         Text(
                             "Conversations",
                           style: TextStyle(
                             color: Colors.black.withOpacity(0.5)
                           ),
                         ),
                         Text(
                             "Liste des de conversation",
                           style: TextStyle(
                               color: Colors.black.withOpacity(0.4)
                           ),
                         ),
                       ],
                     ),
                      const SizedBox(height: 50,),
              
                    ],
                  ),

                  // conversation
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height - 180,
                    width: MediaQuery.of(context).size.width,
                     color: Colors.yellow,
                    child: ListView(
                      children: [

                        Row(
                          children: [
                            SizedBox(width: 20,),
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/images/EARTH.jpg"),
                            ),

                            SizedBox(width: 20,),

                            Expanded(
                              child: Container(

                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(15),
                                    )
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Text(
                                        maxLines: 5,
                                        "Messagedfdlfkdfjlsdkjdsdlqdsfjs",
                                        style: TextStyle(
                                            color: Colors.black
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 20,),

                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Icon(
                                      Icons.done_all
                                  ),
                                  SizedBox(width: 5,),
                                  Text("12:40"),
                                ],
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  child: Column(
                    children:const [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 50,
                          child: Icon(Icons.person_outline, size: 40),
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "User Name",
                        style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "User Email",
                        style: TextStyle(
                            fontFamily: "Cabin"
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "User Contact",
                        style: TextStyle(
                            fontFamily: "Cabin"
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  height: 20,
                  color: Colors.grey,
                ),

                //Manage Profile
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.person_outline),

                        const SizedBox(width: 20),

                        const Text(
                          'Manage Profile',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //My Bookings
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.calendar_month_outlined),

                        const SizedBox(width: 20),

                        const Text(
                          'My Bookings',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Policy
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.file_copy),

                        const SizedBox(width: 20),

                        const Text(
                          'Policy',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Notification Setting
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.notifications_none_outlined),

                        const SizedBox(width: 20),

                        const Text(
                          'Notification Setting',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Share Feedback
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.star_border_outlined),

                        const SizedBox(width: 20),

                        const Text(
                          'Share Feedback',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //FAQs
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('Assets/Icons/FAQ.png'),

                        const SizedBox(width: 20),

                        const Text(
                          'FAQs',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Call us
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.call_outlined),

                        const SizedBox(width: 20),

                        const Text(
                          'Call us',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Share the app
                Container(
                  height: 50,
                  width: 500,
                  decoration:const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(

                          )
                      ),
                      shape: BoxShape.rectangle
                  ),
                  child: Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.share_outlined),

                        const SizedBox(width: 20),

                        const Text(
                          'Share the app',
                          style: TextStyle(
                            fontFamily: "Cabin",
                            fontSize: 16,
                          ),
                        ),

                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: (){

                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]
          ),


        ),
      ),
    );
  }
}

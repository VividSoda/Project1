import 'package:flutter/material.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({Key? key}) : super(key: key);

  @override
  State<ManagePage> createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  bool _isEnabled = false;
  String title = "MyTitle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Manage profile'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Column(
              children: [

                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Cabin"
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Row(
                    children: [
                      Expanded(
                        child: !_isEnabled?
                        TextFormField(
                          initialValue: "User Name",
                          enabled: _isEnabled,
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                          ),
                        ):
                        TextFormField(
                          initialValue: "User Name",
                          textInputAction: TextInputAction.done,
                          enabled: _isEnabled,
                          onFieldSubmitted: (value) {
                            setState(() => {
                              _isEnabled = false,
                              title = value
                            });
                          },
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                          ),
                        ),
                      ),

                      IconButton(
                          onPressed: (){
                            setState(() {
                              _isEnabled = true;
                            });
                          },
                          icon: Icon(color: Colors.blue,
                              Icons.edit_outlined
                          )
                      )
                    ]
                ),

                const SizedBox(height: 20),

                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Email Id",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Cabin"
                    ),
                  ),
                ),

                const SizedBox(height: 5),


                Row(
                    children: [
                      Expanded(
                        child: !_isEnabled?
                        TextFormField(
                          initialValue: "User Email",
                          enabled: _isEnabled,
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                          ),
                        ):
                        TextFormField(
                          initialValue: "User Email",
                          textInputAction: TextInputAction.done,
                          enabled: _isEnabled,
                          onFieldSubmitted: (value) {
                            setState(() => {
                              _isEnabled = false,
                              title = value
                            });
                          },
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                          ),
                        ),
                      ),

                      IconButton(
                          onPressed: (){
                            setState(() {
                              _isEnabled = true;
                            });
                          },
                          icon: Icon(color: Colors.blue,
                              Icons.edit_outlined
                          )
                      )
                    ]
                ),

                /*TextFormField(
                  initialValue: "User Email",
                  enabled: _isEnabled,
                  decoration: InputDecoration(
                      border:const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                      ),


                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              _isEnabled = true;
                            });
                          },
                          icon: Icon(color: Colors.blue,
                              Icons.create_outlined
                          )
                      )
                  ),
                ),*/

                const SizedBox(height: 20),

                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Cabin"
                    ),
                  ),
                ),

                const SizedBox(height: 5),


                Row(
                    children: [
                      Expanded(
                        child: !_isEnabled?
                        TextFormField(
                          initialValue: "User Name",
                          enabled: _isEnabled,
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                          ),
                        ):
                        TextFormField(
                          initialValue: "User Contact",
                          textInputAction: TextInputAction.done,
                          enabled: _isEnabled,
                          onFieldSubmitted: (value) {
                            setState(() => {
                              _isEnabled = false,
                              title = value
                            });
                          },
                          decoration:const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)
                                )
                            ),
                          ),
                        ),
                      ),

                      IconButton(
                          onPressed: (){
                            setState(() {
                              _isEnabled = true;
                            });
                          },
                          icon: Icon(color: Colors.blue,
                              Icons.edit_outlined
                          )
                      )
                    ]
                ),

                /* TextFormField(
                  decoration: InputDecoration(
                      border:const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          )
                      ),

                      hintText: "User Contact",

                      suffixIcon: IconButton(
                          onPressed: (){

                          },
                          icon: Icon(color: Colors.blue,
                              Icons.create_outlined
                          )
                      )
                  ),
                ),*/

                const SizedBox(height: 30),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize:const Size(350, 40)
                    ),
                    onPressed: (){

                    },
                    child:const Text(
                      "SAVE",
                      style: TextStyle(
                          fontFamily: "Cabin"
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

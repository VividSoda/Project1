import 'package:firstproject/Pages/SuccessfulPage.dart';
import 'package:firstproject/Pages/UploadDrivingPage.dart';
import 'package:firstproject/Pages/UploadIdentityPage.dart';
import 'package:flutter/material.dart';

class UploadYourDocuments extends StatefulWidget {
  const UploadYourDocuments({Key? key}) : super(key: key);

  @override
  State<UploadYourDocuments> createState() => _UploadYourDocumentsState();
}

class _UploadYourDocumentsState extends State<UploadYourDocuments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFFECECEC),
        title: const Text('Upload your Documents'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                      'You are requested to upload your real documents so that we will be able to verify your identity and give good service.',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Cabin',
                        color: Colors.grey,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Row(
                      children: [
                        Text(
                          'Upload your Identity',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Cabin',
                              color: Colors.grey),
                        ),
                        
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UploadIdentity())),
                                child: Text('Upload',style: TextStyle( color: Color(0xFF4554DF),),)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Text(
                            'Upload Driving License',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Cabin',
                                color: Colors.grey),
                          ),

                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                  onPressed: (){
                                      Navigator.push(context, 
                                        MaterialPageRoute(builder: (context) => UploadDrivingLicense())
                                      );
                                  },
                                  child: Text('Upload',style: TextStyle( color: Color(0xFF4554DF),),)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuccessPage())),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF4554DF),
                    ),
                    child: Center(
                      child: Text(
                        'CONTINUE',
                        style: TextStyle(
                            fontFamily: 'Cabin', fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

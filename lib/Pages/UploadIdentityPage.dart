import 'package:firstproject/Pages/UploadDocumentPage.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadIdentity extends StatefulWidget {
  const UploadIdentity({Key? key}) : super(key: key);

  @override
  State<UploadIdentity> createState() => _UploadIdentityState();
}

class _UploadIdentityState extends State<UploadIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECECEC),
        foregroundColor: Colors.black,
        title: const Text('Upload Identity'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DottedBorder(
                  child: Container(
                    height: 400,
                    width: 400,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset('Assets/Icons/documents.png')),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(backgroundColor:  Color(0xFF4554DF),
                            child: IconButton(icon: const Icon(Icons.add),
                              onPressed:(){

                              }
                              ,),
                          ),)


                      ],
                    ),
                  ),
                  borderType: BorderType.Rect,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Note',
                  style: TextStyle(
                      fontFamily: 'Cabin',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Please upload your real and clear documents',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 18, fontFamily: 'Cabin'),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UploadYourDocuments())
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF4554DF),
                    ),
                    child: Center(
                      child: Text(
                        'ADD',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Cabin',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
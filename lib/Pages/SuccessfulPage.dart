import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children:const [
              CircleAvatar(
                child: ImageIcon(
                  AssetImage('Assets/Icons/tick.png'),
                ),
              ),
              SizedBox(height: 20,),

              Text(
                'Booked Successfully',
                style: TextStyle(
                    fontSize: 24, fontFamily: 'Cabin', color: Color(0xFF4554DF)),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Congratulation you have booked audi AB ALL successfully, go to my booking for more details.',
                  style: TextStyle(fontFamily: 'Cabin', fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              TextButton(
                  onPressed: null,
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4554DF)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

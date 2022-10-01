import 'package:firstproject/Pages/PaymentPage.dart';
import 'package:firstproject/Pages/UploadDocumentPage.dart';
import 'package:flutter/material.dart';

class SelectPaymentMethod extends StatefulWidget {
  const SelectPaymentMethod({Key? key}) : super(key: key);

  @override
  State<SelectPaymentMethod> createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECECEC),
        foregroundColor: Colors.black,
        title:const Text('Select Payment Method'), //appbar content
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  'Payment Method',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Cabin',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),

                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage())),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.paypal,
                          color: Color(0xFF4554DF),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Paypal',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cabin',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                /*
              IconButton(
                    icon: Icon(_isPasswordHidden
                    ? Icons.visibility
                        : Icons.visibility_off
                    ),
                  onPressed: (){
                    setState(
                        () {
                          _isPasswordHidden = !_isPasswordHidden;
                        }
                    );
              */
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(

                    onPressed: () => {setState(() => _isVisible = !_isVisible)},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.credit_card, color: Color(0xFF4554DF)),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Credit card',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cabin',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage())),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10))),
                    child: Row(
                      children: [
                        Image.asset('Assets/Icons/Google.png'),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Google pay',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cabin',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(

                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage())),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10))),
                    child: Row(
                      children: [
                        Icon(
                          Icons.money,
                          color: Color(0xFF4554DF),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Cash paid',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Cabin',
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                if (_isVisible)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Credit card',
                        style: TextStyle(fontFamily: 'Cabin', fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'card Number',
                        style: TextStyle(fontFamily: 'Cabin', fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 350,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter Card Number',
                              hintStyle: TextStyle(fontFamily: 'Cabin',fontSize: 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Valid Thru',
                                style: TextStyle(
                                    fontFamily: 'Cabin', fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Valid Thru',
                                      hintStyle: TextStyle(fontFamily: 'Cabin',fontSize: 18),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CVV',
                                style: TextStyle(
                                    fontFamily: 'Cabin', fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Enter CVV',
                                      hintStyle: TextStyle(fontFamily: 'Cabin',fontSize: 18),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                      )),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>const UploadYourDocuments())),
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
                            fontFamily: 'Cabin',
                            fontSize: 18,
                            color: Colors.white),
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
  }
}

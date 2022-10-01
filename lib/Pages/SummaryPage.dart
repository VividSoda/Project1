import 'package:firstproject/Pages/PersonalInfoPage.dart';
import 'package:firstproject/Pages/UploadIdentityPage.dart';
import 'package:flutter/material.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({Key? key}) : super(key: key);

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  DateTime _pickDate = DateTime.now();
  DateTime _returnDate = DateTime.now();
  final TextEditingController _picktxt = TextEditingController();
  final TextEditingController _returntxt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text('Summary'),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          'Assets/Photos/Car1.png',
                        ),
                      ),

                      Column(
                        children: [
                          Text(
                            'Audi AB LLL',
                            style: TextStyle(
                                fontFamily: "Cabin",
                                fontSize: 18
                            ),
                          ),

                          RichText(
                            text:const TextSpan(
                                text: "\$200 ",
                                style: TextStyle(
                                    color: Color(0xFF4554DF),
                                    fontSize: 18,
                                    fontFamily: "Cabin"
                                ),

                                children: <TextSpan> [
                                  TextSpan(
                                      text: "/ day",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "Cabin",
                                          color: Colors.black
                                      )
                                  )
                                ]
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Select Location',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Cabin"),
                    ),
                  ),

                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "Select your city location",
                        hintStyle: const TextStyle(fontFamily: "Cabin"),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                                color: Color(0xFF4554DF), Icons.location_on_rounded)),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(color: Color(0xFF4554DF), Icons.create_outlined))),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: 'Select your destination',
                        hintStyle: const TextStyle(fontFamily: "Cabin"),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(color: Color(0xFF4554DF), Icons.map)),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(color: Color(0xFF4554DF), Icons.create_outlined))),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Select Date',
                      style: TextStyle(
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _picktxt,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: "Pick up date & Time",
                        hintStyle: TextStyle(fontFamily: "Cabin"),
                        prefixIcon: IconButton(
                            onPressed: () async {},
                            icon: Icon(color: Color(0xFF4554DF), Icons.calendar_month)),
                        suffixIcon: IconButton(
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime(2030));

                              //if cancel
                              if (newDate == null) {
                                return;
                              } else {
                                setState(() => _pickDate = newDate);
                                _returntxt.text =
                                "${_pickDate.year}/${_pickDate.month}/${_pickDate.day}";
                              }
                            },
                            icon: Icon(color: Color(0xFF4554DF), Icons.create_outlined))),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _returntxt,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: "Select return date & Time",
                        hintStyle: const TextStyle(fontFamily: "Cabin"),
                        prefixIcon: IconButton(
                            onPressed: () async {},
                            icon: Icon(color: Color(0xFF4554DF), Icons.calendar_month)),
                        suffixIcon: IconButton(
                            onPressed: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime(2030));

                              //if cancel
                              if (newDate == null) {
                                return;
                              } else {
                                setState(() => _pickDate = newDate);
                                _returntxt.text =
                                "${_pickDate.year}/${_pickDate.month}/${_pickDate.day}";
                              }
                            },
                            icon: Icon(color: Color(0xFF4554DF), Icons.create_outlined))),
                  ),
                  const SizedBox(height: 20),

                  Row(children: const [
                    Text(
                      "Per Day Rent",
                      style: TextStyle(
                        fontFamily: "Cabin",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "\$***",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontFamily: "Cabin",
                          ),
                        ),
                      ),
                    )
                  ]
                  ),

                  const SizedBox(height: 5),

                  Row(children: const [
                    Text(
                      "Total Day Rent X*** ",
                      style: TextStyle(
                        fontFamily: "Cabin",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "\$****",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontFamily: "Cabin",
                          ),
                        ),
                      ),
                    )
                  ]
                  ),

                  const SizedBox(height: 5),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      color: Colors.grey,
                      height: 2,
                      width: 50,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(children: const [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                        fontFamily: "Cabin",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "\$****",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontFamily: "Cabin",
                          ),
                        ),
                      ),
                    )
                  ]
                  ),

                  const SizedBox(height: 30),

                  Container(
                    height: 50,
                  )

                ],
              ),
            ),
          )
      ),

      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF4554DF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              fixedSize: Size(350, 50)),
          onPressed: () {
            Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => PersonalInformation())
            );
          },
          child: const Text(
            'CONFIRM',
            style: TextStyle(fontFamily: "Cabin"),
          )),
    );
  }
}

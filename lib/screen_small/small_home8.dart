import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:multi_cloud/widget/botton.dart';
// import 'package:multi_cloud/const/conts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:multi_cloudv3/widget/button_color.dart';

class SmallHome8_contact_us extends StatelessWidget {
  SmallHome8_contact_us({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height*1.4,
      width: screenSize.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      // color: Colors.blue,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xff137fc2),
              Color(0xff3958d5),
              Color(0xff184b80),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 25,),
                Text("Leave your contact info and",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 15,),
                Text("Let's Discuss Business",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 30,
                        // fontWeight: FontWeight.bold,
                        letterSpacing: 1.1)),
                SizedBox(height: 15,),
                Text(
                    "We’ll contact you immediately to discuss potential business",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 18)),
                SizedBox(height: 10,),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Text(
                          "Name",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        width: 450,
                        child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            hintText: "Enter your Name",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          "Phone Number",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        width: 92,
                      ),
                      Container(
                        width: 450,
                        child: TextFormField(
                          controller: phoneController,
                          decoration: const InputDecoration(
                            hintText: "Enter a valid phone number",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide:
                              BorderSide(width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide:
                              BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text(
                          "Email",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        width: 450,
                        child: TextFormField(

                          controller: emailController,
                          decoration: const InputDecoration(
                            hintText: "Enter a valid email address",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide:
                              BorderSide(width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide:
                              BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Message",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 450,
                        child: TextFormField(
                          controller: messageController,
                          decoration: const InputDecoration(
                            hintText: "Enter your message",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(width: 1, color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(width: 1, color: Colors.white),
                            ),
                          ),
                          maxLines: 5,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '*Required';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        width: 100,
                        child: TextButton(
                          style: Btn_Submit(),
                          // shape: MaterialStateProperty.resolveWith(
                          //         (ShapeBorder) => RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(15))),
                          // overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          //       (Set<MaterialState> states) {
                          //     if (states.contains(MaterialState.hovered))
                          //       return Colors.red;
                          //     return Colors.white;
                          //   },
                          // ),

                          // primary: Colors.white,
                          // backgroundColor:
                          //     const Color.fromARGB(255, 12, 66, 101),
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(15),
                          //     ),

                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final response = await SendEmail(
                                  nameController.value.text,
                                  phoneController.value.text,
                                  emailController.value.text,
                                  messageController.value.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                response == 200
                                    ? const SnackBar(
                                    content: Text('Message Sent!'),
                                    backgroundColor: Colors.green)
                                    : const SnackBar(
                                    content: Text('Failed to send message!'),
                                    backgroundColor: Colors.red),
                              );

                              nameController.clear();
                              phoneController.clear();
                              emailController.clear();
                              messageController.clear();
                            }
                          },
                          child: Text(
                            'Submit',
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),



        ],
      ),
    );
  }

  Future SendEmail(
      String name, String phone, String email, String message) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_zfjchwr';
    const templateId = 'template_1wbd3w9';
    const userId = 'DP7R9Yu0J2SBQu2DC';
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json'
        }, //This line makes sure it works for all platforms.
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': name,
            'from_phone': phone,
            'to_email': email,
            'message': message
          }
        }));
    return response.statusCode;
  }
}

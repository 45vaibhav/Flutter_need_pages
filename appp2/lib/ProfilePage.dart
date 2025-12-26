import 'package:flutter/material.dart';
import 'data.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  Map<String, dynamic>? studentData;
  Map<String, dynamic>? courseData;
  Map<String, dynamic>? enrollmentData;

  @override
  void initState() {
    super.initState();
    _loadStudentData();
  }

  void _loadStudentData() {
    for (var course in kCourseData) {
      if (course['enrolledStudents'].isNotEmpty) {
        var enrollment = course['enrolledStudents'][0];
        setState(() {
          studentData = enrollment['student'];
          enrollmentData = enrollment;
          courseData = course;
        });
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (studentData == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    double feePaid = enrollmentData!['feePaid'];
    double totalFee = enrollmentData!['totalFee'];
    double remainingFee = enrollmentData!['totalFee']- enrollmentData!['feePaid'];
    double progress = feePaid / totalFee;
    return Scaffold(
      backgroundColor: const Color(0xfff4f6f9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 116, 219, 244), 
                    Color.fromARGB(255, 172, 153, 226), 
                    Color.fromARGB(255, 192, 227, 149), 
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 20),
                  Text(
                    "Profile & Fees",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -20),
              child: Container(
                height: 300,
                width: 430,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                       Color.fromARGB(255, 175, 152, 245), 
                      Color.fromARGB(255, 252, 253, 253),
                      Color.fromARGB(141, 154, 236, 179),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1.3,
                      color: const Color.fromARGB(255, 228, 225, 225),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/32099824/pexels-photo-32099824.jpeg?_gl=1*st0ko6*_ga*MTE2MTI3NzEzOC4xNzQzNDk4OTM5*_ga_8JE65Q40S6*czE3NjUxOTY3NTIkbzEwJGcxJHQxNzY1MTk2ODAyJGoxMCRsMCRoMA..",
                            ),
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                studentData!['name'],
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "student id:",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    "${studentData!['id']}",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(width: 15),
                          Row(
                            children: [
                              Text(
                                "Email:",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(width: 2),
                              Text(
                                " ${studentData!['email']}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 15),
                          Row(
                            children: [
                              Text(
                                "Mobile No :",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(width: 2),
                              Text(
                                " ${studentData!['phoneNumber']}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.school),
                          SizedBox(width: 15),
                          Row(
                            children: [
                              Text(
                                "Course :",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(width: 2),
                              Text(
                                " ${courseData!['title']}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(90, 50),
                        backgroundColor: Color.fromARGB(255, 169, 158, 202),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.only(left: 70, right: 70),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 27, 23, 23),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // course detials
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 66, 118, 223), // Blue
                    Color.fromARGB(255, 232, 166, 226), // Purple
               
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Course Fee Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 100,

                        decoration: BoxDecoration(
                          color: const Color.fromARGB(116, 242, 237, 237),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("total fees: "),
                              SizedBox(height: 1),
                              Text(
                                "₹${totalFee.toStringAsFixed(0)}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 100,

                        decoration: BoxDecoration(
                        color: const Color.fromARGB(116, 242, 237, 237),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("paid"),
                              SizedBox(height: 1),
                              Text(
                                "₹${feePaid.toStringAsFixed(0)}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 100,

                        decoration: BoxDecoration(
                       color: const Color.fromARGB(116, 242, 237, 237),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("remaining fees"),
                              SizedBox(height: 1),
                              Text(
                                "₹${remainingFee.toStringAsFixed(0)}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  Text("Payment Progress", style: TextStyle()),
                  SizedBox(height: 5),

                  LinearProgressIndicator(
                    value: progress,
                    color: Colors.white,
                    backgroundColor: Colors.white24,
                  ),

                  const SizedBox(height: 20),

                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(232, 152, 222, 169)
                    ),
                    child: Center(
                      child: Text(
                        "Pay :₹${remainingFee.toStringAsFixed(0)}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: const Color.fromARGB(255, 26, 25, 25)
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 18),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Text(
                "Payment History",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            // paymentInfo
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(98, 226, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10),
                      
                      ),
                   
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage("assets/image(1).png"),
                          ),
                        ),
                        SizedBox(width: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "₹10,000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1),
                                  Text("Dec 1,2024"),
                                ],
                              ),
                            ),
                            SizedBox(width: 210),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "paid",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 1),
                                Text("via UPI"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(98, 226, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage("assets/image(1).png"),
                          ),
                        ),
                        SizedBox(width: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "₹7,000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1),
                                  Text("nov 1,2024"),
                                ],
                              ),
                            ),
                            SizedBox(width: 210),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "paid",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 1),
                                Text("via UPI"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                                    color: const Color.fromARGB(98, 226, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage("assets/image(1).png"),
                          ),
                        ),
                        SizedBox(width: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "₹5,000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1),
                                  Text("Oct 1,2024"),
                                ],
                              ),
                            ),
                            SizedBox(width: 210),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "paid",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 1),
                                Text("via UPI"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(98, 226, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage("assets/image(1).png"),
                          ),
                        ),
                        SizedBox(width: 15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "₹1,000",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 1),
                                  Text("Aug 1,2024"),
                                ],
                              ),
                            ),
                            SizedBox(width: 210),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "paid",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 1),
                                Text("via UPI"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

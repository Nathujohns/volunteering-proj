
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:roadside_assistance/dialog_helper.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  TextEditingController newName = TextEditingController();
  TextEditingController newEmail = TextEditingController();
  // final settingsController = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff26178a),
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: false,
        //foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0.00,
        actions: [
          IconButton(
              onPressed: (){
                DialogHelper.showTwoBtnDialog();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                color: Colors.white),
            padding: EdgeInsets.symmetric(vertical: 50),
            child:Column(
                    children: [
                      GestureDetector(
                        onTap: () => {},
                        child:
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)
                          ),
                          child: CircleAvatar(
                            radius: 60.0,
                            // foregroundImage: NetworkImage("https://school.ebahrain.biz/"+controller.profile.value.studentResult!.image!),
                            backgroundImage: const AssetImage("assets/student.png"),
                            backgroundColor: Colors.grey[300],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("Ibtisam Ali",
                              // controller.profile.value.studentResult!.firstname!,
                          style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700
                      ),),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Class", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(width: 10,),
                          Text("class name",
                            // controller.profile.value.studentResult!.class_Name!,
                              style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),),
                          SizedBox(width: 20),
                          Text("Section", style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),),
                          SizedBox(width: 10),
                          Text("Section 4",
                            // controller.profile.value.studentResult!.section!,
                            style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: const [
                            Text("Roll Number", style: TextStyle(
                                fontSize: 20
                            ),),
                            SizedBox(width: 150),
                            Text("45632",
                                // controller.profile.value.studentResult!.rollNo!,
                                style: TextStyle(
                                fontSize: 20
                            ),)
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: const [
                            Text("Admission Number", style: TextStyle(
                                fontSize: 20
                            ),),
                            SizedBox(width: 90),
                            Text("23423242",
                                // controller.profile.value.studentResult!.admissionNo!,
                                style: TextStyle(
                                fontSize: 20
                            ),)
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Phone Number")
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "2345232"
                                  // hintText: controller.profile.value.studentResult!.mobileno
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Email")
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Ibtisamali826@gmail.com"
                                  // hintText: controller.profile.value.studentResult!.email
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Address")
                              ],
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "pass",
                                  // hintText: controller.profile.value.studentResult!.currentAddress
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Container(
                                  //  padding: EdgeInsets.symmetric(horizontal: 10),
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 15,
                                        spreadRadius: 1
                                    )],
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Gender"),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.person,size:55,)
                                          // Image.asset (controller.profile.value.studentResult!.image!,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 50),
                                Container(
                                  //padding: EdgeInsets.symmetric(horizontal: 10),
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 15,
                                        spreadRadius: 1
                                    )],
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text("Blood Group"),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.bloodtype,color: Colors.red, size: 50,),
                                          Text("A+"
                                          // controller.profile.value.studentResult!.bloodGroup!
    )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Religion", style: TextStyle(
                                    fontSize: 20
                                ),),
                                SizedBox(width: 200),
                                Text("",
                                  // controller.profile.value.studentResult!.religion!,
                                  style: TextStyle(
                                    fontSize: 20
                                ),)
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      height: 1.0,
                                      color: Colors.grey,
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Parent and Guardian details", style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700
                                ),)
                              ],
                            ),
                            // SizedBox(height: 10),
                            // ListView(
                            //   children: [
                            //     ListView.builder(
                            //         itemCount: details.length,
                            //         itemBuilder: (BuildContext ctx, int index){
                            //           return Container(
                            //             child: Text(details[index]. name),
                            //           );
                            //         }
                            //     ),
                            //   ],
                            // ),
                            const SizedBox(height: 10),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                )],
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                      color: Colors.black,
                                      // Image.network("student_images/1.jpg");
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text("",
                                              // controller.profile.value.studentResult!.fatherName!,
                                              style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18
                                          ),),
                                          const SizedBox(height: 10),
                                          Row(
                                            children: const [
                                              Icon(Icons.link),
                                              SizedBox(width: 10),
                                              Text("Father"),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: const [
                                              Icon(Icons.phone),
                                              SizedBox(width: 10),
                                              Text("34323232"
                                                // controller.profile.value.studentResult!.fatherPhone!
                                                  ),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: const [
                                              Icon(Icons.mail),
                                              SizedBox(width: 10),
                                              Text("asdc@gmail.com",
                                                  // controller.profile.value.studentResult!.email!
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: const [
                                              Icon(Icons.work),
                                              SizedBox(width: 10),
                                              Text("builder")
                                              // Text(controller.profile.value.studentResult!.fatherOccupation!),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                )],
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  // Expanded(
                                      // child: Column(
                                      //   crossAxisAlignment: CrossAxisAlignment.start,
                                      //   children: <Widget>[
                                      //     Text(
                                      //         controller.profile.value.studentResult!.motherName!,
                                      //         style: TextStyle(
                                      //         fontWeight: FontWeight.w700,
                                      //         fontSize: 18
                                      //     ),),
                                      //     SizedBox(height: 10),
                                      //     Row(
                                      //       children: [
                                      //         Icon(Icons.link),
                                      //         SizedBox(width: 10),
                                      //         Text("Mother"),
                                      //       ],
                                      //     ),
                                      //     SizedBox(height: 5),
                                      //     Row(
                                      //       children: [
                                      //         Icon(Icons.phone),
                                      //         SizedBox(width: 10),
                                      //         Text(controller.profile.value.studentResult!.motherPhone!),
                                      //       ],
                                      //     ),
                                      //     SizedBox(height: 5),
                                      //     Row(
                                      //       children: [
                                      //         Icon(Icons.mail),
                                      //         SizedBox(width: 10),
                                      //         Text(controller.profile.value.studentResult!.guardianEmail!),
                                      //       ],
                                      //     ),
                                      //     SizedBox(height: 5),
                                      //     Row(
                                      //       children: [
                                      //         Icon(Icons.work),
                                      //         SizedBox(width: 10),
                                      //         Text(controller.profile.value.studentResult!.motherOccupation!),
                                      //       ],
                                      //     ),
                                      //
                                      //   ],
                                      // )),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                                boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    blurRadius: 15,
                                    spreadRadius: 1
                                )],
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black
                                      // image: DecorationImage(
                                      //     image: AssetImage('assests/images/barbeque.png')
                                      // )
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          const Text("Guardian name", style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18
                                          ),),
                                          SizedBox(height: 10),
                                          Row(
                                            children: const [
                                              // ImageIcon(
                                              //   AssetImage("assets/link.png"),
                                              //   color: Colors.red,
                                              //   size: 24,
                                              //),
                                              Icon(Icons.link),
                                              SizedBox(width: 10),
                                              Text("Guardian"),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: const [
                                              Icon(Icons.phone),
                                              SizedBox(width: 10),
                                              Text("12345678"),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: const [
                                              Icon(Icons.mail),
                                              SizedBox(width: 10),
                                              Text("Email"),
                                            ],
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: const [
                                              Icon(Icons.work),
                                              SizedBox(width: 10),
                                              Text("Occupation"),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
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





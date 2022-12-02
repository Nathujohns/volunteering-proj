import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:keyboard_actions/keyboard_actions_config.dart';
import 'package:roadside_assistance/controller/signIn_controller.dart';
import 'package:get/get.dart';
// import 'package:keyboard_actions/keyboard_actions.dart';
// import 'package:littleswanpreschool/Controller/login_controller.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final controller = LoginController();

  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText11 = FocusNode();

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          focusNode: _nodeText1,
        ),
        KeyboardActionsItem(
          focusNode: _nodeText11,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF54c6da),
      body: SafeArea(
        child: KeyboardActions(
          config: _buildConfig(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child:Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0.0),
                    child: ClayContainer(
                      width: double.infinity,
                      borderRadius: 10,
                      surfaceColor: const Color(0xFFFFFFFF),
                      depth:10,
                      spread: 5,
                      parentColor:const Color(0xff3aa4b8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 16,),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 60,),
                            height: 150,
                            child: const Image(
                              image: AssetImage('assets/logo.png'),
                            ),
                          ),
                          // SizedBox(height: 18,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            margin:  EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Color(0xff86b2dc),
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 18,),
                                Text('Login',
                                  style: Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff26178a)),),
                                SizedBox(height: 18,),
                                Container(
                                  // padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0.0),
                                  child: Form(
                                    key: controller.loginFormKey,
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          focusNode: _nodeText1,
                                          keyboardType: TextInputType.name,
                                          // initialValue: 'Input text',
                                          decoration: const InputDecoration(
                                            labelText: 'User name',
                                            // errorText: 'Error message',
                                            border: OutlineInputBorder(),
                                            suffixIcon: Icon(
                                              Icons.account_circle,
                                            ),
                                          ),
                                          controller: controller.usernameController,
                                          validator: (val){
                                            if(val!.isEmpty) return "Username Cannot be Empty";
                                            else return null;
                                          },
                                        ),
                                        SizedBox(height: 16,),
                                        TextFormField(
                                          focusNode: _nodeText11,
                                          keyboardType: TextInputType.name,
                                          // initialValue: 'Input text',
                                          decoration: const InputDecoration(
                                            labelText: 'Password',
                                            // errorText: 'Error message',
                                            border: OutlineInputBorder(),
                                            suffixIcon: Icon(
                                              Icons.lock,
                                            ),
                                          ),
                                          controller: controller.passwordController,
                                          validator: (val){
                                            if(val!.isEmpty) return "Password Cannot be Empty";
                                            else return null;
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16,),
                                // RaisedGradientButton(
                                //   onPressed: () {
                                //     // Get.to(BottomBarIndex());
                                //     print('eeeeeee');
                                //   },
                                //   child: Text(
                                //     'Login',

                                //   ),
                                //   gradient: LinearGradient(
                                //     colors: <Color>[Color(0xff26178a), Color(0xff26178a)],
                                //   ),
                                // ),
                                GestureDetector(
                                    onTap: (){
                                      if(controller.loginFormKey.currentState!.validate()){
                                        controller.Login();
                                      }
                                    },
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              'Login',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            alignment: Alignment.center,
                                            height: 50,
                                            decoration: const BoxDecoration(
                                              color: Color(0xff26178a),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xFF9E9E9E),
                                                  offset: Offset(0.0, 1.5),
                                                  blurRadius: 1.5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  // ClayContainer(
                                  //   height: 50,
                                  //   borderRadius:10,
                                  //   depth: 2,
                                  //   spread: 0,
                                  //   // emboss: true,
                                  //   surfaceColor: Color(0xff26178a),
                                  //   parentColor:  Color(0x81231A51),
                                  // ),
                                ),
                                SizedBox(height: 24,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                )
            ),
          ),
        ),
      ),
    );
  }
}
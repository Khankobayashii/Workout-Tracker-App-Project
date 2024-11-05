import 'package:flutter/material.dart';
import 'package:workout_fitness/view/menu/menu_view.dart';
import '../../Components/button.dart';
import '../../Components/colors.dart';
import '../../Components/textfield.dart';
import '../../JSON/users.dart';
// import '../../view/login/profile.dart';
import '../../view/login/signup.dart';

import '../../SQLite/database_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 
  final usrName = TextEditingController();
  final password = TextEditingController();

  bool isChecked = false;
  bool isLoginTrue = false;

  final db = DatabaseHelper();
  
  login()async{
    // Users? usrDetails = await db.getUser(usrName.text);
    var res = await db.authenticate(Users(usrName: usrName.text, password: password.text));
    if(res == true){
      
      if(!mounted)return;
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenuView()));
    }else{
      
      setState(() {
        isLoginTrue = true;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                

                const Text("LOGIN",style: TextStyle(color: primaryColor,fontSize: 40),),
                Image.asset("assets/img/background.png"),
                InputField(hint: "Username", icon: Icons.account_circle, controller: usrName),
                InputField(hint: "Password", icon: Icons.lock, controller: password,passwordInvisible: true),

                ListTile(
                  horizontalTitleGap: 2,
                  title: const Text("Remember me"),
                  leading: Checkbox(
                    activeColor: primaryColor,
                    value: isChecked,
                    onChanged: (value){
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                  ),
                ),

                
                Button(label: "LOGIN", press: (){
                login();

                }),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                        },
                        child: const Text("SIGN UP"))
                  ],
                ),

                
                 isLoginTrue? Text("Username or password is incorrect",style: TextStyle(color: Colors.red.shade900),):const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  get image => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// welcome text
              SizedBox(
                height: 55,
              ),
              Container(
                child: Text(
                  'Welcome !',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),

              /// icon of group n play
              SizedBox(
                height: 20,
              ),
              Container(
                height: 10,
                ///child:Image.asset('assests/login.jpg'),
              ),

              SizedBox(
                height: 25,
              ),

              /// text field of email
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.mail_outline,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: 'Email Address',
                      )),
                ),
              ),

              /// text field of password
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock_outline,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText: 'Password',
                      )),
                ),
              ),

              ///container elevated button login
              const SizedBox(
                height: 25,
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 60),
                      maximumSize: const Size(400, 60),
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    onPressed: (){},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    )),
              ),

              /// forgot your password
              SizedBox(
                height: 25,
              ),

              Container(
                child: Text(
                  'Forgot your password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),

              /// or text
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  'Or',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              /// container elevated button no have account
              SizedBox(
                height: 25,
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 60),
                      maximumSize: const Size(400, 60),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    onPressed: () async{


                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const RegisterScreen()),
                      // );
                    },
                    child: Expanded(
                      child: Text(
                        'dont have an account? Sign up',
                        style: TextStyle(
                          fontSize: 18,

                        ),
                      ),
                    )),
              ),

              ///container elevated button with phone number
              SizedBox(
                height: 25,
              ),
              Container(
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.phone_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text('Continue with Phone Number',
                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),
                  onPressed: () {
                    // await FirebaseAuth.instance.verifyPhoneNumber(
                    //   phoneNumber: '+923020463089',
                    //   verificationCompleted: (PhoneAuthCredential credential) {},
                    //   verificationFailed: (FirebaseAuthException e) {},
                    //   codeSent: (String verificationId, int? resendToken) {},
                    //   codeAutoRetrievalTimeout: (String verificationId) {},
                    // );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const HomeScreen()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: const Size(400, 60),
                    maximumSize: const Size(400, 60),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(35.0),
                    ),
                  ),
                ),


              ),
            ],
          ),
        ),
      ),
    );
  }
}
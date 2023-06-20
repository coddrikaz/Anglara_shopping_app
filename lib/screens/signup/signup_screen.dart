import 'package:anglara_ecommerce_app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static const String routeName = '/signup';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => SignupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                'Signup',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  color: Colors.teal,
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.name,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Name",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Email",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
            SizedBox(height: 10),

            TextField(
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Phone Number",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Password",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),

            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),

            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {},
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "I have an account",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen() ));

                }, child: Text( "Log in",
                  style: TextStyle(fontSize: 18),)),

              ],

            )
          ],
        ),
      ),
    );
  }
}

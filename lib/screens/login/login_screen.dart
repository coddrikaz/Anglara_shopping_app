import 'package:anglara_ecommerce_app/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => LoginScreen(),
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
            Center(
              child: Image(
                image: AssetImage('assets/images/anglara.jpg'),
                width: 125,
                height: 125,
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Text(
                'Login',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.teal,
                    ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Enter the user name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.teal,
              decoration: InputDecoration(
                hintText: "Enter the password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  tileMode: TileMode.mirror,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF0D47A1),Color(0xFF1565C0), Color(0xFF42A5F5),Color(0xFF42A5F5)],
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  minimumSize: const Size.fromHeight(50), // NEW
                ),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 15),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              child: Text("Skip",style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(fontSize: 14),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignupScreen() ));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

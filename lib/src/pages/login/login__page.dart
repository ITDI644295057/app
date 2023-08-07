import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = false;

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      backgroundColor: Colors.tealAccent.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 69,
            ),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/272/272354.png',
              width: 100,
              height: 100,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.black, fontSize: 39, fontFamily: 'Chewy'),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'username',
                        icon: Icon(Icons.account_circle),
                        hintText: 'xxx@gmail.com'),
                  ),
                  TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'password',
                      icon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: isHidden
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: togglePasswordVisibility),
                    ),
                    obscureText: isHidden,
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      print("click");
                      final username = _usernameController.text;
                      final password = _passwordController.text;
                      if(username=='ken' && password == '123'){
                        print("Login success");
                        Navigator.pushNamed(context, 'home');
                      }else{
                        print("Login failed");
                        Flushbar(
                          backgroundGradient: LinearGradient(colors: [Colors.yellowAccent,Colors.white]),
                          title:  "Login Failed",
                          message:  "Plese try again!!",
                          duration:  Duration(seconds: 5),
                        )..show(context);
                      }
                    },
                    child: Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                      // primary: Color(0xfffff5722)), สร้างสีเอง
                      //https://www.materialpalette.com/colors
                      primary: Colors.deepOrange,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}//end

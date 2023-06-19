import 'package:flutter/material.dart';
import 'package:master_flutter_application/login_screen.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();

    if (_usernameController == _passwordController) {
      print('username and password is valid');
    } else {
      print('username and password is not valid');
    }

    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/mobile_images.jpg'),
            SizedBox(height: 10),
            Text(
              'Welcome to CodeBlasters',
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Username'),
            ),
            TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password')),
            SizedBox(height: 10),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return ScreenLogin();
                  }));
                },
                icon: Icon(Icons.check),
                label: Text('login'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../screens/client/login_screen.dart'; // LoginScreen dosyasını import edin

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Uygulama başladığında splash ekranını göster
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Splash ekranı tasarımını buraya ekleyin

    // Timer ile birkaç saniye bekleyip sonra login ekranına geçiş yap
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => LoginScreen()), // Login ekranına geçiş yap
      );
    });

    // Splash ekranı için bir widget döndürmeye gerek yok çünkü burada bir geçiş yapılacak
    return Scaffold(
      backgroundColor: Colors.blue, // Arka plan rengi
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo
            Image.asset(
              'assets/logo.png', // Logo görüntüsü
              width: 150, // Logo boyutları
              height: 150,
            ),
            SizedBox(height: 20), // Logo ile yazı arasında boşluk bırakma
            // Başlık
            Text(
              'Welcome to Lafyuu',
              style: TextStyle(
                fontSize: 24, // Başlık font boyutu
                fontWeight: FontWeight.bold,
                color: Colors.white, // Başlık rengi
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'), // Ekran başlığı
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo ve Başlık
            Column(
              children: <Widget>[
                // Logo
                Image.asset(
                  'assets/logo.png', // Logo görüntüsü
                  width: 150, // Logo boyutları
                  height: 150,
                ),
                SizedBox(height: 10), // Logo ile başlık arasında boşluk bırakma
                // Başlık
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 24, // Başlık font boyutu
                    fontWeight: FontWeight.bold, // Başlık font ağırlığı
                    color: Color(0xFF223263), // Başlık rengi: #223263
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Başlık ile form arasında boşluk bırakma
            // Create an Account Metni
            Text(
              'Create an Account',
              style: TextStyle(
                fontSize: 16, // Metin font boyutu
                color: Color(0xFF9098B1), // Metin rengi: #9098b1
              ),
            ),
            SizedBox(height: 20), // Metin ile form arasında boşluk bırakma
            // Ad Formu
            TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name', // Ad formu başlığı
                labelStyle:
                    TextStyle(color: Colors.grey), // Başlık yazısı rengi
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey), // Çerçeve rengi
                ),
              ),
            ),
            SizedBox(
                height: 10), // Ad formu ile soyad formu arasında boşluk bırakma
            // Soyad Formu
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name', // Soyad formu başlığı
                labelStyle:
                    TextStyle(color: Colors.grey), // Başlık yazısı rengi
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey), // Çerçeve rengi
                ),
              ),
            ),
            SizedBox(
                height:
                    10), // Soyad formu ile e-posta formu arasında boşluk bırakma
            // E-posta Formu
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Email', // E-posta formu başlığı
                labelStyle:
                    TextStyle(color: Colors.grey), // Başlık yazısı rengi
                prefixIcon: Icon(Icons.email), // E-posta ikonu
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey), // Çerçeve rengi
                ),
              ),
            ),
            SizedBox(
                height:
                    10), // E-posta formu ile şifre formu arasında boşluk bırakma
            // Şifre Formu
            TextFormField(
              obscureText: true, // Şifrenin gizli olmasını sağlar
              decoration: InputDecoration(
                labelText: 'Password', // Şifre formu başlığı
                labelStyle:
                    TextStyle(color: Colors.grey), // Başlık yazısı rengi
                prefixIcon: Icon(Icons.lock), // Şifre ikonu
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey), // Çerçeve rengi
                ),
              ),
            ),
            SizedBox(
                height:
                    20), // Şifre formu ile diğer bileşenler arasında boşluk bırakma
            // Kayıt Butonu
            SizedBox(
              width: double.infinity, // Butonun genişliğini tüm ekrana yay
              child: ElevatedButton(
                onPressed: () {
                  // Kayıt butonuna tıklama işlemi burada gerçekleştirilecek
                  // Burada kullanıcının kayıt bilgilerini işleyebilirsiniz
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF40BFFF), // Butonun arkaplan rengi: #40bfff
                  padding: EdgeInsets.symmetric(
                      vertical: 20), // Buton içeriğinin yüksekliği
                ),
                child: Text(
                  'Register', // Kayıt butonu metni
                  style: TextStyle(
                    fontSize: 16, // Buton metin font boyutu
                    fontFamily: 'Button Text', // Buton metin fontu
                    color: Colors.white, // Buton metin rengi
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthHelper {
  static const _keyUsername = 'username';
  static const _keyPassword = 'password';

  static Future<void> setUsername(String username) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyUsername, username);
  }

  static Future<void> setPassword(String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyPassword, password);
  }

  static Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyUsername);
  }

  static Future<String?> getPassword() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyPassword);
  }
}

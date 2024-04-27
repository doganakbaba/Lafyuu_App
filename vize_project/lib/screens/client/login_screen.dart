import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vize_project/screens/client/register_screen.dart';
import 'package:vize_project/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Welcome to Lafyuu',
                  style: TextStyle(
                    fontSize: 24, // Başlık font boyutu
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF223263), // Rengi: #223263
                  ),
                ),
              ],
            ),
            SizedBox(height: 10), // Başlık ile metin arasında boşluk bırakma
            // Giriş Bilgilendirme Metni
            Text(
              'Sign in to Continue',
              style: TextStyle(
                fontSize: 16, // Metin font boyutu
                fontWeight: FontWeight.w500, // Metin font ağırlığı
                color: Colors.grey, // Metin rengi
              ),
            ),
            SizedBox(height: 20), // Metin ile form arasında boşluk bırakma
            // Email Formu
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
                    10), // Email formu ile şifre formu arasında boşluk bırakma
            // Password Formu
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
            // Giriş Butonu
            SizedBox(
               width: double.infinity, // Butonun genişliğini tüm ekrana yay
              child: ElevatedButton(
                onPressed: () {
                  // Giriş butonuna tıklama işlemi burada gerçekleştirilecek
                  // Burada kullanıcının giriş bilgilerini kontrol edebilirsiniz
                  // Örnek olarak şu an herhangi bir kullanıcı girişi kontrolü yapmadan direkt HomeScreen'e yönlendiriyoruz:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color(0xFF40BFFF), // Butonun arkaplan rengi: #40bfff
                  padding: EdgeInsets.symmetric(
                      vertical: 20), // Buton içeriğinin yüksekliği
                ),
                child: const Text(
                  'Sign In', // Giriş butonu metni
                  style: TextStyle(
                    fontSize: 16, // Buton metin font boyutu
                    fontFamily: 'Button Text', // Buton metin fontu
                    color: Colors.white, // Buton metin rengi
                  ),
                ),
              ),
            ),
            SizedBox(
                height:
                    20), // Buton ile altındaki metin arasında boşluk bırakma
            // Google ve Facebook Giriş Butonları
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 60, // Butonun genişliğini tüm ekrana yay
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Google ile giriş işlemi burada gerçekleştirilecek
                    },
                    icon: Icon(Icons.g_translate), // Google ikonu
                    label: Text(
                      'Login With Google',
                      style: TextStyle(
                        fontSize: 16, // Buton metin font boyutu
                        fontFamily: 'Button Text', // Buton metin fontu
                        color: Color(0xFF9098B1), // Buton metin rengi
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xFF9098B1),
                      backgroundColor: Colors.white, // Buton ikon rengi
                      elevation: 0, // Butonun yükselti miktarı
                      side: BorderSide(
                          color: Color(0xFFDFE3F1)), // Butonun kenarlık rengi
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        10), // Google butonu ile Facebook butonu arasında boşluk bırakma
                SizedBox(
                  width: double.infinity,
                  height: 50, // Butonun genişliğini tüm ekrana yay
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Facebook ile giriş işlemi burada gerçekleştirilecek
                    },
                    icon: Icon(Icons.facebook), // Facebook ikonu
                    label: Text(
                      'Login With Facebook',
                      style: TextStyle(
                        fontSize: 16, // Buton metin font boyutu
                        fontFamily: 'Button Text', // Buton metin fontu
                        color: Color(0xFF9098B1), // Buton metin rengi
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color(0xFF9098B1),
                      backgroundColor: Colors.white, // Buton ikon rengi
                      elevation: 0, // Butonun yükselti miktarı
                      side: BorderSide(
                          color: Color(0xFFDFE3F1)), // Butonun kenarlık rengi
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        10), // Facebook butonu ile altındaki metin arasında boşluk bırakma
                // Forgot Password
                InkWell(
                  onTap: () {
                    // Şifremi unuttum ekranına geçiş yapılabilir
                  },
                  child: Text(
                    'Forgot Your Password ?',
                    style: TextStyle(
                      color: Color(0xFF40BFFF), // Metin rengi: #40bfff
                      fontSize: 14, // Metin font boyutu
                      fontWeight: FontWeight.w500, // Metin font ağırlığı
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        10), // Forgot Password ile Register arasında boşluk bırakma
                // Register Link
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                    // Kayıt ekranına geçiş yapılabilir
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Dont Have an Account? ',
                      style: TextStyle(
                        color: Color(0xFF9098B1), // Metin rengi: #9098b1
                        fontSize: 14, // Metin font boyutu
                        fontWeight: FontWeight.w500, // Metin font ağırlığı
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            color: Color(0xFF40BFFF), // Metin rengi: #40bfff
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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

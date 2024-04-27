import 'package:flutter/material.dart';
import 'package:vize_project/screens/client/login_screen.dart';
import 'package:vize_project/screens/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFF40BFFF),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Kullanıcı Bilgileri
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFEBF0FF)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('../assets/avatar.jpg'),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dogan Akbaba',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'doganakbaba20@gmail.com',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'User Information',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Kullanıcı bilgileri buraya gelecek
                ],
              ),
            ),
            // Profil Öğeleri
            ProfileItem(title: 'Orders', count: 5),
            ProfileItem(title: 'Favorites', count: 3),
            ProfileItem(title: 'Settings', count: 0),
            ProfileItem(title: 'Logout', count: 0),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String title;
  final int count;

  const ProfileItem({
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'Settings') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingsScreen(),
            ),
          );
        } else if (title == 'Logout') {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
            (Route<dynamic> route) => false,
          );
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Color(0xFFEBF0FF)), // Kutucuk etrafına çizgi eklendi
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            count > 0
                ? Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF40BFFF),
                    ),
                  )
                : SizedBox(), // Eğer count 0 ise boş bir SizedBox() döndür
          ],
        ),
      ),
    );
  }
}

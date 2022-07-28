import 'package:flutter/material.dart';
import 'package:task4/components/setting_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 35,left: 35),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white70,
                    size: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 35,right: 35),
                  child: Icon(
                    Icons.settings,
                    size: 20,
                    color: Colors.white70,
                  ),
                )
              ],
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: CircleAvatar(
                      radius: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset("assets/images/img.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 15,
                    child: InkWell(
                      onTap: () {},
                      child: const Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 15,
                          child: Icon(
                            Icons.edit,
                            color: Color(0xFF444444),
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Nicolas Adams",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const Text(
              "nicolasadams@gmail.com",
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            Container(
              alignment: Alignment.center,
              width: 170,
              height: 35,
              margin: const EdgeInsets.only(top: 25, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: BorderRadius.circular(30)),
              child: const Text(
                "Upgrade to PRO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.w400),
              ),
            ),
            SettingCards(next: Icons.privacy_tip_outlined, name: "Privacy"),
            SettingCards(
                next: Icons.history_outlined, name: "Purchase History"),
            SettingCards(next: Icons.help_outline, name: "Help & Support"),
            SettingCards(next: Icons.settings_outlined, name: "Setting"),
            SettingCards(
                next: Icons.person_add_alt_1_outlined, name: "Invite a Friend"),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              width: 300,
              decoration: BoxDecoration(
                  color: const Color(0xFF444444),
                  borderRadius: BorderRadius.circular(60)),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Icon(
                            Icons.exit_to_app_rounded,
                            color: Colors.white70,
                            size: 22,
                          ),
                        ),
                        Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w300,
                              fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

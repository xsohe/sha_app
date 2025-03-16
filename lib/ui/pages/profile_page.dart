import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text(
          "My Profile",
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/img_profile.png"),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Shayna Hanna",
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 40),
                ProfileMenuItem(
                  iconUrl: "assets/icons/ic_edit_profile.png",
                  title: "Edit Profile",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit");
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: "assets/icons/ic_pin.png",
                  title: "My Pin",
                  onTap: () async {
                    if (await Navigator.pushNamed(context, "/pin") == true) {
                      Navigator.pushNamed(context, "/profile-edit-pin");
                    }
                  },
                ),
                ProfileMenuItem(
                  iconUrl: "assets/icons/ic_myreward.png",
                  title: "My Rewards",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/icons/ic_help.png",
                  title: "Help Center",
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: "assets/icons/ic_logout.png",
                  title: "Logout",
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 87),
          CustomTextButton(
            title: "Report A Problem",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

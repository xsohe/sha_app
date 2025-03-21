import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Input Username
                const CustomFormField(
                  title: "Username",
                ),
                const SizedBox(height: 16),
                // Input Full Name
                const CustomFormField(
                  title: "Full Name",
                ),
                const SizedBox(height: 16),
                // Input Email
                const CustomFormField(
                  title: "Email",
                ),
                const SizedBox(height: 16),
                // Input Password
                const CustomFormField(
                  title: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                CustomFilledButon(
                  title: "Update Now",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/profile-edit-success", (route) => false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

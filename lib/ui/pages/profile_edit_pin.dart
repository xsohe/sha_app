import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Pin"),
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
                const CustomFormField(
                  title: "Old PIN",
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                // Input Password
                const CustomFormField(
                  title: "New PIN",
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../common/widgets/login/conditions_checkbox.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/constants/text_strings.dart';
import '../../sucess/sucess_screen.dart';

class BusinessSignUpForm extends StatelessWidget {
  const BusinessSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First and Last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TFCTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: TFCSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TFCTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: TFCSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TFCTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: TFCSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TFCTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: TFCSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TFCTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: TFCSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TFCTexts.mobilePhone,
                prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: TFCSizes.spaceBtwInputFields),

          // Company name
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: TFCTexts.company,
                prefixIcon: Icon(Iconsax.building)),
          ),
          const SizedBox(height: TFCSizes.spaceBtwSections),

          // Terms agree checkbox
          const ConditionsCheckbox(),
          const SizedBox(height: TFCSizes.spaceBtwSections),

          // SignUp Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const SucessScreen()),
              child: const Text(TFCTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
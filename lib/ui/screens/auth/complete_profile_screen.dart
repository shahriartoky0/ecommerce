import 'package:flutter/material.dart';

import '../../widgets/Applogo.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 60,
                ),
                AppLogo(),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Complete Profile',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Get Started with us with your details',
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                  ),
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Last Name ',
                  ),
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(

                    hintText: 'Mobile',
                  ),
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'City',
                  ),
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLines: 5,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: 'Shipping Address',
                  ),
                  style: Theme
                      .of(context)
                      .textTheme
                      .displayMedium,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Next',
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

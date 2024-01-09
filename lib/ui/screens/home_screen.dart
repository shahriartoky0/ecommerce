import 'package:ecommerce/ui/utility/assets_path.dart';
import 'package:ecommerce/ui/widgets/home/circular_icon_button.dart';
import 'package:ecommerce/ui/widgets/home/section_title.dart';
import 'package:flutter/material.dart';
import '../widgets/home/banner_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              searchField,
              SizedBox(height: 20),
              BannerCarousel(),
              SizedBox(height: 16),
              SectionTitle(title: 'All Categories', onTapSeeAll: () {})
            ],
          ),
        ),
      ),
    );
  }

  TextFormField get searchField {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade300,
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
        hintText: 'Search',
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      title: Image.asset(Assetspath.$NavLogo),
      actions: [
        CircularIconButton(
          onTap: () {},
          iconData: Icons.person_outline,
        ),
        SizedBox(width: 8),
        CircularIconButton(
          onTap: () {},
          iconData: Icons.phone_outlined,
        ),
        SizedBox(width: 8),
        CircularIconButton(
          onTap: () {},
          iconData: Icons.notifications_active_outlined,
        ),
        SizedBox(width: 8),
      ],
    );
  }
}

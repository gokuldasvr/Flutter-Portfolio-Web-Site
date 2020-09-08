import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/application/home_bloc/home_bloc.dart';
import 'package:my_portfolio/domain/core/images.dart';
import 'package:my_portfolio/presentation/home/widgets/app_gallery.dart';
import 'package:my_portfolio/presentation/home/widgets/experiance.dart';
import 'package:my_portfolio/presentation/home/widgets/user_details.dart';
import 'package:my_portfolio/presentation/open_in_desktop/open_in_desktop_screen.dart';
import 'package:my_portfolio/presentation/reusables/widgets.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(GetDeveloperDetails());
    BlocProvider.of<HomeBloc>(context).add(GetPreviousJobDetails());
    BlocProvider.of<HomeBloc>(context).add(GetAppGalleryDetails());
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    print('width : ${width}');
    print('height : ${height}');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                customVerticalGap(10),
                UserDetails(),
                customVerticalGap(10),
                Text(
                  'Projects',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ProjectsList(),
                customVerticalGap(10),
                Text(
                  'Experiance',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Experiance(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/application/home_bloc/home_bloc.dart';
import 'package:my_portfolio/domain/core/images.dart';
import 'package:my_portfolio/presentation/reusables/widgets.dart';
import 'dart:js' as js;

class UserDetails extends StatelessWidget {
  final double tileWidth = 250;
  final double tileHeight = 80;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          //color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: BlocConsumer<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.basicDetails == null
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: state.basicDetails.image == ''
                              ? NetworkImage(ImagesGallery.instance.flutterLogo)
                              : NetworkImage(state.basicDetails.image),
                        ),
                        customVerticalGap(10),
                        Text(
                          state.basicDetails.name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        customVerticalGap(10),
                        Text(
                          state.basicDetails.designation,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        customVerticalGap(10),
                        Text(
                          state.basicDetails.tools,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        customVerticalGap(10),
                        FlatButton.icon(
                          onPressed: () {
                            js.context.callMethod(
                                "open", [state.basicDetails.resumeUrl]);
                          },
                          icon: Icon(Icons.file_download),
                          label: Text(
                            'Download My Resume',
                          ),
                        ),
                        customVerticalGap(10),
                        Text(
                          'Personal Details',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        customVerticalGap(10),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: tileHeight,
                          //color: Colors.black12,
                          child: Center(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                Container(
                                  width: tileWidth,
                                  height: tileHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      js.context.callMethod("open",
                                          [state.basicDetails.githubUrl]);
                                    },
                                    leading: Icon(
                                      Icons.add_alert,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                    title: Text('GitHub'),
                                    subtitle: Text(
                                        'This website is made with Flutter. Click to see my Github Repos'),
                                  ),
                                ),
                                customHorizontalGap(10),
                                Container(
                                  width: tileWidth,
                                  height: tileHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.home,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                    title: Text('Address'),
                                    subtitle: Text(state.basicDetails.address),
                                  ),
                                ),
                                customHorizontalGap(10),
                                Container(
                                  width: tileWidth,
                                  height: tileHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.mail,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                    title: Text('Mail to'),
                                    subtitle: Text(state.basicDetails.mailID),
                                  ),
                                ),
                                customHorizontalGap(10),
                                Container(
                                  width: tileWidth,
                                  height: tileHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.phone,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                    title: Text('Phone'),
                                    subtitle:
                                        Text(state.basicDetails.contactNo),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
            },
            listener: (context, state) {}),
      ),
    );
  }
}

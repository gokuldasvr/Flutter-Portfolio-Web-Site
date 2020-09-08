import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/application/home_bloc/home_bloc.dart';
import 'dart:js' as js;

class ProjectsList extends StatelessWidget {
  final double tileWidth = 400;
  final double tileHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        //color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        height: tileHeight,

        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Center(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  final data = state.applicationsList[index];
                  return Container(
                    width: tileWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: ListTile(
                      onTap: () {
                        js.context.callMethod("open", [data.url]);
                      },
                      leading: Container(
                        width: 100,
                        height: 100,
                        child: Image.network(
                          data.avatarUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text('${data.title}'),
                      subtitle: Text(
                        '${data.type}\n\n${data.description}',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        'Google Play\nRating\n${data.ratings}',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return SizedBox(width: 10);
                },
                itemCount: state.applicationsList.length,
              ),
            );
          },
        ),
      ),
    );
  }
}

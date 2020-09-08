import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/application/home_bloc/home_bloc.dart';

class Experiance extends StatelessWidget {
  final double tileWidth = 400;
  final double tileHeight = 120;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: tileHeight,
              //color: Colors.black12,
              child: Center(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    final data = state.previousJobDetails[index];
                    return Container(
                      width: tileWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 100,
                          height: 100,
                          child: Image.network(
                            data.companyLogo,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title:
                            Text('${data.designation} @ ${data.companyName}'),
                        subtitle: Text(
                          '${data.companyLocation}\n\n${data.description}',
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Text(
                          data.period.replaceFirst('- ', '\nto\n'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: state.previousJobDetails.length,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

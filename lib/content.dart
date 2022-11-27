import 'package:blog/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Content extends StatelessWidget {
  final int index;
  const Content({
    Key? key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Map article = blog[index];
    return ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage('assets/images/border.jpg'),
                      fit: BoxFit.fill)),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.network(
                        'https://imgs.search.brave.com/8GbNovI6hDUPPvhGyi0hboeJefIi1-QacWCq3y_oprM/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5y/LWphem15Ynhvbnh3/SHdNTlJvWU5RSGFF/SyZwaWQ9QXBp',
                        height: 80,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(article['title']),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15,
          );
        },
        itemCount: blog.length);
  }
}

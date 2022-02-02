import 'package:flutter/material.dart';

Widget buildItem(List list, context) => ListView.separated(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => news(list[index], context),
    separatorBuilder: (context, index) => Container(
      width: double.infinity,
      height: 1.0,
      color: Colors.black12,
    ),
    itemCount: list.length);

Widget news(article, context) => Container(
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // CircleAvatar( radius: 50,),
        ListTile(
          leading: Image.network("{$article['urlToImage']}"),
          title: Text("{$article['title']}"),
          subtitle: Text("{$article['description']}"),
        )
      ],
    ),
  ),
);

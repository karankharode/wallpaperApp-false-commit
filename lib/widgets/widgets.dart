import 'package:flutter/material.dart';
import 'package:pixhub/model/wallpaper_model.dart';
import 'package:pixhub/views/image_view.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          children: <TextSpan>[
            TextSpan(text: 'Pix', style: TextStyle(color: Colors.black87)),
            TextSpan(text: 'Hub', style: TextStyle(color: Colors.blue)),
            TextSpan(text: ' world!'),
          ],
        ),
      ),
    ],
  );
}

Widget wallpapersList({List<WallpaperModel> wallpapers, context}) {
  // print(wallpapers[0].src.original);
  // print(wallpapers);
  if (wallpapers.length > 0) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: wallpapers.map((wallpaper) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageView(
                        imgUrl: wallpaper.src.portrait,
                      ),
                    ));
              },
              child: Hero(
                tag: wallpaper.src.portrait,
                child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          wallpaper.src.portrait,
                          fit: BoxFit.cover,
                        )
                        // child: Image.network(wallpaper.src.potrait)

                        )
                    // : Container()

                    ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  } else {
    return Center(
      child: Text("Wallpapers not Found"),
    );
  }
}

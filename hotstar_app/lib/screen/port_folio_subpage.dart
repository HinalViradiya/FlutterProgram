

import 'dart:convert';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> imagePathsSnapshot = [
  {"image": "assets/hollywood/dracula.jpg", "text": "Dracula"},
  {"image": "assets/hollywood/gijoe.jpg", "text": "Gijoe"},
  {"image": "assets/hollywood/ironMan.jpg", "text": "IronMan"},
  {"image": "assets/hollywood/peak.jpg", "text": "peak"},
  {"image": "assets/hollywood/major.jpg", "text": "Major"},
  {"image": "assets/hollywood/mortal.jpg", "text": "Mortal"},
  {"image": "assets/hollywood/rogue.jpg", "text": "Rogue"},
  {"image": "assets/hollywood/thor.jpg", "text": "Thor"},
  {"image": "assets/hollywood/train.jpg", "text": "Train"},
];

class GallerySubPage extends StatelessWidget {
  const GallerySubPage({Key? key}) : super(key: key);
  static const routeName = '/GallerySubPage';
  


 Future<List<String>> _loadImagePaths(BuildContext context) async {
    final String manifestContentJson =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContentJson);

    return manifestMap.keys
        .where((String key) => key.contains('assets/gallery/'))
        .toList();
  }


  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
      future: _loadImagePaths(context),
      builder: (
        BuildContext context,
        AsyncSnapshot<List<String>> imagePathsSnapshot,
      ) {
        if (imagePathsSnapshot.connectionState == ConnectionState.done &&
            imagePathsSnapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(10),
                sliver: _buildContent(imagePathsSnapshot.data!),
              ),
            ],
          );
        }

        return const  Center(child: CircularProgressIndicator());
      },
    );
  }

 
   SliverGrid _buildContent(List<String> imagePaths) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _buildImageWidget(imagePaths[index]);
        },
        childCount: imagePaths.length,
      ),
    );
  }

 
  Widget _buildImageWidget(String imagePath) {
    return Container(
      decoration:const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

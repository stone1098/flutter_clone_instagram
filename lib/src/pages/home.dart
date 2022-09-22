import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';
import 'package:flutter_clone_instagram/src/components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory(){
    return Stack(
      children: [
        AvatarWidget(
          thumbPath: 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg',
          type: AvatarType.TYPE2,
          size: 60,
        ),
        Positioned(
          right: 5,
          bottom: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Center(
              child: Text(
                '+',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _storyBoardList(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 10,),
          _myStory(),
          const SizedBox(width: 2,),
          ...List.generate(100, (index) => AvatarWidget(
            thumbPath: 'https://static.remove.bg/remove-bg-web/c4b29bf4b97131238fda6316e24c9b3606c18000/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
            type: AvatarType.TYPE1,
          ),
          ),
        ]
      ),
    );
  }

  Widget _postList(){
    return Column(
      children: List.generate(50, (index) => PostWidget()).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: ImageData(IconsPath.logo, width: 220,),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
                padding: EdgeInsets.all(15),
                child: ImageData(IconsPath.directMessage, width: 40,)),
          ),
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/src/components/avatar_widget.dart';
import 'package:flutter_clone_instagram/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            thumbPath: 'https://static.remove.bg/remove-bg-web/c4b29bf4b97131238fda6316e24c9b3606c18000/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg',
            type: AvatarType.TYPE3,
            nickname: 'stone1098',
            size: 30,
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _image(){
    return CachedNetworkImage(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png');
  }

  Widget _infoCount(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(IconsPath.likeOffIcon, width: 50,),
              SizedBox(width: 13,),
              ImageData(IconsPath.replyIcon, width: 50,),
              SizedBox(width: 13,),
              ImageData(IconsPath.directMessage, width: 45,),
            ],
          ),
          ImageData(IconsPath.bookMarkOffIcon, width: 45,),
        ],
      ),
    );
  }

  Widget _infoDescription(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('좋아요 150개', style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          ExpandableText('콘텐츠1입니다.\n콘텐츠1입니다.\n콘텐츠1입니다.\n콘텐츠1입니다.\n',
            prefixText: 'stone1098',
            prefixStyle: TextStyle(fontWeight: FontWeight.bold),
            expandText: '더보기',
            collapseText: '접기',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _replyTextBtn(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: GestureDetector(
        onTap: (){},
        child: Text(
          '댓글 199개 모두 보기',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
      ),
    );
  }

  Widget _dateAgo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: const Text(
        '1일전',
        style: TextStyle(
          fontSize: 11, color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          _image(),
          const SizedBox(height: 10,),
          _infoCount(),
          const SizedBox(height: 5,),
          _infoDescription(),
          const SizedBox(height: 5,),
          _replyTextBtn(),
          const SizedBox(height: 5,),
          _dateAgo(),
        ],
      ),
    );
  }
}

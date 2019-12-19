import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoImg extends StatefulWidget {
  _PhotoImgState createState() => _PhotoImgState();
}

class _PhotoImgState extends State<PhotoImg> {
  var _imgPath;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                RaisedButton(
                  onPressed: _takePhoto,
                  child: Text("拍照"),
                ),
                RaisedButton(
                  onPressed: _openGallery,
                  child: Text("选择照片"),
                ),
                _ImageView(_imgPath),
              ],
            )
          ],
        ),
      ),
    );
  }

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择图片或拍照"),
      );
    } else {
      return Image.file(
        imgPath,


      );
    }
  }

  /*拍照*/
  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _imgPath = image;
    });
  }

  /*相册*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }
}
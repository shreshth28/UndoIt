import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import './call.dart';

class IndexPage extends StatefulWidget {
  static String id = 'index';
  @override
  State<StatefulWidget> createState() {
    return new IndexState();
  }
}

class IndexState extends State<IndexPage> {
  /// create a channelController to retrieve text value
  final _channelController = TextEditingController();

  /// if channel textfield is validated to have error
  bool _validateError = false;
  @override
  void initState() {
    super.initState();
    onJoin();
  }

  @override
  void dispose() {
    // dispose input controller
    _channelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: Scaffold(
          body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 400,
            child: Column(
              children: <Widget>[
                Row(children: <Widget>[]),
                Row(children: <Widget>[
                  Expanded(
                      child: TextField(
                    controller: _channelController,
                    decoration: InputDecoration(
                        errorText:
                            _validateError ? "Channel name is mandatory" : null,
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        hintText: 'Channel name'),
                  ))
                ]),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () => onJoin(),
                            child: Text("Join"),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ))
              ],
            )),
      )),
    );
  }

  onJoin() async {
    // update input validation
    setState(() {
      _channelController.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (true) {
      // await for camera and mic permissions before pushing video page
      await _handleCameraAndMic();
      // push video page with given channel name
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new CallPage(
                    channelName: 'test',
                  )));
    }
  }

  _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
        [PermissionGroup.camera, PermissionGroup.microphone]);
  }
}

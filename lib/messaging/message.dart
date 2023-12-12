import 'package:chat_bubbles/bubbles/bubble_normal.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:medica/color_constant.dart';
import 'package:medica/messaging/calling.dart';
import 'package:medica/messaging/videocall.dart';
import 'package:medica/test.dart';

import '../main.dart';

class messagePage extends StatefulWidget {
  const messagePage({super.key});

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
  ScrollController _scrollController=ScrollController();

  bool emojiShowing = false;

  final TextEditingController _controller = TextEditingController();

  _onBackspacePressed() {
    _controller
      ..text = _controller.text.characters.toString()
      ..selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
  }

  List msg=[
    {
    "sender":"Arshad",
    "receiver":"Mansoor",
    "time":"10:11",
      "message":"Heyy"
  },
    {
      "sender":"Mansoor",
      "receiver":"Arshad",
      "time":"10:12",
      "message":"helloo"
    },
    {
      "sender":"Arshad",
      "receiver":"Mansoor",
      "time":"10:12",
      "message":"wassupp"
    },
    {
      "sender":"Mansoor",
      "receiver":"Arshad",
      "time":"10:13",
      "message":"All good"
    },
    {
      "sender":"Arshad",
      "receiver":"Mansoor",
      "time":"10:13",
      "message":"then"
    },
    {
      "sender":"Mansoor",
      "receiver":"Arshad",
      "time":"10:14",
      "message":"what then"
    },
  ];

TextEditingController msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
      backgroundColor: colorTheme.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios,color: colorTheme.black,)),
        elevation: 0,
        centerTitle: true,
        title: Text("Dr.Upul",style: TextStyle(
            fontSize: width*0.05,
            fontWeight: FontWeight.w600,
          color: colorTheme.black
        ),),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => callingPage(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: colorTheme.textinput,
                child: Icon(Icons.call_outlined,color: colorTheme.black,),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => videoCallPage(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: colorTheme.textinput,
                child: Icon(Icons.video_call_outlined,color: colorTheme.black,),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: colorTheme.white,
      body:
      ListView.builder(
        itemCount: msg.length,
        controller:_scrollController,
        physics: BouncingScrollPhysics(),
        // reverse: true,
        itemBuilder: (context, index) {
          return BubbleNormal(
            text: "${msg[index]["message"]}\n${msg[index]["time"]}",
          color: msg[index]["sender"]=="Mansoor" ? colorTheme.textborder : colorTheme.secondaryColor,
            isSender: msg[index]["sender"]=="Mansoor"?false : true,
          );
        // return Row(
        //   mainAxisAlignment: msg[index]['receiver']=="Mansoor"?MainAxisAlignment.end:MainAxisAlignment.start,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: msg[index]["sender"]=="Arshad"?Colors.teal:colorTheme.textinput,
        //           borderRadius: BorderRadius.circular(10)
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text(msg[index]['message'],style: TextStyle(
        //             color: msg[index]["sender"]=="Arshad"?colorTheme.white:colorTheme.black
        //           ),),
        //         ),
        //       ),
        //     ),
        //   ],
        // );
      },),
      
      bottomSheet: Container
        (
        color: colorTheme.white,
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  emojiShowing = !emojiShowing;
                });
              },
              icon: const Icon(
                Icons.emoji_emotions,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.05),
                      borderSide:BorderSide(
                          color:colorTheme.white
                      )
                  ),

                  focusedBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(width*0.1),
                      borderSide: BorderSide(
                          color:colorTheme.textinput
                      )
                  ),
                ),
                controller: msgController,

              ),
            ),
            FloatingActionButton(
                child: Icon(Icons.send,color: colorTheme.white,),
                onPressed: (){
                  msg.add(
                    {
                      "sender":"Arshad",
                      "reciever":"Mansoor",
                      "time":"10:14",
                      "message":msgController.text
                    },
                  );
                  msgController.clear();
                  _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      duration: Duration(
                        milliseconds: 300
                      ),
                      curve: Curves.easeOut
                  );
                  setState(() {
                    
                  });

                }),
            Offstage(
              offstage: !emojiShowing,
              child: SizedBox(
                  height: 250,
                  child: EmojiPicker(
                    textEditingController: _controller,
                    onBackspacePressed: _onBackspacePressed,
                    onEmojiSelected: (category, emoji) {

                    },
                    config: Config(
                      columns: 7,
                      // Issue: https://github.com/flutter/flutter/issues/28894
                      emojiSizeMax: 32 *
                          (foundation.defaultTargetPlatform ==
                              TargetPlatform.iOS
                              ? 1.30
                              : 1.0),
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.RECENT,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.white,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      recentTabBehavior: RecentTabBehavior.RECENT,
                      recentsLimit: 28,
                      replaceEmojiOnLimitExceed: false,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      loadingIndicator: const SizedBox.shrink(),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL,
                      checkPlatformCompatibility: true,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}



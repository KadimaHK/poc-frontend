import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poc_frontend/api/lib/api.dart' as api;
import 'package:poc_frontend/main.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.toUser});
  final api.User toUser;

  static const String routeName = '/chat';
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<api.Message>? messages = [];
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void fetchData() async {
    {
      List<api.Message>? msgs = (await api.MessageApi(MyApp.sessionApiClient).messageGet(
        other: {'or': '(and(from_user_id.eq.${MyApp.user?.id},to_user_id.eq.${widget.toUser.id}),and(to_user_id.eq.${MyApp.user?.id},from_user_id.eq.${widget.toUser.id}))'},
      ))!;
      messages = msgs;
    }
    if (mounted) {
      setState(() {});
    }
  }

  void sendMessage() {
    api.MessageApi(MyApp.sessionApiClient)
        .messagePost(
      message: api.Message(
        body: _controller.text,
        fromUserId: MyApp.user?.id,
        toUserId: widget.toUser.id,
      ),
    )
        .then((value) {
      fetchData();
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(widget.toUser.iconUrl ?? ''),
          ),
          title: Text(widget.toUser.name ?? ''),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.phone_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.videocam_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                for (var item in messages!)
                  Message(
                    message: item.body ?? '',
                    isMe: item.fromUserId == MyApp.user?.id,
                  ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'message',
                  ),
                  onSubmitted: (value) => sendMessage(),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () => sendMessage(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Message extends StatelessWidget {
  const Message({super.key, required this.message, required this.isMe});
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).primaryColorLight : Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

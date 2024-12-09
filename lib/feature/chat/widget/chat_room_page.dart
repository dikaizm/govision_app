import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:govision/feature/chat/model/chat_room.dart';
import 'package:govision/shared/widget/app_bar.dart';

class ChatRoomPage extends ConsumerStatefulWidget {
  const ChatRoomPage({super.key, this.chatId = ''});

  final String chatId;

  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends ConsumerState<ChatRoomPage> {
  final TextEditingController _inputController = TextEditingController();

  List<Message> messages = [
    Message(
      user: 'Dokter',
      message: 'Halo, ada yang bisa saya bantu?',
      timestamp: DateTime(2024, 12, 09, 13, 10),
    ),
    Message(
      user: 'Anda',
      message: 'Halo, saya ingin konsultasi',
      timestamp: DateTime(2024, 12, 09, 13, 11),
    ),
    Message(
      user: 'Anda',
      message: 'Mata saya terasa kabur',
      timestamp: DateTime(2024, 12, 09, 13, 12),
    ),
    Message(
      user: 'Dokter',
      message:
          'Mata Anda terlihat sehat, tetap jaga kesehatan mata Anda dengan mengonsumsi makanan yang bergizi dan hindari paparan sinar UV',
      timestamp: DateTime(2024, 12, 09, 13, 20),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        titleWidget: Row(
          children: [
            CircleAvatar(),
            const SizedBox(width: 8),
            Text('dr. Grimaldi Ihsan, Sp.M', style: TextStyle(fontSize: 16))
          ],
        ),
      ),
      body: _widgetContent(context),
      bottomSheet: _bottomSheetInput(context),
    );
  }

  Widget _widgetContent(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 64),
        padding: EdgeInsets.all(16),
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[messages.length - 1 - index];
                  return ListTile(
                    title: Text(message.user),
                    subtitle: Text(message.message),
                    trailing: Text(
                      "${message.timestamp.hour}:${message.timestamp.minute}",
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }

  Widget _bottomSheetInput(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
        color: Colors.grey[300]!,
      ))),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _inputController,
              decoration: InputDecoration(
                hintText: 'Ketik pesan...',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              textInputAction: TextInputAction.newline,
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              final message = Message(
                  user: 'Anda',
                  message: _inputController.text,
                  timestamp: DateTime.now());
              messages.add(message);
              _inputController.clear();
            },
          ),
        ],
      ),
    );
  }
}

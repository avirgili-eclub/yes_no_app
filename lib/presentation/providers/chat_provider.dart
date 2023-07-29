import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';

import '../../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola, ¿cómo estás?', sender: Sender.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, sender: Sender.me);
    messageList.add(newMessage);
    if (text.endsWith('?')) {
      herResponse();
    }
    moveScrollToBottom();
    notifyListeners();
  }

 Future<void> moveScrollToBottom() async {
  await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> herResponse() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    moveScrollToBottom();
    notifyListeners();
  }
}

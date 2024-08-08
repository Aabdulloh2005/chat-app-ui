// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:lesson70/services/chat_sevice.dart';

// class ChatController {
//   final _chatService = ChatSevice();

//   void sendMessage(String toUserId, String message, String userName) {
//     _chatService.sendMessage(toUserId, message, userName);
//   }

//   Stream<QuerySnapshot> getMessages(String userId, String otherUserId) async* {
//     yield* _chatService.getMessages(userId, otherUserId);
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lesson70/services/chat_sevice.dart';
import 'dart:io';

class ChatController {
  final _chatService = ChatService();

  void sendMessage(String toUserId, String message, String userName) {
    _chatService.sendMessage(toUserId, message, userName);
  }

  Future<String> sendImageMessage(
      String toUserId, File imageFile, String userName) async {
    return await _chatService.sendImageMessage(toUserId, imageFile, userName);
  }

  Stream<QuerySnapshot> getMessages(String userId, String otherUserId) async* {
    yield* _chatService.getMessages(userId, otherUserId);
  }
}

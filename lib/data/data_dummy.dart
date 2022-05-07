import 'package:flutter_codigo5_whatsapp/models/chat_message.dart';

import '../models/chat_model.dart';

List<ChatModel> chatList = [
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    userName: "Ximena Lopez",
    message: "Ya se ha enviado el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    userName: "Mario Gomez",
    message:
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    time: "15:35",
    countMessage: 2,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/762080/pexels-photo-762080.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    userName: "Mariela Zeballos",
    message:
        "College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature",
    time: "19:43",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/307847/pexels-photo-307847.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    userName: "Muriel Smith",
    message:
        "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.",
    time: "9:19",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
    "https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    userName: "Ximena Lopez",
    message: "Ya se ha enviado el encargo por el courier",
    time: "10:20",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
    "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    userName: "Mario Gomez",
    message:
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    time: "15:35",
    countMessage: 2,
    isTyping: true,
  ),
];

List<ChatMessage> chatMessageList = [
  ChatMessage(messageContent: "Hola Juan, ¿Cómo estas?", messageType: "other"),
  ChatMessage(messageContent: "Holaaa, estoy muy bien, aqui aprendiendo flutter", messageType: "me"),
  ChatMessage(messageContent: "Y tu que haces?", messageType: "me"),
  ChatMessage(messageContent: "Estoy revisando un bug", messageType: "other"),
];

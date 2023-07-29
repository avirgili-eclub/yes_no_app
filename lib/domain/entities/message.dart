class Message {
  final String message;
  final String? imageUrl;
  final Sender sender;

  Message({required this.message, this.imageUrl, required this.sender});
}

enum Sender {
  me,
  she,
}

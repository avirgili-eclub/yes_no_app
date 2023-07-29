class Message {
  final String text;
  final String? imageUrl;
  final Sender sender;

  Message({required this.text, this.imageUrl, required this.sender});
}

enum Sender {
  me,
  she,
}

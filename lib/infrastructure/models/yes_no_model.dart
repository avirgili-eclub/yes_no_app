import '../../domain/entities/message.dart';

class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({required this.answer, required this.forced, required this.image});

factory YesNoModel.fromJson(Map<String, dynamic> json) {
    return YesNoModel(
      answer: json['answer'],
      forced: json['forced'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'answer': answer,
      'forced': forced,
      'image': image,
    };
  }

  Message toMessageEntity() => Message(
        text: answer == 'yes' ? 'Si' : 'No',
        imageUrl: image,
        sender: Sender.she,
      );

}

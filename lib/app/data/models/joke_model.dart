enum VoteEnum {
  like("like"),
  dislike("dislike"),
  none("none"),
  ;

  const VoteEnum(this.value);

  final String value;

  static VoteEnum getByValue(String i) {
    return VoteEnum.values.firstWhere(
      (x) => x.value == i,
      orElse: () => VoteEnum.none,
    );
  }
}

class JokeModel {
  final String content;
  VoteEnum vote;

  JokeModel({required this.content, this.vote = VoteEnum.none});

  Map<String, dynamic> toJson() => {
        'content': content,
        'vote': vote.value,
      };

  factory JokeModel.fromJson(Map<String, dynamic> json) => JokeModel(
        content: json['content'],
        vote: VoteEnum.getByValue(json['vote']),
      );
}

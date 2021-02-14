class Game {
  final DateTime created;
  String title;
  String member1;
  String member2;
  String member3;
  String member4;
  int memberScore1;
  int memberScore2;
  int memberScore3;
  int memberScore4;
  DateTime updated;

  Game(
      {this.title,
      this.member1,
      this.member2,
      this.member3,
      this.member4,
      this.memberScore1,
      this.memberScore2,
      this.memberScore3,
      this.memberScore4,
      this.created});
}

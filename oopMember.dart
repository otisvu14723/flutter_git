void main(List<String> args) {
  Member member = Member(
    username: "minh",
    avatar: "avatar1.png",
    dayOfBirth: DateTime.parse("1990-01-01"),
    numberPhone: "0123456789",
    email: "minh@example.com",
    gender: "Nam",
  );
  final post = Post(
    content: "Đây là bài viết đầu tiên",
    images: ["image1.jpg", "image2.jpg"],
    member: member,
  );
  final comment = Comment(
    content: "Bài viết hay quá!",
    member: member,
  );
  print(post.content);
  print(comment.content);
}

class Member {
  final String username;
  final String avatar;
  final DateTime dayOfBirth;
  final String numberPhone;
  final String email;
  final String gender;

  Member(
      {required this.username,
      required this.avatar,
      required this.dayOfBirth,
      required this.numberPhone,
      required this.email,
      required this.gender});
}

class Post {
  String content;
  List<String> images;
  Member member;
  List<Comment> comments;

  Post({
    required this.content,
    required this.images,
    required this.member,
    this.comments = const [],
  });

  void addComment(Comment comment) {
    comments.add(comment);
  }
}

class Comment {
  String content;
  Member member;

  Comment({
    required this.content,
    required this.member,
  });
}

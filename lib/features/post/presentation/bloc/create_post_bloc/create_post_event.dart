part of 'create_post_bloc.dart';

abstract class CreatePostEvent {
  const CreatePostEvent();
}

final class CollectFirstPageDataEvent extends CreatePostEvent {
  final AppUserModel userModel;
  final bool postType;
  final String workType;
  final String title;
  final String content;
  CollectFirstPageDataEvent({
    required this.userModel,
    required this.postType,
    required this.workType,
    required this.title,
    required this.content,
  });
}

final class CollectSecondPageDataEvent extends CreatePostEvent {
  final List<String> skills;
  final String location;
  final String experience;
  final String remuneration;

  CollectSecondPageDataEvent({
    required this.experience,
    required this.location,
    required this.remuneration,
    required this.skills,
  });
}

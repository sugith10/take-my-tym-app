part of 'chat_list_bloc.dart';

sealed class ChatListState extends Equatable {
  const ChatListState();
  
  @override
  List<Object> get props => [];
}

final class ChatListInitial extends ChatListState {}

final class ChatListLoadingState extends ChatListState {}

final class ChatListLoadedState extends ChatListState {
  final Stream<DocumentSnapshot> chatList;

  const ChatListLoadedState({required this.chatList});
}
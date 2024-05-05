import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:take_my_tym/app_view.dart';
import 'package:take_my_tym/core/bloc/app_user_bloc/app_user_bloc.dart';
import 'package:take_my_tym/features/auth/presentation/bloc/sign_out_bloc/sign_out_bloc.dart';
import 'package:take_my_tym/features/message/presentation/bloc/chat_list_bloc/chat_list_bloc.dart';
import 'package:take_my_tym/features/view_post/presentation/bloc/delete_post_bloc/delete_post_bloc.dart';
import 'package:take_my_tym/features/view_post/presentation/bloc/read_post_bloc/read_post_bloc.dart';
import 'package:take_my_tym/features/create_post/presentation/bloc/update_post_bloc/update_post_bloc.dart';
import 'package:take_my_tym/features/home/presentation/bloc/community_posts_bloc/community_posts_bloc.dart';
import 'package:take_my_tym/features/wallet/domain/usecases/wallet_use_case.dart';
import 'package:take_my_tym/features/wallet/presentation/bloc/wallet_bloc/wallet_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppUserBloc>(create: (context) => AppUserBloc()),
        BlocProvider<GetPostsBloc>(
            create: (context) => GetPostsBloc()
              ..add(GetBuyTymPostsEvent(
                  userId: context.read<AppUserBloc>().appUserModel!.uid))),
        BlocProvider<CommunityPostsBloc>(
          create: (context) =>
              CommunityPostsBloc()..add(BuyTymCommunityPostsEvent()),
        ),
        BlocProvider<ChatListBloc>(
            create: (context) => ChatListBloc()
              ..add(
                GetChatList(
                    currentUid: context.read<AppUserBloc>().appUserModel!.uid),
              )),
        BlocProvider<WalletBloc>(
          create: (context) => WalletBloc(GetIt.instance<WalletUseCase>())
            ..add(
              WalletBalanceEvent(
                  uid: context.read<AppUserBloc>().appUserModel!.uid),
            ),
        ),
        BlocProvider<SignOutBloc>(create: (context) => SignOutBloc()),
        BlocProvider<DeletePostBloc>(create: (context) => DeletePostBloc()),
        BlocProvider<UpdatePostBloc>(create: (context) => UpdatePostBloc()),
      ],
      child: const MyAppView(),
    );
  }
}

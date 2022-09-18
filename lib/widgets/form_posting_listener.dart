import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum PostingType { created, updated, deleted }

class PostingListener<B extends StateStreamable<S>, S>
    extends MultiBlocListener {
  PostingListener({
    super.key,
    required this.child,
    required this.listenWhen,
    required this.listener,
  }) : super(
          listeners: [
            BlocListener<B, S>(
              listenWhen: (previous, current) =>
                  listenWhen(previous, current) == PostingType.created,
              listener: (context, state) =>
                  listener(context, state, PostingType.created),
            ),
            BlocListener<B, S>(
              listenWhen: (previous, current) =>
                  listenWhen(previous, current) == PostingType.updated,
              listener: (context, state) =>
                  listener(context, state, PostingType.updated),
            ),
            BlocListener<B, S>(
              listenWhen: (previous, current) =>
                  listenWhen(previous, current) == PostingType.deleted,
              listener: (context, state) =>
                  listener(context, state, PostingType.deleted),
            ),
          ],
          child: child,
        );
  static PostingListener id<B extends StateStreamable<S>, S>({
    Key? key,
    required Widget child,
    BlocListenerCondition<S>? listenWhen,
    required PostingIdListenerCondition<S> idExist,
    required PostingWidgetListener<S> listener,
  }) {
    return PostingListener<B, S>(
      key: key,
      listenWhen: (previous, current) {
        if (listenWhen?.call(previous, current) ?? true) {
          if (!idExist(previous)) {
            if (idExist(current)) {
              return PostingType.created;
            }
          } else {
            if (idExist(current)) {
              return PostingType.updated;
            } else {
              return PostingType.deleted;
            }
          }
        }
        return null;
      },
      listener: listener,
      child: child,
    );
  }

  final Widget child;
  final PostingListenerCondition<S> listenWhen;
  final PostingWidgetListener<S> listener;
}

typedef PostingIdListenerCondition<S> = bool Function(S state);

typedef PostingListenerCondition<S> = PostingType? Function(
    S previous, S current);

typedef PostingWidgetListener<S> = void Function(
  BuildContext context,
  S state,
  PostingType type,
);

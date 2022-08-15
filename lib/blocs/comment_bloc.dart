import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:perusahaan_pkp/services/services.dart';

import '../models/models.dart';

part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc() : super(CommentInitial()) {
    on<FetchComment>((event, emit) async {
      List<CommentModel> comments = await CommentServices.getListComment();

      emit(CommentLoaded(comments: comments));
    });
  }
}

import 'package:bloc/bloc.dart';
import '../../../../domain/use_cases/fetch_newest_books_usecase.dart';
import 'fetch_newest_books_state.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.fetchNewestBooksUseCase) : super(FetchNewestBooksInitial());
  final FetchNewestBooksUseCase fetchNewestBooksUseCase;
  Future<void> fetchNewestBooks()async{
    emit(FetchNewestBooksLoading());
    var result = await fetchNewestBooksUseCase.call();
    result.fold((failure){
      emit(FetchNewestBooksFailure(errorMessage: failure.message));
    },(success)
    {
      emit(FetchNewestBooksSuccess(books: success));
    });
  }
}
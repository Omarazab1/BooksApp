import 'package:bookly/Features/home/domain/use_cases/fetch_featured_books_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'fetch_featured_books_state.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.fetchFeaturedBooksUseCase) : super(FetchFeaturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async{
    if (pageNumber == 0) {
      emit(FetchFeaturedBooksLoading());
    } else {
         emit(FetchFeaturedBooksPaginationLoading());
    }
    var result = await fetchFeaturedBooksUseCase.call(pageNumber);
    result.fold((failure){
      if(pageNumber == 0) {
        emit(FetchFeaturedBooksFailure(errorMessage: failure.message));
      }else{
        emit(FetchFeaturedBooksPaginationFailure(errorMessage: failure.message));
      }
    },(success)
    {
      emit(FetchFeaturedBooksSuccess(books: success));
    });

  }
}
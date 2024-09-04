import 'package:bookly/Features/home/domain/home_entity.dart';

abstract class FetchFeaturedBooksState{}
class FetchFeaturedBooksInitial extends FetchFeaturedBooksState{}
class FetchFeaturedBooksLoading extends FetchFeaturedBooksState{}
class FetchFeaturedBooksPaginationLoading extends FetchFeaturedBooksState{}
class FetchFeaturedBooksPaginationFailure extends FetchFeaturedBooksState{
  final String errorMessage;
  FetchFeaturedBooksPaginationFailure({required this.errorMessage});
}
class FetchFeaturedBooksSuccess extends FetchFeaturedBooksState{
  final List<HomeEntity> books;
  FetchFeaturedBooksSuccess({required this.books});
}
class FetchFeaturedBooksFailure extends FetchFeaturedBooksState{
  final String errorMessage;
  FetchFeaturedBooksFailure({required this.errorMessage});
}
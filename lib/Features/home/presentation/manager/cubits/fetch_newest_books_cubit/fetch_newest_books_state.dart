import 'package:bookly/Features/home/domain/home_entity.dart';

abstract class FetchNewestBooksState{}
class FetchNewestBooksInitial extends FetchNewestBooksState{}
class FetchNewestBooksLoading extends FetchNewestBooksState{}
class FetchNewestBooksSuccess extends FetchNewestBooksState{
  final List<HomeEntity> books;
  FetchNewestBooksSuccess({required this.books});
}
class FetchNewestBooksFailure extends FetchNewestBooksState{
  final String errorMessage;
  FetchNewestBooksFailure({required this.errorMessage});
}
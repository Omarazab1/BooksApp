import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import 'home_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<HomeEntity>>> fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failure,List<HomeEntity>>> fetchNewestBooks();


}
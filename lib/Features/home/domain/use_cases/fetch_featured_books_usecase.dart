import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/use_cases/use_case.dart';
import '../home_entity.dart';
import '../home_repo.dart';
class FetchFeaturedBooksUseCase extends UseCase <List<HomeEntity>, int >{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<HomeEntity>>> call([int params = 0 ]) async {
    return await homeRepo.fetchFeaturedBooks(
        pageNumber: params,
    );
  }
}

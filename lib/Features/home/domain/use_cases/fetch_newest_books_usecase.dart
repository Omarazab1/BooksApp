
  import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/no_param.dart';
import '../../../../core/use_cases/use_case.dart';
import '../home_entity.dart';
import '../home_repo.dart';

class FetchNewestBooksUseCase extends UseCase <List<HomeEntity>,NoParam>{
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<HomeEntity>>> call([NoParam? params]) async {
  return await homeRepo.fetchNewestBooks();
  throw UnimplementedError();
  }
}
class NoParam{}
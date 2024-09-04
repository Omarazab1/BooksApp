
import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';

import '../../Features/home/data/data_sources/home_remote_data_source.dart';
import 'functions/setup_service_locator.dart';

void SetupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService( Dio()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
         getIt.get<ApiService>(),
      ),
    ),
  );
}
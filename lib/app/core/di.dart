import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task_preview_tech/data/data_source/git_repos_local_data_source.dart';
import 'package:task_preview_tech/data/data_source/git_repos_remote_data_source.dart';
import 'package:task_preview_tech/data/repository/get_git_repos_repository_impl.dart';
import 'package:task_preview_tech/domain/repository/get_git_repos_repository.dart';
import '../../data/helper/sqflite_database_helper.dart';
import '../../data/network/network_info.dart';
import '../../domain/use_cases/get_otp_use_case.dart';
import 'config.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  final Connectivity connectivity = Connectivity();
  final NetworkInfo networkInfo = NetworkInfoImpl(connectivity);
  final Database? database = await SQFLiteDatabaseHelper.instance.database;
  final GitReposLocalDataSource gitReposLocalDataSource = GitReposLocalDataSourceImpl(database);
  final GitReposRemoteDataSource gitReposRemoteDataSource = GitReposRemoteDataSourceImpl();
  final GetGitReposRepository getGitReposRepository = GetGitReposRepositoryImpl(networkInfo,gitReposRemoteDataSource,gitReposLocalDataSource);
  final GetGitReposUseCase getGitReposUseCase = GetGitReposUseCase(getGitReposRepository: getGitReposRepository);

  getIt.registerSingleton<GitReposLocalDataSource>(gitReposLocalDataSource);
  getIt.registerSingleton<GetGitReposUseCase>(getGitReposUseCase);
  getIt.registerSingleton<NetworkInfo>(networkInfo);
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:task_preview_tech/data/repository/get_git_repos_repository_impl.dart';
import 'package:task_preview_tech/domain/repository/get_git_repos_repository.dart';
import '../../data/network/network_info.dart';
import '../../domain/use_cases/get_otp_use_case.dart';
import 'config.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  final Connectivity connectivity = Connectivity();
  final NetworkInfo networkInfo = NetworkInfoImpl(connectivity);
  final GetGitReposRepository getOTPRepository = GetGitReposRepositoryImpl(networkInfo);
  final GetGitReposUseCase getOTP = GetGitReposUseCase(getGitReposRepository: getOTPRepository);

  getIt.registerSingleton<GetGitReposUseCase>(getOTP);
  getIt.registerSingleton<NetworkInfo>(networkInfo);
}

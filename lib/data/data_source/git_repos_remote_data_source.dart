
import 'dart:io';

import 'package:task_preview_tech/domain/models/data_model.dart';

import '../network/api_base_client.dart';
import '../network/api_routes.dart';


abstract class GitReposRemoteDataSource {

  Future<List<DataModel>> getGitReposList(int pageNumber);

}

class GitReposRemoteDataSourceImpl implements GitReposRemoteDataSource {

  GitReposRemoteDataSourceImpl();

  @override
  Future<List<DataModel>> getGitReposList(int pageNumber) async{
    final res = await ApiBaseClient.client.get(
      "${APIRoutes.getRepos}?page=$pageNumber&per_page=15",
    );
    if(res.statusCode == HttpStatus.ok){
      try{
        print(res);
        return dataModelFromJson(res.data);
      }catch(e){
        print(e);
        throw Exception("typecast error");
      }
    }
    throw res;
  }
}

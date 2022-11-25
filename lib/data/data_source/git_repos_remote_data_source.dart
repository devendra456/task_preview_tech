
import 'dart:io';

import '../models/data_model.dart';
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
      final List<DataModel> data = [];
      try{
        final json = res.data;
        for(int i=0;i<json.length;i++){
          data.add(DataModel.fromJson(json[i]));
        }
        return data;
      }catch(e){
        print(e);
        throw Exception("typecast error");
      }
    }
    throw res;
  }
}

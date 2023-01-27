import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_app/models/github_data.dart';

final fetchDataProvider =
    FutureProvider.autoDispose.family<List<dynamic>?, String>((ref, id) async {
  final githubRepository = ref.read(githubRepositoryProvider);
  final data = await githubRepository.fetchRepository(id);
  print(data);
  return data;
});

final githubRepositoryProvider = Provider((ref) => GitHubRepository());

class GitHubRepository {
  Future<List<dynamic>?> fetchRepository(String? query) async {
    final url =
        'https://api.github.com/search/repositories?sort=stars&q=$query';
    final dio = Dio();
    try {
      final res = await dio.get(url);
      if (res.statusCode == 200 && res.data != null) {
        final data = res.data;
        final items = data['items'];
        final dataList = items.map((e) => GitHubData.fromJson(e)).toList();
        return dataList;
      } else {
        print('403!!!');
        // throw Exception();
      }
    } on DioError catch (e) {
      print(
        e.toString(),
      );
    }
    return null;
  }
}

class FetchRepositoryNotifier
    extends StateNotifier<AsyncValue<List<dynamic>?>> {
  FetchRepositoryNotifier(this.ref) : super(const AsyncLoading()) {
    fetchData('kz422');
  }
  final Ref ref;

  Future fetchData(String? query) async {
    final githubRepository = ref.read(githubRepositoryProvider);
    final data = await githubRepository.fetchRepository(query);
    state = AsyncValue.data(data);
  }
}

final snpProvider =
    StateNotifierProvider<FetchRepositoryNotifier, AsyncValue<List<dynamic>?>>(
        (ref) => FetchRepositoryNotifier(ref));

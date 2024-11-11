import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import '../data_source/data_source.dart';
import '../data_source/data_source_remote.dart';
import '../repository/repository.dart';
import '../repository/repository_remote.dart';

final repositoryProvider = Provider(
  (ref) {
    final dioProvider = Dio();
    DataSource dataSource = DataSourceRemote(dioProvider);
    Repository repository = RepositoryRemote(dataSource: dataSource);
    return repository;
  },
);

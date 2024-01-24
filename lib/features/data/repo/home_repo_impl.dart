import 'package:dartz/dartz.dart';
import 'package:hotkot/core/data/api/api_service.dart';
import 'package:hotkot/core/error/failure.dart';
import 'package:hotkot/features/home/domain/entities/cat.dart';
import 'package:hotkot/features/home/domain/repos/home_repo.dart';
import 'package:hotkot/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepo, env: ['debuge', 'prod'])
class HomeRepImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<Cat>>> random15() async {
    try {
      List<Cat> cats = [];
      var api = await getIt.get<APIService>().get("/images/search?limit=15");
      for (var element in api) {
        cats.add(Cat.fromMap(element));
      }
      return right(cats);
    } catch (e) {
      return left(Failure("xx"));
    }
  }
}

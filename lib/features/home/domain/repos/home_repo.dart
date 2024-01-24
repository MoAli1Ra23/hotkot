import 'package:dartz/dartz.dart';
import 'package:hotkot/core/error/failure.dart';

import '../entities/cat.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Cat>>> random15();
}

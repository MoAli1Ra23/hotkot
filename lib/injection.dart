import 'package:get_it/get_it.dart';
import 'package:hotkot/injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String env) async {
  getIt.init(environment: env);
}

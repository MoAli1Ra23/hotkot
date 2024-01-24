import 'package:flutter/material.dart';
import 'package:hotkot/features/home/domain/entities/cat.dart';
import 'package:hotkot/features/home/domain/repos/home_repo.dart';
import 'package:hotkot/injection.dart';

import '../../../../core/enums/vm_state.dart';

class HomeViewModel with ChangeNotifier {
  List<Cat> cats = [];
  String erro = "";
  ViewModelState state = ViewModelState.loading;

  Future<void> loadCats() async {
    var repo = getIt.get<HomeRepo>();
    var x = await repo.random15();
    if (x.isLeft()) {
      state = ViewModelState.failure;
      erro = "some Error";
    } else {
      state = ViewModelState.loaded;
      x.fold((l) => null, (r) {
        cats = r;
      });
    }
    notifyListeners();
  }
}

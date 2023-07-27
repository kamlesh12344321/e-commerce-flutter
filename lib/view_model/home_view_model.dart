

import 'package:ecommerce_flutter_new/data/response/api_response.dart';
import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/repository/explore_repository.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';


import '../utils/utils.dart';


class HomeViewModel with ChangeNotifier {
  final _myRepo = ExploreRepository();
  ApiResponse<ExploreHome> homeExploreData = ApiResponse.loading();

  setHomeExploreData(ApiResponse<ExploreHome> response){
    homeExploreData = response;
    notifyListeners();
  }

  Future<void> homeExploreApi(String token, BuildContext context) async {
     setHomeExploreData(ApiResponse.loading());
    _myRepo.homeExploreApi(token).then((value) {
      developer.log('exploreHomeData', name:"true");
      setHomeExploreData(ApiResponse.completed(value));
      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace){
      setHomeExploreData(ApiResponse.error(error.toString()));
      Utils.flushBarErrorMessage(error.toString(), context);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
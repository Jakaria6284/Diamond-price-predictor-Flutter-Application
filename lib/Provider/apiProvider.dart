import 'package:diamon_price_predictor/Model/PredictModel.dart';
import 'package:flutter/material.dart';

import '../Service/apiService.dart';

class apiProvider extends ChangeNotifier{
  final apiService service=apiService();
  String _result='';
  bool _loading=false;

  String get result=>_result;
  bool get loading=>_loading;

  Future<void> predict(predictModel model) async {
    _loading = true;
    notifyListeners();

    try {
      final prediction = await service.makePrediction(model);
      _result = prediction ?? 'Error: Prediction failed';  // Handle null prediction
    } catch (e) {
      _result = 'Error: $e';
    } finally {
      _loading = false;
      notifyListeners();
    }
  }


}
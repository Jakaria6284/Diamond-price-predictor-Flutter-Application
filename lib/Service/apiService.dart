import 'dart:convert';

import 'package:diamon_price_predictor/Model/PredictModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class apiService{
  final String baseUrl='http://127.0.0.1:8000/predict';

  Future<String?> makePrediction(predictModel model) async {
    final header = {
      'Content-Type': 'application/json'
    };

    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: header,
        body: jsonEncode(model.toJson()),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("Response Data: $data");  // To debug and check the response
        return data['predicted_price'].toString();  // Change from 'prediction' to 'predicted_price'
      } else {
        print("Failed to get prediction. Status code: ${response.statusCode}");
        return 'Error: ${response.statusCode}';
      }

    } catch (e) {
      throw Exception('Error: $e');
    }
  }

}
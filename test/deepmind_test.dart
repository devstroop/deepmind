import 'dart:developer';
import 'package:deepmind/src/models/deep_request.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('create google gemini instance', () {
    final response = DeepRequest(apiKey:"API_KEY");
    expect(response.apiKey, "API_KEY");
  });

  test('Api response', () {
    final response = DeepRequest(
        apiKey:"API_KEY",
        model: "gemini-pro"
    );
    log("Writing a story");
    response.generateText("Tell me a story").then((value) => print(value));
    expect(1, 1);
  });
}
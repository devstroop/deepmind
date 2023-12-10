


import 'deep_response_candidate.dart';

/// Format the response from the google generativeai server into a more readable format
/// This class is used to create a instance of GeminiHttpResponse from http response
class DeepResponse{

  final List<DeepResponseCandidate> candidates;
  Map<String, dynamic>? promptFeedback = {
    "safetyRatings": []
  };

  DeepResponse({
    required this.candidates,
    this.promptFeedback
  });

  /// Create a GeminiHttpResponse from a json
  /// populates the candidates list from the json
  /// populates the promptFeedback from the json
  factory DeepResponse.fromJson(Map<String, dynamic> json) {
    List<DeepResponseCandidate> responseCandidates = [];
    for (var candidate in json['candidates']) {
      responseCandidates.add(DeepResponseCandidate.fromJson(candidate));
    }
    return DeepResponse(
        candidates: responseCandidates,
        promptFeedback: json['promptFeedback']
    );
  }

  /// Convert a GeminiHttpResponse to a json
  /// converts the candidates list to a json
  /// populates the promptFeedback
  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> localCandidates = [];
    for (var candidate in candidates) {
      localCandidates.add(candidate.toJson());
    }
    return {
      'candidates': candidates,
      'promptFeedback': promptFeedback
    };
  }

}
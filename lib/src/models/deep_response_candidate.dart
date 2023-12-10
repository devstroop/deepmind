
/// The Response from the Google Generativeai can hold multiple candidates
/// This class is used to create a instance of a candidate
class DeepResponseCandidate {

  final String? finishReason;
  final int index;
  Map<String, dynamic>? content = {
    "parts": [],
    "role": "model"
  };
  final List safetyRatings;

  DeepResponseCandidate({
    this.finishReason,
    required this.index,
    this.content,
    required this.safetyRatings
  });

  /// Create a GeminiHttpResponseCandidate from a json
  factory DeepResponseCandidate.fromJson(Map<String, dynamic> json) {
    return DeepResponseCandidate(
        finishReason: json['finishReason'],
        index: json['index'],
        content: json['content'],
        safetyRatings: json['safetyRatings']
    );
  }

  /// Convert a GeminiHttpResponseCandidate to a json
  Map<String, dynamic> toJson() {
    return {
      'finishReason': finishReason,
      'index': index,
      'content': content,
      'safetyRatings': safetyRatings
    };
  }

}

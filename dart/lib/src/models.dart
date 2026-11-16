/// Response models for the Text Readability Score API.

/// API Response wrapper.
class ReadabilityscoreResponse {
  final String status;
  final dynamic error;
  final ReadabilityscoreData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ReadabilityscoreResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ReadabilityscoreResponse.fromJson(Map<String, dynamic> json) => ReadabilityscoreResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ReadabilityscoreData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Text Readability Score API.

class ReadabilityscoreData {
  ReadabilityscoreDataTextcounts? textCounts;
  ReadabilityscoreDataReadability? readability;
  ReadabilityscoreDataReadabilitytext? readabilityText;
  num? averageGradeLevel;
  String? targetAudience;

  ReadabilityscoreData({
    this.textCounts,
    this.readability,
    this.readabilityText,
    this.averageGradeLevel,
    this.targetAudience,
  });

  factory ReadabilityscoreData.fromJson(Map<String, dynamic> json) => ReadabilityscoreData(
      textCounts: json['textCounts'] != null ? ReadabilityscoreDataTextcounts.fromJson(json['textCounts']) : null,
      readability: json['readability'] != null ? ReadabilityscoreDataReadability.fromJson(json['readability']) : null,
      readabilityText: json['readabilityText'] != null ? ReadabilityscoreDataReadabilitytext.fromJson(json['readabilityText']) : null,
      averageGradeLevel: json['averageGradeLevel'],
      targetAudience: json['targetAudience'],
    );
}

class ReadabilityscoreDataTextcounts {
  num? syllableCount;
  num? lexiconCount;
  num? sentenceCount;

  ReadabilityscoreDataTextcounts({
    this.syllableCount,
    this.lexiconCount,
    this.sentenceCount,
  });

  factory ReadabilityscoreDataTextcounts.fromJson(Map<String, dynamic> json) => ReadabilityscoreDataTextcounts(
      syllableCount: json['syllableCount'],
      lexiconCount: json['lexiconCount'],
      sentenceCount: json['sentenceCount'],
    );
}

class ReadabilityscoreDataReadability {
  num? fleschReadingEase;
  num? fleschKincaidGrade;
  num? gunningFog;
  num? colemanLiauIndex;
  num? smogIndex;
  num? automatedReadabilityIndex;
  num? daleChallReadabilityScore;

  ReadabilityscoreDataReadability({
    this.fleschReadingEase,
    this.fleschKincaidGrade,
    this.gunningFog,
    this.colemanLiauIndex,
    this.smogIndex,
    this.automatedReadabilityIndex,
    this.daleChallReadabilityScore,
  });

  factory ReadabilityscoreDataReadability.fromJson(Map<String, dynamic> json) => ReadabilityscoreDataReadability(
      fleschReadingEase: json['fleschReadingEase'],
      fleschKincaidGrade: json['fleschKincaidGrade'],
      gunningFog: json['gunningFog'],
      colemanLiauIndex: json['colemanLiauIndex'],
      smogIndex: json['smogIndex'],
      automatedReadabilityIndex: json['automatedReadabilityIndex'],
      daleChallReadabilityScore: json['daleChallReadabilityScore'],
    );
}

class ReadabilityscoreDataReadabilitytext {
  String? fleschReadingEase;
  String? daleChallReadabilityScore;

  ReadabilityscoreDataReadabilitytext({
    this.fleschReadingEase,
    this.daleChallReadabilityScore,
  });

  factory ReadabilityscoreDataReadabilitytext.fromJson(Map<String, dynamic> json) => ReadabilityscoreDataReadabilitytext(
      fleschReadingEase: json['fleschReadingEase'],
      daleChallReadabilityScore: json['daleChallReadabilityScore'],
    );
}

class ReadabilityscoreRequest {
  String text;

  ReadabilityscoreRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}

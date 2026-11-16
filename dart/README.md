# Text Readability Score API - Dart/Flutter Client

Text Readability Score calculates the readability score and grade level of any text across standard formulas. It returns Flesch Reading Ease, Gunning Fog, Coleman-Liau, syllable and word counts, an average grade level, and a target audience label.

[![pub package](https://img.shields.io/pub/v/apiverve_readabilityscore.svg)](https://pub.dev/packages/apiverve_readabilityscore)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Text Readability Score API](https://apiverve.com/marketplace/readabilityscore?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_readabilityscore: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_readabilityscore/apiverve_readabilityscore.dart';

void main() async {
  final client = ReadabilityscoreClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Western astrology is founded on the movements and relative positions of celestial bodies such as the Sun, Moon and planets, which are analysed by their movement through signs of the zodiac (twelve spatial divisions of the ecliptic) and by their aspects (based on geometric angles) relative to one another.'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "textCounts": {
      "syllableCount": 82,
      "lexiconCount": 49,
      "sentenceCount": 1
    },
    "readability": {
      "fleschReadingEase": 15.52,
      "fleschKincaidGrade": 23.3,
      "gunningFog": 26.95,
      "colemanLiauIndex": 13.19,
      "smogIndex": 22.08,
      "automatedReadabilityIndex": 27.8,
      "daleChallReadabilityScore": 17
    },
    "readabilityText": {
      "fleschReadingEase": "very confusing",
      "daleChallReadabilityScore": "average 13th to 15th-grade (college) student"
    },
    "averageGradeLevel": 22.7,
    "targetAudience": "post-graduate"
  }
}
```

## API Reference

- **API Home:** [Text Readability Score API](https://apiverve.com/marketplace/readabilityscore?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/readabilityscore](https://docs.apiverve.com/ref/readabilityscore?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

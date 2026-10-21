# Text Readability Score API - PHP Package

Text Readability Score calculates the readability score and grade level of any text across standard formulas. It returns Flesch Reading Ease, Gunning Fog, Coleman-Liau, syllable and word counts, an average grade level, and a target audience label.

## Installation

Install via Composer:

```bash
composer require apiverve/readabilityscore
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Readabilityscore\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'Western astrology is founded on the movements and relative positions of celestial bodies such as the Sun, Moon and planets, which are analysed by their movement through signs of the zodiac (twelve spatial divisions of the ecliptic) and by their aspects (based on geometric angles) relative to one another.']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Readabilityscore\Client;
use APIVerve\Readabilityscore\Exceptions\APIException;
use APIVerve\Readabilityscore\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Western astrology is founded on the movements and relative positions of celestial bodies such as the Sun, Moon and planets, which are analysed by their movement through signs of the zodiac (twelve spatial divisions of the ecliptic) and by their aspects (based on geometric angles) relative to one another.']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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
      "fleschReadingEase": 13.28,
      "fleschKincaidGrade": 23.6,
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/readabilityscore?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/readabilityscore?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/readabilityscore?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

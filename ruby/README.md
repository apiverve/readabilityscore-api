# Text Readability Score API - Ruby Gem

Text Readability Score calculates the readability score and grade level of any text across standard formulas. It returns Flesch Reading Ease, Gunning Fog, Coleman-Liau, syllable and word counts, an average grade level, and a target audience label.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_readabilityscore'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_readabilityscore
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_readabilityscore'

# Initialize the client
client = APIVerve::Readabilityscore::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "Western astrology is founded on the movements and relative positions of celestial bodies such as the Sun, Moon and planets, which are analysed by their movement through signs of the zodiac (twelve spatial divisions of the ecliptic) and by their aspects (based on geometric angles) relative to one another." })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Western astrology is founded on the movements and relative positions of celestial bodies such as the Sun, Moon and planets, which are analysed by their movement through signs of the zodiac (twelve spatial divisions of the ecliptic) and by their aspects (based on geometric angles) relative to one another." })
  puts response["data"]
rescue APIVerve::Readabilityscore::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Readabilityscore::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Readabilityscore::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/readabilityscore?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/readabilityscore?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/readabilityscore?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

require 'pry'
def dictionary(word = "For")
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  return words.key?(word.downcase) ? words[word.downcase] : word
  # if words.key?(word)
  #   return words[word]
  # else
  #   return word
  # end
end

def word_substituter(tweet)
  new_array = []
  tweet_array = tweet.split
  tweet_array.each_with_index do |word, index|
    new_array << dictionary(word)
  end
  new_array.join (" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweet_string)
  return tweet_string.length > 140 ? word_substituter(tweet_string) : tweet_string
  # if tweet_string.length > 140
  #   return word_substituter(tweet_string)
  # else
  #   return tweet_string
  # end
end

def shortened_tweet_truncator(tweet_string)
  if tweet_string.length > 140
    shortened_tweet = word_substituter(tweet_string)
    if shortened_tweet.length > 140
      return shortened_tweet[0..136].concat("...")
    else
      return shortened_tweet
    end
  else
    return tweet_string
  end
end

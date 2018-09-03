# frozen_string_literal: true

module Utils
  class << self
    def obj_to_hash(obj)
      obj.instance_variables.each_with_object({}) do |value, hash|
        hash[value.to_s.delete('@')] = obj.instance_variable_get(value)
      end
    end

    def hash_key_to_sym(args)
      args.each_with_object({}) { |(key, value), memo| memo[key.to_sym] = value }
    end
  end

  class Twitter
    class << self
      def create_profile_link(args)
        twitter_url + args
      end

      def create_tweet_link(args)
        twitter_url + args[:screen_name] + '/status/' + args[:tweet_id].to_s
      end

      private

      def twitter_url
        'https://twitter.com/'
      end
    end
  end
end

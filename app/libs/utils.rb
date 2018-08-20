# frozen_string_literal: true

module Utils
  class << self
    def obj_to_hash(obj)
      obj.instance_variables.each_with_object({}) do |value, hash|
        hash[value.to_s.delete('@')] = obj.instance_variable_get(value)
      end
    end
  end

  class Twitter
    class << self
      def create_profile_link(args)
        'https://twitter.com/' + args
      end

      def create_tweet_link(args)
        'https://twitter.com/' +
          args[:screen_name] + '/status/' + args[:tweet_id].to_s
      end
    end
  end
end

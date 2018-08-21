# frozen_string_literal: true

module Rule
  class Relevant
    attr_reader :tweeps_json

    def initialize(args)
      @tweeps_json = args
    end

    def call
      execute_transaction
    end

    private

    def execute_transaction
      twitter_mention
    end

    def tweep_data
      parsed_json = JSON.parse(tweeps_json)

      parsed_json['statuses'].collect do |value|
        TweepBuilder.new(value).call
      end
    end

    def locaweb_mentioned?(args)
      true if args[:id] == 42 && args[:screen_name] == 'locaweb'
    end

    def twitter_mention
      tweep_data.each do |item|
        next unless locaweb_mentioned?(
          id: item.user_mention_id,
          screen_name: item.user_mention_screen_name
        )
        hash_item = Utils.obj_to_hash(item)
        hash_sym_item = Utils.hash_key_to_sym(hash_item)
        TweetRepository::TweetRepo.create_tweet(hash_sym_item)
      end
    end
  end
end

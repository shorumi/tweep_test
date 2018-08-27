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
      apply_locaweb_rules
    end

    def tweep_data
      parsed_json = tweeps_json

      parsed_json['statuses'].collect do |value|
        TweepBuilder.new(value).call
      end
    end

    def locaweb_mentioned?(item)
      true if item.user_mention_id == 42 && item.screen_name == 'locaweb'
    end

    def replied_to_locaweb?(item)
      true if item.in_reply_to_user_id == 42 && item.in_reply_to_screen_name == 'locaweb'
    end

    def apply_locaweb_rules
      tweep_data.each do |item|
        next unless locaweb_mentioned?(item) && !replied_to_locaweb?(item)
        hash_item = Utils.obj_to_hash(item)
        hash_sym_item = Utils.hash_key_to_sym(hash_item)
        MostRelevantRepository::MostRelevantRepo.create_most_relevant(hash_sym_item)
        MostMentionRepository::MostMentionRepo.create_most_mention(hash_sym_item)
      end
    end
  end
end

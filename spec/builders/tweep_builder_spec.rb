# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'app/builders/tweep_builder.rb' do
  describe TweepBuilder, 'validates' do
    context 'It should returns a populated Tweep object' do
      let(:tweep) do
        tweep_json = JSON('
          {
            "coordinates": null,
            "favorited": false,
            "truncated": false,
            "created_at": "Mon Sep 24 03:35:21 +0000 2012",
            "id_str": "550602",
            "entities": {
                "urls": [],
                "hashtags": [],
                "user_mentions": [
                    {
                        "screen_name": "locaweb",
                        "name": "Locaweb",
                        "id": 42,
                        "id_str": "42",
                        "indices": [
                            0,
                            8
                        ]
                    }
                ]
            },
            "in_reply_to_user_id_str": "42",
            "contributors": null,
            "text": "@locaweb Use the optical EXE pixel, then you can program the redundant card!",
            "metadata": {
                "iso_language_code": "pt",
                "result_type": "recent"
            },
            "retweet_count": 1,
            "in_reply_to_status_id_str": "342133",
            "id": 550602,
            "geo": null,
            "retweeted": true,
            "in_reply_to_user_id": 42,
            "place": null,
            "favorite_count": 0,
            "user": {
                "profile_sidebar_fill_color": "DDEEF6",
                "profile_sidebar_border_color": "C0DEED",
                "profile_background_tile": false,
                "name": "Iii Shields Candice",
                "profile_image_url": "http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                "created_at": "Mon Apr 26 06:01:55 +0000 2010",
                "location": "LA, CA",
                "follow_request_sent": null,
                "profile_link_color": "0084B4",
                "is_translator": false,
                "id_str": "242570",
                "entities": {
                    "url": {
                        "urls": [
                            {
                                "expanded_url": null,
                                "url": "",
                                "indices": [
                                    0,
                                    0
                                ]
                            }
                        ]
                    },
                    "description": {
                        "urls": []
                    }
                },
                "default_profile": true,
                "contributors_enabled": false,
                "favourites_count": 30,
                "url": null,
                "profile_image_url_https": "https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                "utc_offset": -28800,
                "id": 242570,
                "profile_use_background_image": true,
                "listed_count": 2,
                "profile_text_color": "333333",
                "lang": "en",
                "followers_count": 434,
                "protected": false,
                "notifications": null,
                "profile_background_image_url_https": "https://si0.twimg.com/images/themes/theme1/bg.png",
                "profile_background_color": "C0DEED",
                "verified": false,
                "geo_enabled": true,
                "time_zone": "Pacific Time (US & Canada)",
                "description": "Born 330 Live 310",
                "default_profile_image": false,
                "profile_background_image_url": "http://a0.twimg.com/images/themes/theme1/bg.png",
                "statuses_count": 579,
                "friends_count": 434,
                "following": null,
                "show_all_inline_media": false,
                "screen_name": "iii_shields_candice"
            },
            "in_reply_to_screen_name": "locaweb",
            "source": "web",
            "in_reply_to_status_id": 342133
        }')
        TweepBuilder.new(tweep_json).call
      end

      it do
        expect(tweep.user_mention_id).to eq(42)
        expect(tweep.user_mention_screen_name).to eq('locaweb')
        expect(tweep.followers_count).to eq(434)
        expect(tweep.profile_link).to eq('https://twitter.com/locaweb')
        expect(tweep.retweeted).to eq(true)
        expect(tweep.retweet_count).to eq(1)
        expect(tweep.favourites_count).to eq(30)
        expect(tweep.text).to eq('@locaweb Use the optical EXE pixel, then you can program the redundant card!')
        expect(tweep.tweet_created_at).to eq('Mon Sep 24 03:35:21 +0000 2012')
        expect(tweep.tweet_link).to eq('https://twitter.com/locaweb/status/550602')
        expect(tweep.in_reply_to_user_id).to eq(42)
        expect(tweep.in_reply_to_screen_name).to eq('locaweb')
        expect(tweep.tweet_external_id).to eq(550602)
        expect(tweep.user_external_id).to eq(242570)
      end
    end
  end
end

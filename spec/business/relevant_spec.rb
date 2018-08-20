# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Rule::Relevant do
  describe 'app/rule/business/relevant.rb' do
    describe '.Relevant' do
      describe '#most_relevant' do
        before(:each) do
          @relevant = Rule::Relevant.new(
            {
              'statuses' => [
                {
                  "coordinates": '',
                  "favorited": true,
                  "truncated": false,
                  "created_at": 'Mon Sep 24 03:35:21 +0000 2012',
                  "id_str": '743014',
                  "entities": {
                    "urls": [],
                    "hashtags": [],
                    "user_mentions": [
                      {
                        "screen_name": 'locaweb',
                        "name": 'Locaweb',
                        "id": 42,
                        "id_str": '42',
                        "indices": [
                          17,
                          25
                        ]
                      }
                    ]
                  },
                  "in_reply_to_user_id_str": '15142',
                  "contributors": '',
                  "text": 'Use the multi-by @locaweb n generate the haptic driver!',
                  "metadata": {
                    "iso_language_code": 'pt',
                    "result_type": 'recent'
                  },
                  "retweet_count": 5,
                  "in_reply_to_status_id_str": '373029',
                  "id": 743_014,
                  "geo": '',
                  "retweeted": true,
                  "in_reply_to_user_id": 15_142,
                  "place": '',
                  "favorite_count": 148,
                  "user": {
                    "profile_sidebar_fill_color": 'DDEEF6',
                    "profile_sidebar_border_color": 'C0DEED',
                    "profile_background_tile": false,
                    "name": 'Haag Skyla',
                    "profile_image_url": 'http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg',
                    "created_at": 'Mon Apr 26 06:01:55 +0000 2010',
                    "location": 'LA, CA',
                    "follow_request_sent": '',
                    "profile_link_color": '0084B4',
                    "is_translator": false,
                    "id_str": '208782',
                    "entities": {
                      "url": {
                        "urls": [
                          {
                            "expanded_url": '',
                            "url": '',
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
                    "favourites_count": 41,
                    "url": '',
                    "profile_image_url_https": 'https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg',
                    "utc_offset": -28_800,
                    "id": 208_782,
                    "profile_use_background_image": true,
                    "listed_count": 2,
                    "profile_text_color": '333333',
                    "lang": 'en',
                    "followers_count": 180,
                    "protected": false,
                    "notifications": '',
                    "profile_background_image_url_https": 'https://si0.twimg.com/images/themes/theme1/bg.png',
                    "profile_background_color": 'C0DEED',
                    "verified": false,
                    "geo_enabled": true,
                    "time_zone": 'Pacific Time (US & Canada)',
                    "description": 'Born 330 Live 310',
                    "default_profile_image": false,
                    "profile_background_image_url": 'http://a0.twimg.com/images/themes/theme1/bg.png',
                    "statuses_count": 579,
                    "friends_count": 180,
                    "following": '',
                    "show_all_inline_media": false,
                    "screen_name": 'haag_skyla'
                  },
                  "in_reply_to_screen_name": 'elenor_labadie',
                  "source": 'web',
                  "in_reply_to_status_id": 373_029
                },
                {
                  "coordinates": '',
                  "favorited": false,
                  "truncated": false,
                  "created_at": 'Mon Sep 24 03:35:21 +0000 2012',
                  "id_str": '884889',
                  "entities": {
                    "urls": [],
                    "hashtags": [],
                    "user_mentions": [
                      {
                        "screen_name": 'aurore_rohan',
                        "name": 'Aurore Rohan',
                        "id": 75_220,
                        "id_str": '75220',
                        "indices": [
                          1,
                          14
                        ]
                      }
                    ]
                  },
                  "in_reply_to_user_id_str": '75220',
                  "contributors": '',
                  "text": '@aurore_rohan If we override the circuit, we can get to the HTTP transm',
                  "metadata": {
                    "iso_language_code": 'pt',
                    "result_type": 'recent'
                  },
                  "retweet_count": 0,
                  "in_reply_to_status_id_str": '475396',
                  "id": 884_889,
                  "geo": '',
                  "retweeted": false,
                  "in_reply_to_user_id": 75_220,
                  "place": '',
                  "favorite_count": 0,
                  "user": {
                    "profile_sidebar_fill_color": 'DDEEF6',
                    "profile_sidebar_border_color": 'C0DEED',
                    "profile_background_tile": false,
                    "name": 'Jules Carroll',
                    "profile_image_url": 'http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg',
                    "created_at": 'Mon Apr 26 06:01:55 +0000 2010',
                    "location": 'LA, CA',
                    "follow_request_sent": '',
                    "profile_link_color": '0084B4',
                    "is_translator": false,
                    "id_str": '43806',
                    "entities": {
                      "url": {
                        "urls": [
                          {
                            "expanded_url": '',
                            "url": '',
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
                    "favourites_count": 48,
                    "url": '',
                    "profile_image_url_https": 'https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg',
                    "utc_offset": -28_800,
                    "id": 43_806,
                    "profile_use_background_image": true,
                    "listed_count": 2,
                    "profile_text_color": '333333',
                    "lang": 'en',
                    "followers_count": 748,
                    "protected": false,
                    "notifications": '',
                    "profile_background_image_url_https": 'https://si0.twimg.com/images/themes/theme1/bg.png',
                    "profile_background_color": 'C0DEED',
                    "verified": false,
                    "geo_enabled": true,
                    "time_zone": 'Pacific Time (US & Canada)',
                    "description": 'Born 330 Live 310',
                    "default_profile_image": false,
                    "profile_background_image_url": 'http://a0.twimg.com/images/themes/theme1/bg.png',
                    "statuses_count": 579,
                    "friends_count": 748,
                    "following": '',
                    "show_all_inline_media": false,
                    "screen_name": 'jules_carroll'
                  },
                  "in_reply_to_screen_name": 'aurore_rohan',
                  "source": 'web',
                  "in_reply_to_status_id": 475_396
                },
                {
                  "coordinates": '',
                  "favorited": false,
                  "truncated": false,
                  "created_at": 'Mon Sep 24 03:35:21 +0000 2012',
                  "id_str": '954690',
                  "entities": {
                    "urls": [],
                    "hashtags": [],
                    "user_mentions": [
                      {
                        "screen_name": 'mr_ruth_mccullough',
                        "name": 'Mr Ruth Mccullough',
                        "id": 197_942,
                        "id_str": '197942',
                        "indices": [
                          11,
                          30
                        ]
                      }
                    ]
                  },
                  "in_reply_to_user_id_str": '',
                  "contributors": '',
                  "text": "You can't  @mr_ruth_mccullough ithout backing up the cross-platform PNG capacitor!",
                  "metadata": {
                    "iso_language_code": 'pt',
                    "result_type": 'recent'
                  },
                  "retweet_count": 4,
                  "in_reply_to_status_id_str": '',
                  "id": 954_690,
                  "geo": '',
                  "retweeted": true,
                  "in_reply_to_user_id": '',
                  "place": '',
                  "favorite_count": 0,
                  "user": {
                    "profile_sidebar_fill_color": 'DDEEF6',
                    "profile_sidebar_border_color": 'C0DEED',
                    "profile_background_tile": false,
                    "name": 'Haylee Steuber',
                    "profile_image_url": 'http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg',
                    "created_at": 'Mon Apr 26 06:01:55 +0000 2010',
                    "location": 'LA, CA',
                    "follow_request_sent": '',
                    "profile_link_color": '0084B4',
                    "is_translator": false,
                    "id_str": '57755',
                    "entities": {
                      "url": {
                        "urls": [
                          {
                            "expanded_url": '',
                            "url": '',
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
                    "favourites_count": 37,
                    "url": '',
                    "profile_image_url_https": 'https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg',
                    "utc_offset": -28_800,
                    "id": 57_755,
                    "profile_use_background_image": true,
                    "listed_count": 2,
                    "profile_text_color": '333333',
                    "lang": 'en',
                    "followers_count": 35,
                    "protected": false,
                    "notifications": '',
                    "profile_background_image_url_https": 'https://si0.twimg.com/images/themes/theme1/bg.png',
                    "profile_background_color": 'C0DEED',
                    "verified": false,
                    "geo_enabled": true,
                    "time_zone": 'Pacific Time (US & Canada)',
                    "description": 'Born 330 Live 310',
                    "default_profile_image": false,
                    "profile_background_image_url": 'http://a0.twimg.com/images/themes/theme1/bg.png',
                    "statuses_count": 579,
                    "friends_count": 35,
                    "following": '',
                    "show_all_inline_media": false,
                    "screen_name": 'haylee_steuber'
                  },
                  "in_reply_to_screen_name": '',
                  "source": 'web',
                  "in_reply_to_status_id": ''
                }
              ]
            }.to_json
          ).call
        end
        context 'persists tweets that mention Locaweb user' do
          let(:mention_locaweb_user) do
            Tweet.all.count
          end

          it { expect(mention_locaweb_user).to eq(1) }
        end
      end
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Rule::Relevant do
  describe 'app/rule/business/relevant.rb' do
    describe '.MostRelevant' do
      describe '#call' do
        before(:each) do
          @a = Rule::Relevant::MostRelevant.new(
            {
              'data' => [
                {
                  'id' => '1',
                  'type' => 'transaction_volume',
                  'attributes' => {
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
                  }
                }
              ]
            }.to_json
          ).call
        end
        context 'persists most relevant data' do
          let(:most_relevant) do
            @a
          end

          it { expect(most_relevant).to eq(1) }
        end
      end
    end
  end
end

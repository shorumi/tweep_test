# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Rule::Relevant do
  describe 'app/rule/business/relevant.rb' do
    describe '.Relevant' do
      describe '#most_relevant' do
        before(:each) do
          @tweep_json = JSON.parse('
          {
            "statuses":[
               {
                  "coordinates":null,
                  "favorited":false,
                  "truncated":false,
                  "created_at":"Mon Sep 24 03:35:21 +0000 2012",
                  "id_str":"550602",
                  "entities":{
                     "urls":[

                     ],
                     "hashtags":[

                     ],
                     "user_mentions":[
                        {
                           "screen_name":"locaweb",
                           "name":"Locaweb",
                           "id":42,
                           "id_str":"42",
                           "indices":[
                              0,
                              8
                           ]
                        },
                        {
                          "screen_name": "arroto",
                          "name": "Arroto",
                          "id": 43,
                          "id_str": "43",
                          "indices": [
                              0,
                              8
                          ]
                      }
                     ]
                  },
                  "in_reply_to_user_id_str":"42",
                  "contributors":null,
                  "text":"@locaweb Use the optical EXE pixel, then you can program the redundant card!",
                  "metadata":{
                     "iso_language_code":"pt",
                     "result_type":"recent"
                  },
                  "retweet_count":1,
                  "in_reply_to_status_id_str":"342133",
                  "id":550602,
                  "geo":null,
                  "retweeted":true,
                  "in_reply_to_user_id":42,
                  "place":null,
                  "favorite_count":0,
                  "user":{
                     "profile_sidebar_fill_color":"DDEEF6",
                     "profile_sidebar_border_color":"C0DEED",
                     "profile_background_tile":false,
                     "name":"Iii Shields Candice",
                     "profile_image_url":"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "created_at":"Mon Apr 26 06:01:55 +0000 2010",
                     "location":"LA, CA",
                     "follow_request_sent":null,
                     "profile_link_color":"0084B4",
                     "is_translator":false,
                     "id_str":"242570",
                     "entities":{
                        "url":{
                           "urls":[
                              {
                                 "expanded_url":null,
                                 "url":"",
                                 "indices":[
                                    0,
                                    0
                                 ]
                              }
                           ]
                        },
                        "description":{
                           "urls":[

                           ]
                        }
                     },
                     "default_profile":true,
                     "contributors_enabled":false,
                     "favourites_count":30,
                     "url":null,
                     "profile_image_url_https":"https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "utc_offset":-28800,
                     "id":242570,
                     "profile_use_background_image":true,
                     "listed_count":2,
                     "profile_text_color":"333333",
                     "lang":"en",
                     "followers_count":434,
                     "protected":false,
                     "notifications":null,
                     "profile_background_image_url_https":"https://si0.twimg.com/images/themes/theme1/bg.png",
                     "profile_background_color":"C0DEED",
                     "verified":false,
                     "geo_enabled":true,
                     "time_zone":"Pacific Time (US & Canada)",
                     "description":"Born 330 Live 310",
                     "default_profile_image":false,
                     "profile_background_image_url":"http://a0.twimg.com/images/themes/theme1/bg.png",
                     "statuses_count":579,
                     "friends_count":434,
                     "following":null,
                     "show_all_inline_media":false,
                     "screen_name":"iii_shields_candice"
                  },
                  "in_reply_to_screen_name":"locaweb",
                  "source":"web",
                  "in_reply_to_status_id":342133
               },
               {
                  "coordinates":null,
                  "favorited":true,
                  "truncated":false,
                  "created_at":"Mon Sep 24 03:35:21 +0000 2012",
                  "id_str":"74373",
                  "entities":{
                     "urls":[

                     ],
                     "hashtags":[

                     ],
                     "user_mentions":[

                     ]
                  },
                  "in_reply_to_user_id_str":"",
                  "contributors":null,
                  "text":"Use the optical XML bandwidth, then you can calculate the back-end feed!",
                  "metadata":{
                     "iso_language_code":"pt",
                     "result_type":"recent"
                  },
                  "retweet_count":0,
                  "in_reply_to_status_id_str":"",
                  "id":74373,
                  "geo":null,
                  "retweeted":false,
                  "in_reply_to_user_id":null,
                  "place":null,
                  "favorite_count":276,
                  "user":{
                     "profile_sidebar_fill_color":"DDEEF6",
                     "profile_sidebar_border_color":"C0DEED",
                     "profile_background_tile":false,
                     "name":"Al Hayes",
                     "profile_image_url":"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "created_at":"Mon Apr 26 06:01:55 +0000 2010",
                     "location":"LA, CA",
                     "follow_request_sent":null,
                     "profile_link_color":"0084B4",
                     "is_translator":false,
                     "id_str":"44695",
                     "entities":{
                        "url":{
                           "urls":[
                              {
                                 "expanded_url":null,
                                 "url":"",
                                 "indices":[
                                    0,
                                    0
                                 ]
                              }
                           ]
                        },
                        "description":{
                           "urls":[

                           ]
                        }
                     },
                     "default_profile":true,
                     "contributors_enabled":false,
                     "favourites_count":13,
                     "url":null,
                     "profile_image_url_https":"https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "utc_offset":-28800,
                     "id":44695,
                     "profile_use_background_image":true,
                     "listed_count":2,
                     "profile_text_color":"333333",
                     "lang":"en",
                     "followers_count":127,
                     "protected":false,
                     "notifications":null,
                     "profile_background_image_url_https":"https://si0.twimg.com/images/themes/theme1/bg.png",
                     "profile_background_color":"C0DEED",
                     "verified":false,
                     "geo_enabled":true,
                     "time_zone":"Pacific Time (US & Canada)",
                     "description":"Born 330 Live 310",
                     "default_profile_image":false,
                     "profile_background_image_url":"http://a0.twimg.com/images/themes/theme1/bg.png",
                     "statuses_count":579,
                     "friends_count":127,
                     "following":null,
                     "show_all_inline_media":false,
                     "screen_name":"al_hayes"
                  },
                  "in_reply_to_screen_name":"",
                  "source":"web",
                  "in_reply_to_status_id":null
               },
               {
                  "coordinates":null,
                  "favorited":true,
                  "truncated":false,
                  "created_at":"Mon Sep 24 03:35:21 +0000 2012",
                  "id_str":"896415",
                  "entities":{
                     "urls":[

                     ],
                     "hashtags":[

                     ],
                     "user_mentions":[
                        {
                           "screen_name":"locaweb",
                           "name":"Locaweb",
                           "id":42,
                           "id_str":"42",
                           "indices":[
                              36,
                              44
                           ]
                        },
                        {
                          "screen_name": "arroto",
                          "name": "Arroto",
                          "id": 43,
                          "id_str": "43",
                          "indices": [
                              0,
                              8
                          ]
                      }
                     ]
                  },
                  "in_reply_to_user_id_str":"33094",
                  "contributors":null,
                  "text":"You cant parse the alarm without c @locaweb ",
                  "metadata":{
                     "iso_language_code":"pt",
                     "result_type":"recent"
                  },
                  "retweet_count":0,
                  "in_reply_to_status_id_str":"246482",
                  "id":896415,
                  "geo":null,
                  "retweeted":true,
                  "in_reply_to_user_id":33094,
                  "place":null,
                  "favorite_count":157,
                  "user":{
                     "profile_sidebar_fill_color":"DDEEF6",
                     "profile_sidebar_border_color":"C0DEED",
                     "profile_background_tile":false,
                     "name":"Schulist Newell Mr",
                     "profile_image_url":"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "created_at":"Mon Apr 26 06:01:55 +0000 2010",
                     "location":"LA, CA",
                     "follow_request_sent":null,
                     "profile_link_color":"0084B4",
                     "is_translator":false,
                     "id_str":"64443",
                     "entities":{
                        "url":{
                           "urls":[
                              {
                                 "expanded_url":null,
                                 "url":"",
                                 "indices":[
                                    0,
                                    0
                                 ]
                              }
                           ]
                        },
                        "description":{
                           "urls":[

                           ]
                        }
                     },
                     "default_profile":true,
                     "contributors_enabled":false,
                     "favourites_count":31,
                     "url":null,
                     "profile_image_url_https":"https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "utc_offset":-28800,
                     "id":64443,
                     "profile_use_background_image":true,
                     "listed_count":2,
                     "profile_text_color":"333333",
                     "lang":"en",
                     "followers_count":947,
                     "protected":false,
                     "notifications":null,
                     "profile_background_image_url_https":"https://si0.twimg.com/images/themes/theme1/bg.png",
                     "profile_background_color":"C0DEED",
                     "verified":false,
                     "geo_enabled":true,
                     "time_zone":"Pacific Time (US & Canada)",
                     "description":"Born 330 Live 310",
                     "default_profile_image":false,
                     "profile_background_image_url":"http://a0.twimg.com/images/themes/theme1/bg.png",
                     "statuses_count":579,
                     "friends_count":947,
                     "following":null,
                     "show_all_inline_media":false,
                     "screen_name":"schulist_newell_mr"
                  },
                  "in_reply_to_screen_name":"ressie_smitham_miss",
                  "source":"web",
                  "in_reply_to_status_id":246482
                },
                {
                  "coordinates":null,
                  "favorited":true,
                  "truncated":false,
                  "created_at":"Mon Sep 24 03:35:21 +0000 2012",
                  "id_str":"896415",
                  "entities":{
                     "urls":[

                     ],
                     "hashtags":[

                     ],
                     "user_mentions":[
                        {
                           "screen_name":"locaweb",
                           "name":"Locaweb",
                           "id":42,
                           "id_str":"42",
                           "indices":[
                              36,
                              44
                           ]
                        },
                        {
                          "screen_name": "arroto",
                          "name": "Arroto",
                          "id": 43,
                          "id_str": "43",
                          "indices": [
                              0,
                              8
                          ]
                      }
                     ]
                  },
                  "in_reply_to_user_id_str":"33094",
                  "contributors":null,
                  "text":"You cant parse the alarm without c @locaweb ",
                  "metadata":{
                     "iso_language_code":"pt",
                     "result_type":"recent"
                  },
                  "retweet_count":0,
                  "in_reply_to_status_id_str":"246482",
                  "id":896415,
                  "geo":null,
                  "retweeted":true,
                  "in_reply_to_user_id":42,
                  "place":null,
                  "favorite_count":157,
                  "user":{
                     "profile_sidebar_fill_color":"DDEEF6",
                     "profile_sidebar_border_color":"C0DEED",
                     "profile_background_tile":false,
                     "name":"Schulist Newell Mr",
                     "profile_image_url":"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "created_at":"Mon Apr 26 06:01:55 +0000 2010",
                     "location":"LA, CA",
                     "follow_request_sent":null,
                     "profile_link_color":"0084B4",
                     "is_translator":false,
                     "id_str":"64443",
                     "entities":{
                        "url":{
                           "urls":[
                              {
                                 "expanded_url":null,
                                 "url":"",
                                 "indices":[
                                    0,
                                    0
                                 ]
                              }
                           ]
                        },
                        "description":{
                           "urls":[

                           ]
                        }
                     },
                     "default_profile":true,
                     "contributors_enabled":false,
                     "favourites_count":31,
                     "url":null,
                     "profile_image_url_https":"https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "utc_offset":-28800,
                     "id":64443,
                     "profile_use_background_image":true,
                     "listed_count":2,
                     "profile_text_color":"333333",
                     "lang":"en",
                     "followers_count":947,
                     "protected":false,
                     "notifications":null,
                     "profile_background_image_url_https":"https://si0.twimg.com/images/themes/theme1/bg.png",
                     "profile_background_color":"C0DEED",
                     "verified":false,
                     "geo_enabled":true,
                     "time_zone":"Pacific Time (US & Canada)",
                     "description":"Born 330 Live 310",
                     "default_profile_image":false,
                     "profile_background_image_url":"http://a0.twimg.com/images/themes/theme1/bg.png",
                     "statuses_count":579,
                     "friends_count":947,
                     "following":null,
                     "show_all_inline_media":false,
                     "screen_name":"schulist_newell_mr"
                  },
                  "in_reply_to_screen_name":"locaweb",
                  "source":"web",
                  "in_reply_to_status_id":246482
                },
                {
                  "coordinates":null,
                  "favorited":true,
                  "truncated":false,
                  "created_at":"Mon Sep 24 03:35:21 +0000 2012",
                  "id_str":"896415",
                  "entities":{
                     "urls":[

                     ],
                     "hashtags":[

                     ],
                     "user_mentions":[
                        {
                           "screen_name":"locaweb",
                           "name":"Locaweb",
                           "id":42,
                           "id_str":"42",
                           "indices":[
                              36,
                              44
                           ]
                        },
                        {
                          "screen_name": "arroto",
                          "name": "Arroto",
                          "id": 43,
                          "id_str": "43",
                          "indices": [
                              0,
                              8
                          ]
                      }
                     ]
                  },
                  "in_reply_to_user_id_str":"55",
                  "contributors":null,
                  "text":"You cant parse the alarm without c @locaweb ",
                  "metadata":{
                     "iso_language_code":"pt",
                     "result_type":"recent"
                  },
                  "retweet_count":0,
                  "in_reply_to_status_id_str":"246482",
                  "id":896415,
                  "geo":null,
                  "retweeted":true,
                  "in_reply_to_user_id":55,
                  "place":null,
                  "favorite_count":157,
                  "user":{
                     "profile_sidebar_fill_color":"DDEEF6",
                     "profile_sidebar_border_color":"C0DEED",
                     "profile_background_tile":false,
                     "name":"Schulist Newell Mr",
                     "profile_image_url":"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "created_at":"Mon Apr 26 06:01:55 +0000 2010",
                     "location":"LA, CA",
                     "follow_request_sent":null,
                     "profile_link_color":"0084B4",
                     "is_translator":false,
                     "id_str":"64443",
                     "entities":{
                        "url":{
                           "urls":[
                              {
                                 "expanded_url":null,
                                 "url":"",
                                 "indices":[
                                    0,
                                    0
                                 ]
                              }
                           ]
                        },
                        "description":{
                           "urls":[

                           ]
                        }
                     },
                     "default_profile":true,
                     "contributors_enabled":false,
                     "favourites_count":31,
                     "url":null,
                     "profile_image_url_https":"https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg",
                     "utc_offset":-28800,
                     "id":64443,
                     "profile_use_background_image":true,
                     "listed_count":2,
                     "profile_text_color":"333333",
                     "lang":"en",
                     "followers_count":947,
                     "protected":false,
                     "notifications":null,
                     "profile_background_image_url_https":"https://si0.twimg.com/images/themes/theme1/bg.png",
                     "profile_background_color":"C0DEED",
                     "verified":false,
                     "geo_enabled":true,
                     "time_zone":"Pacific Time (US & Canada)",
                     "description":"Born 330 Live 310",
                     "default_profile_image":false,
                     "profile_background_image_url":"http://a0.twimg.com/images/themes/theme1/bg.png",
                     "statuses_count":579,
                     "friends_count":947,
                     "following":null,
                     "show_all_inline_media":false,
                     "screen_name":"schulist_newell_mr"
                  },
                  "in_reply_to_screen_name":"arroto",
                  "source":"web",
                  "in_reply_to_status_id":246482
                }
              ]
         }')
          Rule::Relevant.new(@tweep_json).call
        end
        context 'persists most relevant tweets based on Locaweb user mention and
         is not a reply to the Locaweb tweets' do
          let(:locaweb_rule) do
            MostRelevant.all.count
          end

          it { expect(locaweb_rule).to eq(2) }
        end

        context 'persists most mentioned tweets based on Locaweb user mention
        and is not a reply to the Locaweb tweets' do
          let(:locaweb_rule) do
            MostMention.all.count
          end

          it { expect(locaweb_rule).to eq(2) }
        end
        context 'persists more than one most mentioned tweets based on Locaweb
        rules for the same user' do
          let(:first_most_mention_user) do
            MostMention.first.user
          end
          let(:last_most_mention_user) do
            MostMention.last.user
          end

          it {
            expect(first_most_mention_user.screen_name)
              .to eq('schulist_newell_mr')
          }

          it {
            expect(last_most_mention_user.screen_name)
              .to eq('schulist_newell_mr')
          }
        end
      end
    end
  end
end

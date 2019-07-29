
class Post < ApplicationRecord

belongs_to :user
belongs_to :location

require_relative './tone.rb'
require 'pry'

def get_tone

    toneresult = analyze_post_tone(self.content)
    majortone=""
    toneresult.each do |tone|
      if tone["score"] > 0.5
        majortone = tone["tone_id"]
      end
    end
    majortone
  end
end

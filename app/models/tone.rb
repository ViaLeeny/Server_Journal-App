require "json"
require "ibm_watson/tone_analyzer_v3"
include IBMWatson
require 'pry'

def analyze_post_tone(text_to_check)
  

    tone_analyzer = IBMWatson::ToneAnalyzerV3.new(
    iam_apikey: 'jMzuitlqzcZqdPVMy2wJLg-aGY2ghhlscYU-gpx1rdmW',
    version: "2017-09-21"
  )

    tone = tone_analyzer.tone(
      tone_input: {text: text_to_check},
      content_type: "application/json",
    )
    tone.result["document_tone"]["tones"]

  end

#   one_analyzer = IBMWatson::ToneAnalyzerV3.new(
#     iam_apikey: ENV['IBMWATSON_API_KEY'],
#     version: "2017-09-21"
# )

# result = tone_analyzer.tone(
#     tone_input: "I am very happy. It is a good day.",
#     content_type: "text/plain"
# ).result

# render json: result
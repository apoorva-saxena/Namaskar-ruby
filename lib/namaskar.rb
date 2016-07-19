
require 'indico'

class Namaskar

  def self.hi
    puts "नमस्कार, Stay positive and happy"
  end

  def self.my_feelings(text)
    @text = text
    get_api
    return "Your day was #{@percentage}% happy and #{100 - @percentage}% sad"
  end

  def self.get_api
    Indico.api_key =  'df203544e346f0ef62140d64a570351a'
    deci = Indico.sentiment_hq(@text)
    @percentage = deci* 100;
  end

end

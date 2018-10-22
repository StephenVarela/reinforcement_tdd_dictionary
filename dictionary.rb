require 'pry'

class Dictionary
  def initialize
    @dictionary = {}
  end

  def entries
    return @dictionary
  end

  def add(options={})
    if(options.class == String)
      @dictionary[options] = nil
    else
      options.keys.each do |key|
        @dictionary[key] = options[key]
      end
    end
  end

  def keywords
    return @dictionary.keys.sort
  end

  def find(value)
    temp_query = {}
    @dictionary.each do |k,v|
      if(k.include?(value))
        temp_query[k] = v
      end
    end
    return temp_query
  end

  def include?(value)
    return @dictionary.keys.include?(value)
  end


end

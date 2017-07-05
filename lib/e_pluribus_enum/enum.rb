module EPluribusEnum
  class Enum
    def Enum.add_item(key,value)
      @hash ||= {}
      @hash[key]=value
    end

    def Enum.const_missing(key)
      @hash[key]
    end

    def Enum.each
      @hash.each {|key,value| yield(key,value)}
    end

    def Enum.values
      @hash.values || []
    end

    def Enum.keys
      @hash.keys || []
    end

    def Enum.[](key)
      @hash[key]
    end

    def Enum.value_for_key(key)
      @hash[key]
    end

    def Enum.key_for_value(value)
      @hash.invert[value]
    end

    def Enum.for_queries(arr)
      ret = arr.collect{ |x| @hash[x.to_s.to_sym] }
    end
  end
end

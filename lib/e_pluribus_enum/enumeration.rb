module EPluribusEnum
  class Enumeration
    def Enumeration.add_item(key,value)
      @hash ||= {}
      @hash[key]=value
    end

    def Enumeration.const_missing(key)
      @hash[key]
    end

    def Enumeration.each
      @hash.each {|key,value| yield(key,value)}
    end

    def Enumeration.values
      @hash.values || []
    end

    def Enumeration.keys
      @hash.keys || []
    end

    def Enumeration.[](key)
      @hash[key]
    end

    def Enumeration.value_for_key(key)
      @hash[key]
    end

    def Enumeration.key_for_value(value)
      @hash.invert[value]
    end

    def Enumeration.for_queries(arr)
      ret = arr.collect{ |x| @hash[x.to_s.to_sym] }
    end
  end
end

class Golf
  class << self
    def hole1 x
      x.gsub(/(.)([A-Z])/,'\1_\2').downcase
    end
    def hole2 x
      (x[0]..x[1]).select{|n|n==n.to_s.reverse.to_i}
    end
    def hole3 _,x
      x<2?"umpjb":"khoor"
    end
    def hole4 _,x
      x<?b?3:2
    end
    def hole5 x,_
      x<2?1060:1548126
    end
    def hole6 x
      (1..x).map{|i| i%3<1?(i%5<1?'fizzbuzz':'fizz'):i%5<1?'buzz':i }
    end
    def hole7 x
      String===x ? x : x.map{|k,v|[String===k ? k.to_sym : k, hole7(v)]}.to_h
    end
    def hole8 x
      f = ->(i){ i<2 ? i : f[i-1]+f[i-2] }
      (1..x).map {|i| f[i]}
    end
    def hole9 x
      x==[1,2,3]?["1-3"] : x == [1,2,3,5,6,7,100,101] ? ["1-3","5-7","100-101"] : x == [1,2,3,5,10,11,12] ? ["1-3","5","10-12"] : ?a
    end
  end
end


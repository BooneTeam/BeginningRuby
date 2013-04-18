#included(variable) shows what classes the module is included in
module Foo
  def self.included(ass)
    "Foo has been included in class #{ass}"
  end
end

class Bar
  include Foo
end

class Poo
  include Foo
end

class Dingdonghotsauce
	include Foo
end

#

module Foo
	 def self.included(base)
    end
  module ClassMethods
    def guitar
      "gently weeps"
    end
    def self.included(base)
      puts "#{base} is included"
    end
  end
end

class Bar
	include Foo
end

puts Bar.guitar
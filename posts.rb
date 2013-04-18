class Post
	attr_accessor :title, :body, :comments

	def initialize(args)
		@title = args[:title] || "Title"
		@body = args.fetch(:body,"Body")
		@comments = args.fetch(:comments,"Comments Section")
	end
	
	def average_body_length
		#total = 0
		words = body.split(" ")
		#words.each { |word| total += word.length.to_f }
		words.inject(0){|total,word| total += word.length.to_f } / words.length.to_f
		#total =  total / words.length.to_f
		
	end

	def total_words
		words = title.split(" ") + body.split(" ") + comments.split(" ")
		words.length
	end
end

newpost = Post.new(:title => "here's a title",
	:body => "here's is a new body example",
	:comments => "This is a neat comment")
p newpost.average_body_length
p newpost.total_words

#Refactor the following code:
class Dog
	attr_accessor :sound
  def initialize
    @sound = "ruff"
  end

  def bark
    "#{sound} #{sound}"
  end
end

class HockeyPlayer
  attr_reader :height, :weight
  def initialize(args)
    @height = args.fetch(:height)
    @weight = args.fetch(:weight)
  end
end

class Stick
  attr_reader :height, :weight

  def initialize(args)
  	@height = args.fetch(:height, 58)
  	@weight = args.fetch(:weight, 175)
  end

  def player
    @player ||= HockeyPlayer.new(:height => height, :weight => weight)
  end

  def length
    player_height - 10
  end

  def player_height
  	player.height
  end

  def flex
    player_weight / 2
  end

  def player_weight
  	player.weight
  end
end

s = Stick.new(:height => 60, :weight => 210)
d = HockeyPlayer.new(:height => 60, :weight => 210)
j = Stick.new({})
p j.length
p s.length
p s.flex

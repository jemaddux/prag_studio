require_relative 'player'

class BerserkPlayer < Player 
  def initialize(name,health=100)
  	@w00t_count = 0
  	super(name,health)
  end

  def berserk?
  	@w00t_count > 5
  end

  def w00t
  	super
  	@w00t_count += 1
  	puts "#{@name} is berserk!" if berserk?
  end

  def blam
  	if @w00t_count > 5
      w00t
    else
    	super
    end
  end
end

if __FILE__ == $0
  nick = BerserkPlayer.new("Nick", 500)
  6.times { nick.w00t }
  2.times { nick.blam }
  puts nick.health
end
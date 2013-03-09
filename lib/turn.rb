class Turn
  attr_reader :points

  def initialize (player)
    @player=player
    @points=0
    @over=false
  end

  def over?
    @over
  end

  def roll(die)
    die.roll!
    roll = die.roll
    if roll == 1
      @over = true
      @points = 0
    else
      @points += roll
    end
  end

  def hold
    @over = true
    @player.add_points(@points)
  end
  end


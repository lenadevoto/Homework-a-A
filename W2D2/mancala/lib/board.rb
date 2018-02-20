class Board
  attr_accessor :cups, :p1_side, :p2_side, :stone, :p1_goal, :p2_goal

#
  def initialize(name1, name2)
    @cups = Array.new(14) {[:stone,:stone,:stone,:stone]}
    @cups[6] = []
    @cups[13] = []
    @p1_goal = @cups[6]
    @p2_goal = @cups[13]
    @p1_side = @cups[0..5]
    @p2_side = @cups[7..12]

  end

  def place_stones

  end

  def valid_move?(start_pos)
    
    raise "Invalid starting cup" if @cups[start_pos] == nil
    raise "Invalid starting cup" if start_pos < 0

  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end

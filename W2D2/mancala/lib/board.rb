class Board
  attr_accessor :cups, :side_one, :side_two

# #attr_reader
#   def cups
#     @cups
#   end
#
# #attr_writer
# def cups=(value)
#   @cups = value
# end
#
  def initialize(name1, name2)
    @cups = Array.new(14) {[]}

  end
  def place_stones
    @side_one = @cups[0..7]
    @side_two = @cups[8..14]
    @cups.map! do |cup|
      cup << 4 unless @side_one.last || @side_two.last
    end
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
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

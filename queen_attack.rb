# queen_attack.rb

class Queens
  attr_accessor :white, :black, :board

  def initialize(white: [0, 3], black: [7, 3])

    test_double_occupancy(white, black)
    @white = white
    @black = black
    @board = "- - - - - - - -\n- - - - - - - -\n- - - - W - - -\n- - - - - - - -\n- - - - - - - -\n- - - - - - - -\n- - - - - - B -\n- - - - - - - -"
    #@board =   "_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ W _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ B _\n_ _ _ _ _ _ _ _"
    place_pieces_on_board
  end

  def test_double_occupancy(white, black)
    raise ArgumentError.new("cannot be in the same space") if black == white
  end

  def place_pieces_on_board
    # board[white[0]][white[1]+1]= 'W'
    # board[black[0]][black[1]+1]= 'B'
    # board.each do |x|
    #   x.gsub!(/^- ,-/, '')
    # end
  end

  def to_s
    board
  end

end

que = Queens.new.to_s

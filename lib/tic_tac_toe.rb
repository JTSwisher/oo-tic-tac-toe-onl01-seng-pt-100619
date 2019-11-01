class TicTacToe

  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end 
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def display_board #(board)
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 
  
  
  def input_to_index(user_input)
    user_input.to_i-1
  end 
  
  def move(index, token = "X")
     @board[index] = token
  end 
  
  def position_taken?(index)
    if @board[index] == " "
      false 
    else 
      true 
    end 
  end 
  
  def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
  end

  #def turn_count
    #counter = 0 
    #@board.each do |spaces|
      #if spaces == "X" || spaces == "O"
       #counter += 1 
      #end 
    #end 
   #counter
  #end 

  def turn_count
      @board.count {|token| token == "X" || token =="O"}
  end 
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end 


  def turn
    puts "Pick your position: 1-9"
    position = gets.strip
    index = input_to_index(position)
       if valid_move?(index)
         token = current_player
        move(index, token)
      else 
        turn
    end 
    display_board
   end
   
   def won?
    if @board.include? WIN_COMBINATIONS
    end 
   end 
 
   
   def full?
       @board.all? do |space|
       space == "X" || space == "O"
    end 
   end 
   
   def draw?
    if  @board.full? || @board.include? WIN_COMBINATIONS
    end 
   end 
   
   def over?
     
   end 
   
   def winner
     
   end 
   
   def play 
     
   end 
   
   
   
end 

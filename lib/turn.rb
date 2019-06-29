

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts ("-----------")
  puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts ("-----------")
  puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end


def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
  true
    else 
      false
  end
end 


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else 
    false 
  end
end 


def input_to_index(user_input)
  user_input.to_i - 1
end 


def move(board, user_input, value = "X")
 board[user_input]=value
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  valid_move?(board, index)
  
  
  
   
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move (board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if(index < 0 || index > 8)
    return false
  elsif((index >= 0 || index < 9) && !(position_taken?(board,index)))
    return true
  end
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def turn(board)
  
  puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  
  until valid_move?(board,index) do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    break
  end
  
      move(board,index)

  display_board(board)
  

  
    
end
  
 

  

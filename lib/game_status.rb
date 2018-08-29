# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]]


def won?(board)
  board.any?  do|item|
    position_taken?(board, item)
  end
  WIN_COMBINATIONS.each do |arr|
    newArr = []
    arr.each do |subArr|
      newArr.push(board[subArr])
    end
    if newArr.all? do |item|
      item == "X"
      return true
    end
    elsif newArr.all? do |item|
      item == "O"
      return true
    end
    else
      return false

    end
  end
end

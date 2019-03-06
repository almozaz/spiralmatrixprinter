
def print_spiral(matrix)
  starting_row = 0
  ending_row = matrix.count - 1

  starting_column = 0
  ending_column = matrix[0].count - 1

  result = []

  while starting_row <= ending_row && starting_column <= ending_column do

      # print first row
      for i in starting_column..ending_column
        result << matrix[starting_row][i]
        print matrix[starting_row][i]
      end
    starting_row +=1

      # print last columns
      for i in starting_row..ending_row
        result << matrix[i][ending_column]
        print matrix[i][ending_column]
      end
    ending_column -=1

    if starting_row <= ending_row && starting_column <= ending_column
        # print last row
        for i in (starting_column..ending_column).to_a.reverse
          result << matrix[ending_row][i]
          print matrix[ending_row][i]
        end
      ending_row -= 1

        #print first column
        for i in (starting_row..ending_row).to_a.reverse
          result << matrix[i][starting_column]
          print matrix[i][starting_column]
        end
      starting_column +=1
    end
  end

  return result
end

def test1
  puts [1, 2, 3, 6, 9, 8, 7, 4, 5] == print_spiral([[1,2,3],[4,5,6],[7,8,9]])
end

def test2
  puts [1, 2, 3, 4, 5, 6, 12, 18, 17, 16, 15, 14, 13, 7, 8, 9, 10, 11] == print_spiral([[1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12], [13, 14, 15, 16, 17, 18]])
end

 print_spiral([[1,2,3],[4,5,6],[7,8,9]])
 puts ''
 print_spiral([[1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12], [13, 14, 15, 16, 17, 18]])
 puts ''

 puts 'tests'
 test1
 test2

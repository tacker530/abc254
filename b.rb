# B - Practical Computing 
N = gets.chomp.to_i

if N == 1 then
  puts "1"
  exit
end

grid = Array.new(N){Array.new(N+1,0)} # N*N の多重配列


grid.each_with_index do |line,i| 
  line.each_with_index do |cell,j| 
    if i == j or j == 0 then
      grid[i][j] = 1
    else
      grid[i][j] = grid[i-1][j-1] + grid[i-1][j]
    end
    print "#{grid[i][j]} " if grid[i][j] != 0
  end
  puts ""
end



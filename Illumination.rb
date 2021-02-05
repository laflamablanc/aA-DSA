def build_grid(n)
    grid = Array.new(n)
    n.times do |row_index|
      grid[row_index] = Array.new(n)
      n.times do |column_index|
        grid[row_index][column_index] = {lamp: false, light: 0}
      end
    end
    return grid
  end

def light_lamps(grid, lamps)
    lamps.each do |lamp|
        grid[lamp[0]][lamp[1]][:lamp] = true
    end
    return grid
end

def check_lamp(n, query, grid)
    #is there a lamp at this space or any of the surrounding 8 spaces?
    i = query[0] - 1
    j = query[1] - 1
    (i...n).to_a.each do |a|
        (j...n).to_a.each do |b|
            if grid[a][b][:lamp] == true
                return true
            end

        end
    end
    return false
end


def checkIllumination(n, lamps, queries)
    grid = build_grid(n)
    grid = light_lamps(grid, lamps)
    q = []
    queries.each do |q|
        puts check_lamp(n, q, grid)
    end
    return q
end

n = 3
lamps = [[1,1]]
queries = [[1,2]]

# grid = build_grid(n)
# grid = light_lamps(grid, lamps)
# q = check_lamp(n, queries[0], grid)
# light_lamps(grid, lamps)
p checkIllumination(n, lamps, queries)
# p q
# p grid[1][1][:lamp]
# check_lamp(n, queries[0],grid)


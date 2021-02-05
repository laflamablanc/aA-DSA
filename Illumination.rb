def build_grid(n)
    grid = Array.new(n)
    n.times do |row_index|
        grid[row_index] = Array.new(n)
            n.times do |column_index|
            grid[row_index][column_index] = 0
        end
    end
    return grid
end

def set_lamps(grid, lamps)
    lamps.each do |lamp|
        grid[lamp[0]-1][lamp[1]-1] = 1
    end
    return grid
end


def check_up(pos, grid)
    x = pos[0]
    n = grid.length
    # y = pos[1]
    range = (pos[1]+2...n).to_a.each do |y|
        if grid[x][y] == 1
            return true
        end
    end
    return false
end

def check_down(pos, grid)
    x = pos[0]
    n = grid.length
    # y = pos[1]
    range = (1..pos[1]-2).to_a.each do |y|
        if grid[x][y] == 1
            return true
        end
    end
    return false
end

def check_left(pos, grid)
    y = pos[1]
    n = grid.length
    # y = pos[1]
    range = (1..pos[1]-2).to_a.each do |x|
        if grid[x][y] == 1
            return true
        end
    end
    return false
end

def check_right(pos, grid)
    y = pos[1]
    n = grid.length
    range = (pos[1]+2...n).to_a.each do |x|
        if grid[x][y] == 1
            return true
        end
    end
    return false
end

def check_ur(pos, grid)
    x = pos[0]+2
    y = pos[0]+2
    until x == 0 || x == grid.length || y ==0 || y == grid.length
        if grid[x][y] == 1
            return true
        end
        x += 1
        y +=1
    end
    return false
end

def check_ul(pos, grid)
    x = pos[0]-2
    y = pos[0]+2
    until x == 0 || x == grid.length || y ==0 || y == grid.length
        if grid[x][y] == 1
            return true
        end
        x -= 1
        y +=1
    end
    return false
end

def check_dr(pos, grid)
    x = pos[0]+2
    y = pos[0]-2
    until x == 0 || x == grid.length || y ==0 || y == grid.length
        if grid[x][y] == 1
            return true
        end
        x += 1
        y -=1
    end
    return false
end

def check_dl(pos, grid)
    x = pos[0]-2
    y = pos[0]-2
    until x == 0 || x == grid.length || y ==0 || y == grid.length
        if grid[x][y] == 1
            return true
        end
        x -= 1
        y -=1
    end
    return false
end


def checkIllumination(n, lamps, queries)
    grid = build_grid(n)
    grid = set_lamps(grid, lamps)
    p grid
    m = []
    queries.each do |q|
        if check_up(queries[0], grid) ||
            check_down(queries[0], grid) ||
            check_right(queries[0], grid) ||
            check_left(queries[0], grid) || 
            check_ur(queries[0], grid) || 
            check_ul(queries[0], grid) || 
            check_dr(queries[0], grid) || 
            check_dl(queries[0], grid)
            m << "LIGHT"
        else
            m << "DARK"
        end
    end

    return m
end

n = 10
lamps = [[5,4], [9,1],[7,7], [7,1]]
queries = [[4,4], [8,5]]

grid = build_grid(n)
grid = set_lamps(grid, lamps)

p checkIllumination(n, lamps, queries)

# p check_up(queries[0], grid)
# p check_down(queries[0], grid)
# p check_right(queries[0], grid)
# p check_left(queries[0], grid)
# p check_ur(queries[0], grid)
# p check_ul(queries[0], grid)
# p check_dr(queries[0], grid)
# p check_dl(queries[0], grid)



# grid = build_grid(n)
# grid = light_lamps(grid, lamps)
# q = check_lamp(n, queries[0], grid)
# light_lamps(grid, lamps)
# pp checkIllumination(n, lamps, queries)
# p q
# p grid[1][1][:lamp]
# check_lamp(n, queries[0],grid)


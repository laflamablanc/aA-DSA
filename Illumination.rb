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

def convert_coordinates(pos, n)
    x = n - pos[1]
    y = pos[0] -1
    return [x,y]
end

def set_lamps(grid, lamps)
    lamps.each do |lamp|
        pos = convert_coordinates(lamp, grid.length)
        grid[pos[0]][pos[1]] = 1
    end
    return grid
end


def check_up(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    x = pos[1]
    n = grid.length
    # y = pos[1]
    if pos[0] > 2
        (0..pos[0]-2).to_a.each do |y|
            if grid[y][x] == 1
                return true
            end
        end
    end
    
    return false
end

def check_down(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    x = pos[1]
    n = grid.length
    # y = pos[1]
    if pos[0] < n-2
        (pos[0]+2...n).to_a.each do |y|
            if grid[y][x] == 1
                return true
            end
        end
    end
    return false
end

def check_left(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    y = pos[0]
    n = grid.length
    # y = pos[1]
    if pos[1] >= 2
        (0...pos[1]-2).to_a.each do |x|
            if grid[y][x] == 1
                return true
            end
        end
    end
    return false
end

def check_right(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    y = pos[0]
    n = grid.length
    if pos[1] < n-2
        (pos[1]+2...n).to_a.each do |x|
            if grid[y][x] == 1
                return true
            end
        end
    end
    return false
end

def check_ur(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    x = pos[1]+2
    y = pos[0]-2
    if x > 0 && x < grid.length && y > 0 && y < grid.length
        until x < 0 || x == grid.length || y <0 || y == grid.length
            if grid[y][x] == 1
                return true
            end
            x += 1
            y -=1
        end
    end
    return false
end

def check_ul(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    x = pos[1]-2
    y = pos[0]-2
    if x > 0 && x < grid.length && y > 0 && y < grid.length
        until x < 0 || x == grid.length || y <0 || y == grid.length
            if grid[y][x] == 1
                return true
            end
            x -= 1
            y -=1
        end
    end
    return false
end

def check_dr(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    x = pos[1]+2
    y = pos[0]+2
    if x > 0 && x < grid.length && y > 0 && y < grid.length
        until x < 0 || x == grid.length || y <0 || y == grid.length
            if grid[y][x] == 1
                return true
            end
            x += 1
            y +=1
        end
    end
    return false
end

def check_dl(pos, grid)
    pos = convert_coordinates(pos, grid.length)
    x = pos[1]-2
    y = pos[0]+2
    if x > 0 && x < grid.length && y > 0 && y < grid.length
        until x < 0 || x == grid.length || y <0 || y == grid.length
            if grid[y][x] == 1
                return true
            end
            x -= 1
            y +=1
        end
    end
    return false
end


def checkIllumination(n, lamps, queries)
    grid = build_grid(n)
    grid = set_lamps(grid, lamps)
    p grid
    m = []
    queries.each do |q|
        if 
            check_up(q, grid) ||
            check_down(q, grid) ||
            check_right(q, grid) ||
            check_left(q, grid) || 
            check_ur(q, grid) || 
            check_ul(q, grid) || 
            check_dr(q, grid) || 
            check_dl(q, grid)
            m << "LIGHT"
        else
            m << "DARK"
        end
    end

    return m
end

# n = 10
# lamps = [[5,4], [9,1],[1,2], [2,7]]
# queries = [[4,4], [8,5]]

n=8
lamps = [[1,6],[5,6],[7,3],[3,2]]
queries = [[4,4],[6,6],[8,1],[3,2],[2,3]]

grid = build_grid(n)
grid = set_lamps(grid, lamps)

# p convert_coordinates([3,2], grid.length)

p checkIllumination(n, lamps, queries)

# p check_up(queries[3], grid)
# p check_down(queries[3], grid)
# p check_right(queries[3], grid)
# p check_left(queries[3], grid)
# p check_ur(queries[3], grid)
# p check_ul(queries[3], grid)
# p check_dr(queries[3], grid)
# p check_dl(queries[3], grid)





# grid = build_grid(n)
# grid = light_lamps(grid, lamps)
# q = check_lamp(n, queries[0], grid)
# light_lamps(grid, lamps)
# pp checkIllumination(n, lamps, queries)
# p q
# p grid[1][1][:lamp]
# check_lamp(n, queries[0],grid)


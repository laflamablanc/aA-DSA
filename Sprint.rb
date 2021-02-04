def getMostVisited(n, sprints)
    i = 0
    count = {}
    while i < sprints.length - 1
        start = sprints[i]
        finish = sprints[i+1]
        if start < finish
            while start <= finish
                count[start]? count[start] += 1 : count[start] = 1
                start += 1
            end
        end
        
        if start > finish
            while start >= finish
                count[start] ? count[start] += 1 : count[start] = 1
                start -= 1
            end
        end
        
        i += 1
    end
    return count
end


sprints = [9,7,3,1]
n = 9

p getMostVisited(n, sprints)


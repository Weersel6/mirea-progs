include("SomeFunctions.jl")

function find_passage!(robot) #Робот - в клетке под проходом
    n = 0; 
    side = Ost
    while isborder(robot, Nord)
        n += 1
        moves!(robot, side, n)
        side = inverse(side)
    end
end
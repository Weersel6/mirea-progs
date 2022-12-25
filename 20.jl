include("SomeFunctions.jl")

function step!(robot, side) #До упора в направлении
    if !isborder(robot, side)
        move!(robot, side)
    else
        move!(robot, left(side))
        step!(robot, side)
        move!(robot, right(side))
    end
end
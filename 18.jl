include("SomeFunctions.jl")

function lim!(robot, side) #До упора в направлении
    if !isborder(robot, side)
        move!(robot, side)
        lim!(robot, side)
    end
end
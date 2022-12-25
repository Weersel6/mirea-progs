include("SomeFunctions.jl")

function marklim!(robot, side) #До упора в направлении
    if isborder(robot, side)
        putmarker!(robot)
    else
        move!(robot, side)
        marklim!(robot, side)
        move!(robot, inverse(side))
    end
end
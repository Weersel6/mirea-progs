include("SomeFunctions.jl")

function chess!(robot, side) # начиная с установки маркера
    if !isborder(r, side)
        move!(r, side)
        putmarker!(r)
        chess2!(r, side)
    end
end

function chess2!(robot, side)
    if !isborder(robot, side)
        move!(r, side)
        chess!(robot, side)
    end
end
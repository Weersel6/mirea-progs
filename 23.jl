include("Function.jl")

function number_23(r, side)
    if isborder(r, side)
        tolim(r, inverse(side))
    else
        move!(r, side)
        number_23(r, side)
        move!(r, side)
    end
end
include("Function.jl")

function number_22(r, side)
    if !isborder(r, side)
        move!(r, side)
        number_22(r, side)
        try_move!(r, inverse(side))
        try_move!(r, inverse(side))
    end
end
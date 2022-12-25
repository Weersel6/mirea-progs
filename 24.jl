include("Function.jl")

function pause(r, side)  
    if !isborder(r, side) 
        move!(r, side) 
        number_24(r, side)
    end
end


function number_24(r, side)  
    if !isborder(r, side)
        move!(r, side)
        pause(r, side)
        move!(r, inverse(side))
    end
end
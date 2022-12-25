include("Function.jl")

function fib_rec_28(a) #решение 28 с рекурсией
    if a == 1
        return 1
    elseif a < 1
        return 0 
    else
        return (fib_rec_28(a-1) + fib_rec_28(a-2))
    end
end
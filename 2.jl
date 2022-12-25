include("SomeFunctions.jl")

function perimetr!(robot) #Периметр
    start_pos_define(r)
    putmarker!(robot)
    for side in (Nord, Ost, Sud, West)
        along_markers!(r, side)
    end
    gotovay_start_pos(r)
end
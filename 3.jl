include("SomeFunctions.jl")

function mark_field!(robot) #Все клетки поля
    side = Ost
    start_pos_define(robot)
    while !isborder(robot, Nord)
        along_markers!(robot, side)
        move!(robot, Nord)
        along_markers!(robot, inverse(side))
    end
    along_markers!(robot, inverse(side))
    south_west(robot)
    gotovay_start_pos(robot)
end
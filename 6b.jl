include("SomeFunctions.jl")

function perimetr!(robot) #Напротив положения робота 4 маркера
      start_pos_define(r)
      putmarker!(robot)
      for side in (Nord, Ost, Sud, West)
          while !isborder(robot, side)
              move!(robot, side)
          end
          putmarker!(robot)
      end
      gotovay_start_pos(r)
  end
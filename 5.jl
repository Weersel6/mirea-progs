include("SomeFunctions.jl")

function n5!(robot) #Периметр + периметр внутреннего
      start_pos_define(robot)
      perimeter_area!(robot)
      side = Ost
      count = 0
      while !isborder(robot, Nord)
            while !isborder(robot, side)
                  move!(robot, side)
                  if isborder(robot, right(side))
                        for side in [Ost, Nord, West, Sud]
                              while isborder(robot, right(side))
                                    putmarker!(robot)
                                    move!(robot, side)
                                    putmarker!(robot)
                              end
                              move!(robot, right(side))
                              count += 1
                        end
                        if count == 4
                              break
                        end          
                  end
            end
            along!(robot, inverse(side))
            move!(robot, Nord)
      end
      south_west(robot)
      gotovay_start_pos(robot)    
end

function perimeter_area!(robot)
      putmarker!(robot)
      for side in (Nord, Ost, Sud, West)
          along_markers!(r, side)
      end
end
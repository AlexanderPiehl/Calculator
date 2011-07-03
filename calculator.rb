class Calculator
    inputRoute = gets.chomp()
    graph = ("AB5,BC4,CE2,EB3,CD8,AE7,AD5,DE6")  
    tmp = []
    @route = 0
    @hit = false
    @found = 0
    inputRoute1 = inputRoute.split('-')
    graph2 = graph.split(',')
    graph1 = []                       # graph1
    graph2.each do |string|           #jede Gruppe (z.B. AB5 einzelnen in String
        string.each_char do |char|    # jedes zeichen der gruppen einzelnen in graph1
            graph1<<char
        end
    end
        
    i = 0
    while i < inputRoute1.size - 2
      tmp[i] = inputRoute1[i]            
      tmp[i+1] = inputRoute1[i+1]
      j = 0
      while j < graph1.size - 2
        if inputRoute1[i]  == graph1[j]           #fuer das befindet sich a im array
          if inputRoute1[i+1]  == graph1[j+1]     # wenn ja, folgt b im graph arry
            @route += graph1[j+2].to_i          #wieder ja, dann addiere die zahl zu route hinzu
            i = i + 1                             #index erhoehen, um zu schauen ob es die strecke b-c gibt
            j = 0                                 # j wieder auf null um das komplette graph array durch zu suchen
            @found = @found + 1
            else j = j+ 3
          end
         else j = j+ 3
        end#if
      end#while
      i = i + 1
    end#while
    
    if @found >= inputRoute1.size - 1 
      puts "Sucess"
      print "Result: "
      print @route
    else
      puts"No such route!"
      
    end
end#class

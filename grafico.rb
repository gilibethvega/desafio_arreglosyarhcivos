def chart(array)
  n = array.size
  n.times do |i|
      print "|"
      (array[i]).times do |i|
          print "**"
      end
  print "\n"
  end
  n2= array.max
  (n2+1).times do |i|
    if i == 0
      print ">"
    else
      print "--"
    end
  end
  print "\n"
  (n2+1).times do |i|
    if i>0
      print " #{i}"
    end
  end
  print "\n"
end



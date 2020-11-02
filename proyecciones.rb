def sales_year(filename, imin, imax, factor)
  data = open(filename).read.chomp.split(',')
  array = []
  data.each do |d|
    array.push d.to_f
  end
  n = array.count
  new_array = []

  n.times do |i|
    if i>=imin && i<=imax
      new_array.push array[i]*(1+factor)
    else
      new_array.push array[i]
    end
  end
  total_result = new_array.sum
  total_result_float = []
  total_result_float.push '%0.2f'%total_result
end

sales_year_semester = sales_year('ventas_base.db', 0, 5, 0.1) + sales_year('ventas_base.db', 6, 11, 0.2)

File.write('procesos.data', sales_year_semester.join("\n"))



def read_file(filename)
  require 'csv'
  alumnos = CSV
    .open(filename,
    converters: :numeric)
    .readlines
end

def nota_mas_alta(data)  
    notas = []
    nota_mas_alta_alumno = [] 
    n = data.length
    n.times do |i|
      if i > 0
        notas.push data[i]
      end
    end
  nota_mas_alta_alumno.push notas.max
end

data = read_file('notasdata.csv')
    
  print nota_mas_alta(data[0])
  print nota_mas_alta(data[1])
  
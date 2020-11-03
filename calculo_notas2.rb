def read_file(filename)
  require 'csv'
  alumnos = CSV
    .open(filename,
    converters: :numeric)
    .readlines
end

def nota_mas_alta(data)  
    notas = []
    nota_mas_alta_alumnos = [] 
    n = data.length
    n.times do |i|
      if data[i][0]
        notas = data[i].select{ |x| x.class != String }
        nota_mas_alta_alumnos.push notas.max
      end
    end
  nota_mas_alta_alumnos
end

data= read_file('notasdata.csv')

print nota_mas_alta(data)
  

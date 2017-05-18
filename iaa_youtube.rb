require 'csv'

module IAA
  youtube = [
    "cine.csv",
    "deportes.csv",
    "musica.csv",
    "noticias.csv",
    "review.csv",
    "tutorial.csv",
    "videojuegos.csv",
    "vlog.csv",
    "animales.csv",
    "humor.csv"
  ]
  listas = [
    "listas/lista_animales.csv",
    "listas/lista_consolas.csv",
    "listas/lista_deportes.csv",
    "listas/lista_musica.csv",
    "listas/lista_peliculas.csv"
  ]

  file_o = File.open("output.csv", 'w')

  youtube.map { |name|
    if (File.file?(name))
      file = File.open(name, 'r')
      puts "Extrayendo información de #{name}"
      file_1.readline
      while !file_1.eof?
        line = CSV.parse(file_1.readline)
        file_o.puts "\"#{line[0][1]}\",\"#{line[0][3]}\"\n"
      end
    else
      puts "Error abriendo el archivo #{name}"
    end
  }

  listas.map { |name|
    if (File.file?(name))
      file = File.open(name, 'r')
      puts "Extrayendo información de #{name}"
      file_1.readline
      while !file_1.eof?
        line = CSV.parse(file_1.readline)
        file_o.puts "\"#{line[0][0]}\",\"#{line[0][1]}\"\n"
      end
    else
      puts "Error abriendo el archivo #{name}"
    end
  }
  puts "Fichero generado con éxito"
end

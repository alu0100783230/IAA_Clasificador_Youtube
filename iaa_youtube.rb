require 'csv'

module FileTid
  content = ""
  filenames = [
    "cine.csv",
    "deportes.csv",
    "musica.csv",
    "noticias.csv",
    "review.csv",
    "tutorial.csv",
    "videojuegos.csv",
    "vlog.csv"
  ]

  filenames.map { |name|
    if (File.file?(name))
      file_1 = File.open(name, 'r')
      puts "Extrayendo información de #{name}"
      file_1.readline
      while !file_1.eof?
        line = CSV.parse(file_1.readline)
        content += "\"#{line[0][1]}\",\"#{line[0][3]}\"\n"
      end
    else
      puts "Error abriendo los archivos"
    end
  }
  file_2 = File.open("output.csv", 'w')
  file_2.puts content
  puts "Fichero generado con éxito"
end

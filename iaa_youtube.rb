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
      file_1 = File.open(filename_1, 'r')
      puts "Extrayendo información de #{name}"
      file_1.readline
      while !file_1.eof?
        line = file_1.readline.split(",")
        content += "#{line[1]},#{line[2]}\n"
      end
    else
      puts "Error abriendo los archivos"
    end
  }
  file_2 = File.open("output.csv", 'r')
  file_2.puts content
end

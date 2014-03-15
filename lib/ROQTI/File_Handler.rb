class File_handler
  def initialize(file_name)
    @file_name = file_name
  
  end
  def read
    data = File.open(@file_name, "r")
    datafile = ""
    header = data.gets.split(",")
    return_data = []
    while (input_line = data.gets)
     return_data << input_line.strip.split(",")
    end
    
    
    data.close()
    return header, return_data

  end
end


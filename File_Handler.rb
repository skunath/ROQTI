class File_handler
  def initialize(file_name)
    @file_name = file_name
  
  end
  def read
    data = File.open(@file_name, "r")
    datafile = ""
    header = data.gets
    while (input_line = data.gets)
     puts input_line.strip.split(",").to_s
    end
    
    puts header
    data.close()

  end
end

file_name = File_handler.new("/Users/j_redlinger/python_trading/reference_data/aapl.csv")
file_name.read
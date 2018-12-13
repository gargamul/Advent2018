class SantaHelper
  def read_file(filename)
    data = []
    File.open("./inputs/"+filename, "r") do |f|
      count = 0
      f.each_line do |line|
        data << line
        count += 1
      end
      puts "read #{count} lines from #{filename}"
    end
    return data
  end

end
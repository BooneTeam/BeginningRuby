require "csv"  
class CSVExamResults  
    
  def initialize(filename)  
    puts "setting filename=",filename   
    @filename = filename  
  end  
    
  def printExamResults  
    @results = CSV.read(@filename)  
    @results.each { |x| puts x.inspect }
    puts "\n" 
  end 

  def add_zeros 
    @results.transpose.each { |x| puts x.inspect }
    puts "\n"
  end

  def squares
    print @results[0]
    print @results.transpose[0]
  end

  def testing
    test_numbers = [1,2,3,4,5,6,7,8,9]
    @results.each { |x| test_numbers - x }
  end
    
 
    
 # def addSampleResult  
 #   @results << ["Reema","76","pass"]  
 #   CSV.open(@filename, 'w') do |csv|  
 #     @results.each do |result|  
 #       csv << result  
 #     end  
 #   end  
 # end  
    
  c1 = CSVExamResults.new("sudoku3.txt")   
  c1.printExamResults 
 # c1.add_zeros# print updated csv file  
 # c1.squares
end  
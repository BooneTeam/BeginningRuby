require "csv"  
class CSVExamResults  
    
  def initialize(filename)  
    puts "setting filename=",filename   
    @filename = filename  
  end  
    
  def printExamResults  
    @results = CSV.read(@filename)  
    puts @results.inspect  
  end  
    
  def printFailedGuys  
    failed = @results.find_all do |r|  
      r[2]=="fail"  
    end  
    puts "Following guys failed the exam:"  
    failed.each {|m| puts m[0]}  
  end  
    
  def addSampleResult  
    @results << ["Reema","76","pass"]  
    CSV.open(@filename, 'w') do |csv|  
      @results.each do |result|  
        csv << result  
      end  
    end  
  end  
    
  c1 = CSVExamResults.new("csvreading.txt")  
  c1.printExamResults # displays CSV as two dimensional array  
  c1.printFailedGuys # this prints the names of the guys who failed!  
  c1.addSampleResult()  
  c1.printExamResults # print updated csv file  
end  
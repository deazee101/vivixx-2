class CarMatch
  attr_accessor :make, :age, :top_speed, :gas_tank_size

  def initialize (make, age, top_speed, gas_tank_size)
    @make = make.to_s
    @age = age
    @top_speed = top_speed.to_i
    @gas_tank_size = gas_tank_size.to_i
  end
end

@ford = CarMatch.new("Ford", 2014, 300, 100)
@audi = CarMatch.new("Audi", 2015, 200, 95)
@ferrari = CarMatch.new("Ferrari", 2016, 100, 80)



class DriverList
  attr_accessor :name, :car, :age, :contact

  def initialize (name, car, age, contact)
    @name = name
    @car = car
    @age = age.to_i
    @contact = contact.to_i
  end
end

@driver1 = DriverList.new("Andrew", "Ford", 23, 9023495)
@driver2 = DriverList.new("Hepburn", "Audi", 33, 94321234)
@driver3 = DriverList.new("Harry", "Ferrari", 19, 9231001)


def intro
  puts "*"*30
  puts "LIST OF DRIVERS"
  puts "1.#{@driver1.name}"
  puts "2.#{@driver2.name}"
  puts "3.#{@driver3.name}"
  puts "*"*30
  puts " "
  puts " "
  puts "Please Enter Driver's Name:"
  $dname =gets.chomp.to_s
  if $dname.upcase == "ANDREW"
   disp1
 elsif $dname.upcase == "HEPBURN"
   disp2
 elsif $dname.upcase ==  "HARRY"
   disp3
 else
   puts "Invalid Choice!"
 end
end

def cinfo
  puts "LIST OF CARS"
  puts "_"*30
  puts "1.#{@ford.make}"
  puts "2.#{@audi.make}"
  puts "3.#{@ferrari.make}"
  puts " "
  puts "Enter Car Brand:"
  puts " "
  $cname = gets.chomp.to_s
  puts " "
  if $cname.upcase == "FORD"
    cdis1
    checkcardvr
  elsif $cname.upcase == "AUDI"
    cdis2
    checkcardvr
  elsif $cname.upcase == "FERRARI"
    cdis3
    checkcardvr
  else
    puts "Please Try Again!"
  end
end




  #def initialize (make, age, top_speed, gas_tank_size)
def cdis1
    if $cname = @ford.make
      puts "Car: #{@ford.make}, Year #{@ford.age}, Top Speed: #{@ford.top_speed}mph, with a Gas Tank of: #{@ford.gas_tank_size}L"
    end
end

def cdis2
  if $cname = @audi.make
    puts "Car: #{@audi.make}, Year #{@audi.age}, Top Speed: #{@audi.top_speed}mph, with a Gas Tank of: #{@audi.gas_tank_size}L"
  end
end

def cdis3
  if $cname = @ferrari.make
    puts "Car: #{@ferrari.make}, Year #{@ferrari.age}, Top Speed: #{@ferrari.top_speed}mph, with a Gas Tank of: #{@ferrari.gas_tank_size}L"
  end
end



def disp1
    if $dname = @driver1.name
    puts "Driver's Name:  #{@driver1.name}"
    puts "Age: #{@driver1.age}"
    puts "Contact No.: #{@driver1.contact}"
    puts "Assigned Car: #{@ford.make}"
    end
end

def disp2
    if $dname = @driver2.name
    puts "Driver's Name:  #{@driver2.name}"
    puts "Age: #{@driver2.age}"
    puts "Contact No.: #{@driver2.contact}"
    puts "Assigned Car: #{@audi.make}"
  end
end

def disp3
    if $dname = @driver3.name
    puts "Driver's Name:  #{@driver3.name}"
    puts "Age: #{@driver3.age}"
    puts "Contact No.: #{@driver3.contact}"
    puts "Assigned Car: #{@ferrari.make}"
    end
end


def checkcardvr
  puts "Would you like to check other drivers? [y/n]"
  x = gets.chomp.downcase
  if x=='y'
    system 'cls'
    intro
    puts"_"*30
    cinfo
    elsif x == "n"
    puts "Thank you! Have a nice day!"
    gets
  else
    puts "Invalid Input...Please Try Again!"
    intro
  end
end




#system 'cls'
#intro
#puts"_"*30
#cinfo

opened_file = File.open(filename, r)

require 'pry'

class Owner
  attr_reader :name, :species  
   attr_accessor  :dogs, :cats

  @@all = []
  
  
  
  @@all = []
  @@count = 0 
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
    @@count += 1 
    @cats = []
    @dogs = []
    @pets = {cats:[], dogs: []}
  end 
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end 
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@count
  end 
  
  def self.reset_all 
    @@count = 0 
    @@all = []
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat 
    @cat << cat 
  end 
   binding.pry
  def walk_dogs
    @@pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
    
    @dogs.each do |dog|
      dog.mood = "happy"
    end 
    
   
  end

	def buy_dog(name)
		@pets[:dogs] << Dog.new(name)
	end 
	
	def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}

  end
  
end
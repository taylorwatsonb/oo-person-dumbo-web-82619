# your code goes here
require 'pry'

class Person 
attr_reader :name    
attr_accessor :happiness, :hygiene, :bank_account 
    
def initialize(name)
@name = name
@bank_account = 25
@happiness = 8
@hygiene = 8
end

def happiness
    if @happiness > 10
        @happiness = 10
    elsif @happiness < 0
        @happiness = 0
    else @happiness
    end
end

def hygiene
    if @hygiene > 10
        @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    else @hygiene
    end
end

#maria = Person.new("Maria")

def clean?
    if @hygiene > 7
        return true
    else 
        return false
    end
end
    
 def happy? 
    if @happiness > 7
        return true
    else 
        return false
    end
end
        
  def get_paid(salary)
    @bank_account += salary     
    return "all about the benjamins"
  end

    def take_bath
       self.hygiene += 4 
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

   def work_out
    self.happiness += 2 
    self.hygiene -= 3
    return  "♪ another one bites the dust ♫"
   end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(start_person, topic)
        if topic == "politics"
            start_person.happiness -= 2 
             self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            start_person.happiness += 1 
             self.happiness += 1
            return "blah blah sun blah rain"
        else return "blah blah blah blah blah"
        end
    end
end






    


 

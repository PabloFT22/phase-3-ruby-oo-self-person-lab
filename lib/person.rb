# your code goes here
class Person

    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account


    def initialize name, bank_account = 25, happiness = 8, hygiene = 8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (value)
        # def take_bath
        #     @hygiene += 4
        # return "♪ Rub-a-dub just relaxing in the tub ♫"
        # end
            @happiness = value.clamp(0,10)
    end

    def hygiene= (stank)
        @hygiene = stank.clamp(0,10)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        @happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end

    end

end
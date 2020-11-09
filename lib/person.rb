# your code goes here describe '#bank_account' do
        #it 'a new person instance is initialized with a bank_account balance of $25' do
            #people.each { |person| expect(person.bank_account).to eq(25) }
          #end
  
class Person
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account= bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def name
        @name
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def bank_account
        @bank_account
    end

    def happiness 
        @happiness
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end

        def hygiene
            @hygiene
        end

        def hygiene=(hygiene)
            if hygiene > 10
                @hygiene = 10
            elsif hygiene < 0
                @hygiene = 0
            else
                @hygiene = hygiene
            end

            def happy?
                if happiness > 7
                    return true
                else
                    return false
                end
            end

            def clean?
                if hygiene > 7
                    return true
                else
                    return false
                end
            end

            def get_paid(salary=100)
                @bank_account += salary
                if @bank_account = 125
                    return "all about the benjamins"
                end
            end

            def take_bath
                self.hygiene +=4
                return "♪ Rub-a-dub just relaxing in the tub ♫"
            end

            def work_out
                self.hygiene -= 3
                self.happiness += 2
                return "♪ another one bites the dust ♫"
            end

            def call_friend(instance)
                self.happiness += 3
                instance.happiness +=3
                return "Hi #{instance.name}! It's #{self.name}. How are you?"
                if @happiness >= 10
                    @happiness = 10
                end
            end

            def start_conversation(person, topic)
                if topic == "politics"
                    self.happiness -=2
                    person.happiness -=2
                    return "blah blah partisan blah lobbyist"
                elsif topic == "weather"
                    self.happiness += 1
                    person. happiness += 1
                    if @happiness >= 10
                        @happiness = 10
                    end
                    return "blah blah sun blah rain"
                else
                    return "blah blah blah blah blah"
                end
            end
        end
    end
end
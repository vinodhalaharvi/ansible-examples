module Extractor
    class Examples
        def initialize(*args)
        end

        def run(*args)
            state = 0 
            STDIN.readlines.map{ |line|
                if state == 0 and line.start_with? "EXAMPLES = "
                    state = 1 
                elsif state  == 1 and (line.start_with? "'''" or line.start_with? '"""')
                    state = 2
                end
                if state == 1 and not line.start_with? "EXAMPLES = "
                    print line
                end
            }
            
        end
    end
end

Extractor::Examples.new.run

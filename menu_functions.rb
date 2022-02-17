module MenuFunctions
  PATH_TASK = 'c:\Users\Roksa\lv-671\lib\tasks'
  PATH_TESTS = 'c:\Users\Roksa\lv-671\spec\lib\tasks'
  class Help
    def self.call(input)
    
    end
  end

  class Tasks
    def self.call(input)
      
    end
  end

  class Tests
    def self.call(input)

    end
  end

  class Run
    def self.call(input)
      
    end
  end

  class Test
    def self.call(input)

    end
  end

  class Show
    def self.call(input)

    end
  end

  class Authors
    def self.call(input)

    end
  end
  class AllTests
    def self.call(input)
      available_dirs = Dir.entries(PATH_TESTS).drop(2)
      username = available_dirs.map{ |string| string.split("_")[0] }.uniq[0]
      p username
      puts "Choose author`s name"
      input = gets.chomp.downcase
      allusersfiles = available_dirs.find_all{ |k| k.start_with?(username) }.map{|string| PATH_TESTS + "\\" + "#{string}"}
      p allusersfiles
      # system('rspec', allusersfiles.join(" "))
    end
  end
end

module Alchemy
  class Game
    attr_accessor :discovered
    SAVE_FILE = "#{Dir.home}/alchemy.yml"
    STARTERS = %w(earth water air fire)

    def initialize
      load_or_create_save_file
    end

    def append(element)
      unless discovered.include?(element)
        discovered.push(element)
        save
        read
      end
      return
    end

    def show
      (STARTERS + discovered).each do |element|
        puts element
      end
      return
    end

    def make_with(mother, father)
      if allowed?(mother) && allowed?(father)
        os = Offspring.new(mother: mother, father: father)
        append(os.child) if os.create
      else
        puts "You need to find both #{mother} and #{father} first!"
      end
      return
    end

    private

    def read
      self.discovered = YAML::load_file(SAVE_FILE)
    end

    def save
      File.open(SAVE_FILE, 'w') {|f| f.write self.discovered.to_yaml }
    end

    def purge
      FileUtils.rm(SAVE_FILE)
      load_or_create_save_file
    end

    def load_or_create_save_file
      FileUtils.touch(SAVE_FILE)
      safely_load
    end

    def safely_load
      begin
        self.discovered = YAML::load_file(SAVE_FILE)
        create_empty_save_file if discovered.nil? || !discovered
        purge unless discovered.kind_of?(Array)
      rescue
        purge
      end
    end

    def create_empty_save_file
      self.discovered = []
      save
      read
    end

    def allowed?(element)
      STARTERS.include?(element) || discovered.include?(element)
    end
  end
end

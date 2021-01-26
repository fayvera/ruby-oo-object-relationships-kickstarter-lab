require 'pry'
class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        backers_array = ProjectBacker.all.select {|backers| backers.project == self} 
        backers_array.map(&:backer)
    end
 
end
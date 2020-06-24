require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

# * Generate a list of strings with the name and size (eg. "Alpha - 30")
def name_and_size companies     
    companies.each do |company|
        p "#{company.name} - #{company.size}"  
    end 
end 

# * Combine all the sizes with reduce

def combine companies 
    companies.reduce(0) {|sum, company| sum + company.size}
end

# * Filter the list to show only companies over 100

def filter companies 
    companies.select do |company|
        company.size > 100 
    end
end 

# * Find the company named "Beta"
company_name = 'Beta'
def company_name companies, company_name
    which = companies.find do |company|
        company.name == company_name
    end 
    which.name 
end 
# * Find the largest company
def largest companies 
    size = 0
    biggest = companies.each do |company|
        if company.size > size 
            size = company.size
        end  
    end 
end 

# * Sort the companies from largest to smallest
def sorting companies 
    opposite = companies.reverse

    opposite.each do |company|
        p company.name
    end 
end

binding.pry 




### Your code below this

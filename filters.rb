# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require 'active_support/all'
require './candidates'
require 'pry'

def find(id)
 @candidates.each do
   |candidate|
   if candidate[:id] == id
     return candidate
   end
 end
 nil
end

def experienced?(candidate)
   candidate[:years_of_experience] >= 2
end

def github_points?(candidate)
  candidate[:github_points] >= 100
end

def Ruby_or_Python?(candidate)
  candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
end

def applied_15_days_ago?(candidate)
  candidate[:date_applied] > 15.days.ago.to_date
end


def qualified_candidates(candidates)
  candidates_copy = candidates
  candidates_copy.keep_if{ |p| experienced?(p) && github_points?(p) && Ruby_or_Python?(p) && applied_15_days_ago?(p) && p[:age] >= 18}
end


def ordered_by_qualifications(candidates)
  candidates.sort_by{ |p| [-p[:years_of_experience], -p[:github_points]] }

end
pp ordered_by_qualifications(@candidates)

# More methods will go below

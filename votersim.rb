require './Voter.rb'
require './candidate.rb'
require './Vmenu.rb'


def choice
  attr_accessor :choice
  choice = gets.chomp
end


def test_voter
  name = "Ashlynn"
  politics = "Independant"
  v = Voter.new(name, politics)
  raise "Wrong name" unless v.name == name
  raise "Wrong politics" unless v.politics == politics
  v
end

voter = test_voter

def test_candidate(voter)
  name = "Bill"
  party = "Republican"
  c = Candidate.new(name, party)
  raise "wrong name" unless c.name == name
  raise "Wrong party" unless c.party == party

  # c.convinced?(voter)
end

def test_campaign
  campaign = Campaign.new voters, candidates

  winner = campaign.run
  puts winner.name winner.party
end



test_candidate(voter)




voters = [
  Voter.new("Vinnie", "Progressive"),
  Voter.new("Eric", "Libertarian"),
  Voter.new("Aaron", "Conservative"),
  Voter.new("Ashlynn", "Independant"),
  Voter.new("Dylan", "Democrat"),
]
candidates = [
  Candidate.new("Billy", "Republican"),
  Candidate.new("Karla", "Democrat"),
  Candidate.new("Carol", "Republican"),
  Candidate.new("Gerry", "Republican"),
  Candidate.new("Kevin", "Republican"),
]

# voters += candidates
#
# candidates.each do |c|
#   c.votes = c.stump(voters)
#
# end

# winner = #The Candidate with the most votes

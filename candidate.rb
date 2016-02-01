require './Voter.rb'
require './Vmenu.rb'

class Candidate < Voter
  attr_accessor :candidate_party

  def initialize(cadidate_name, candidate_party)
    @@candidate_name = cadidate_name
    @@candidate_party = candidate_party
  end

def created_candidate
  puts "What will their name be?"
  candidate_name = gets.chomp
  candidate_name.store

  def politics
    # There is actually a range of politics within
    # each party, so this isn't so cut-and-dry.
    if party == "Republican"
      "Conservative"
    else
      "Progressive"
    end
  end

  def stump(voters)
    voters.each do |v|
      v.listen(party)
      case @party
    when "Republican"
      if voter.politics.eql?("Libertarian")
        if rand > 0.1
          true
        else
          false
        end
      elsif voter.politics.eql?("Conservative")
        if rand > 0.25
          true
        else
          false
        end
      elsif voter.politics.eql?("Independent")
        if rand > 0.50
          true
        else
          false
        end
      elsif voter.politics.eql?("Progressive")
        if rand > 0.75
          true
        else
          false
        end
      else
        if rand > 0.90
          true
        else
          false
        end
      end
    when "Democrat"
      if voter.politics.eql?("Libertarian")
        if rand < 0.1
          true
        else
          false
        end
      elsif voter.politics.eql?("Conservative")
        if rand < 0.25
          true
        else
          false
        end
      elsif voter.politics.eql?("Independent")
        if rand < 0.50
          true
        else
          false
        end
      elsif voter.politics.eql?("Progressive")
        if rand < 0.75
          true
        else
          false
        end
      else
        if rand < 0.90
          true
        else
          false
        end
      end
    end
  end
end

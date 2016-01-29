# require './Vmenu.rb'

class Voter
  attr_accessor :voter_name, :voter_viewpoints, :voter_count

  def initialize(voter_name, voter_viewpoints)
    @voter_name = voter_name
    @voter_viewpoints = voter_viewpoints
    @voter_count = 1
    @notavote = Array.new
    @final = Array.new
  end

  def notavote
    @voter_name.each do |voter|
      if not voter.voted
        @notavote.push(voter)
      end
    end
    @notavote
  end

  def results
    4.times do
      puts "COUNTING VOTES"
      sleep 1
    end
    puts "The votes have been tallied!"
    @final.each do |candidate|
      puts "#{candidate_name} has #{candidate.counter}"
      sleep 1
    end
  end


end




class Candidate < Voter
  attr_accessor :candidate_party, :candidate_name, :counter

  def initialize(candidate_name, candidate_party)
    @candidate_name = candidate_name
    @candidate_party = candidate_party
    @counter = 1
  end
end




def every_stump
  while true
    if @candidate_name
      puts "Everyone has been accounted for"
      break
    else
      stump
    end
  end
end

public
def listen(candidate)
  puts "#{candidate}: #{candidate} sucks!"
end


def stump
  puts "The Candidates will now stand on their stumps"
  speaker = @candidate_name
  all = @voter_name, @candidate_name
  puts "#{speaker} says you should vote for them!"
  sleep 1

  all.each do |voter|
    voter.listen(speaker)
  end
  @final
end


public
  def speech
   stump
   stats
   every_stump
  end


   def stats
     case @candidate_party
     when "Republican"
       if voter.voter_viewpoints.include?("Libertarian")
         if rand > 0.1
           true
         else
           false
         end
       elsif voter.voter_viewpoints.include?("Independant")
         if rand > 0.50
           true
         else
           false
         end
       elsif voter.voter_viewpoints.include?("Progressive")
         if rand > 0.75
         true
       else
         false
       end
       if rand > 0.90
         true
       else
         false
       end
     end
   when "Democrat"
     if voter.voter_viewpoints.include?("Libertarian")
       if rand < 0.1
         true
       else
         false
       end
     elsif voter.voter_viewpoints.include?("Conservative")
       if rand < 0.25
         true
       else
         false
       end
     elsif voter.voter_viewpoints.include?("Progressive")
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


require './Voter.rb'
# module VoterMethods
$voter_array = Array.new
$candidate_array = Array.new

def disclaimer
  puts "\n"*15
  puts "Please play in full screen"
  sleep 2
  puts "Product incomplete :("
  sleep 2
end

def introscreen
  puts "\n"*100

puts "                   __,__r========qL,
                 ,m**`~'            XW;
          ____Lm/'      _mmmm    jW@+===m___,
    .m+*f~TX7''|    `Y*X@X7~MMLL          ._JXmL,                  @ @ @ @     000000000000000000000000000000000000
  jf~'    `YM#:~      !*##@ d j@~Y!     `~~~+m_                   @ @ @ @ @    ::::::::::::::::::::::::::::::::::::
 Z            M       `Nd*=+5+      -====L__ !M<%%>             @ @ @ @ @ @ @  000000000000000000000000000000000000
m!            `Y=;m_,   ~Yf~~               YL`W;                @ @ @ @ @ @   ::::::::::::::::::::::::::::::::::::
|        .mmmmmqrL_XXX~*==mL,                 Y#|               @ @ @ @ @ @ @  000000000000000000000000000000000000
|  ,Z~~~~~'        ~~~~    X#         -==L__,  !#,                @ @ @ @ @    ::::::::::::::::::::::::::::::::::::
| |tL             ____WY*f~~                `~qd#W              000000000000000000000000000000000000000000000000000
V,| `~~Y*+mL_,  :f~~ ~                   q_    V#b              :::::::::::::::::::::::::::::::::::::::::::::::::::
`b|         `Y+-W;                        `\\,  _#               000000000000000000000000000000000000000000000000000
  V              N,  m                 YL,   `\L#@               :::::::::::::::::::::::::::::::::::::::::::::::::::
                  N  #                   YL,   `##,             000000000000000000000000000000000000000000000000000
                 .P  #                     `\   V#|
               ../   #           ^           YL |W
              -P     #    :P  ;  ||           `|!W
              Z'     #   :P  :'   #,           #L#
          _ _Wb    jWD  jf   /    |b           V@*
        j+N##8#4rt8#~.,jf    |    |#       b   |W
     .r*'m8####q#P8###*'    W    :##       V;  d|
    /K_jWK#X###~#|###mW#   :P  j;##|    #, `#, @
   !TGW###8#m#K7q=WWmd##mmm#m.Z8###!    #W  |b |
   /4#@##W#+##P:WZWMZ*W=m##WMN|WZWP:#;m,d#W;Dd |                                  !!!!
  W*~~~M#W!KWjW5!!/WV##N7j#KXPNMX#DW###b###D#Xb|                                  BEST
 !'    d!JXXXW!`!Ldm@#bd#WW8K)X|X#8#8#K##V#!K5|#                                 VOTING
      d@f~  jf.Z\/Vb*Y+W#j(WMZPrMM#@##K#@##;WWj##,                              SIMULATION
      ~    m*~'   '#`\8#W4KW#qX@VW##W#8##8#rNWK###G<%%>                            EVER
          `'       #`8*=#YWWK/b+WW#W#*#MWm8*KKd#M#**m,                            !!!!
                   #Z'  VW#f'~M+NM#####K#8@WLMZKX#W#+M;
                            ~` *YM#######@*)P/+DK####m#
                                 `'*##fXVPX|Vr~##Z#W@N@
                                    `WL_d**DfWX#8#WK##*b
                                              `W###@#N#/b
                                               .#mj#X~YM#
                                               ~`#WdD~  Y!
                                               `'_|#f--
                                                   *"

end

# class Game
  # while quit == true
def startmenu
  puts "\nWhat would you like to do? \n (1)Create. (2)List. (3)Update. (4)Vote. (5)Quit"
  menu_choice
end
###
def update
  puts "Would you like to update a (1)Voter or (2)Candidate?"
  update_choice = gets.chomp
  if update_choice == "1"
    puts "So you want to change a voter."
    voter_update
  else update_choice == "2"
    puts "So you want to change a candidate?"
    candidate_update
  end
end

def voter_update
  sleep 2#lists the names
  $voter_array.each { |x|
  print x.voter_name + ", \n"
  }

  sleep 1

  puts "Which voter are you updating?"
  voter_choice = gets.chomp.capitalize

  #compare input against the voter Array
  $voter_array.each { |x|
  if x.voter_name == voter_choice


  puts "#{x.voter_name}, the #{x.voter_viewpoints} found. \nWhat is their new name going to be?"
  new_name = gets.chomp.capitalize

  puts "Whats their political group?  \n(1)Progressive \n(2)Conservative \n(3)Libertarian \n(4)Democrat  \n(5)Independant"
  new_viewpoint = gets.chomp

  case new_viewpoint
  when '1'
    x.voter_name = new_name
    x.voter_viewpoints = "Progressive"
    puts "Returning to main menu"
    startmenu
  when '2'
    x.voter_name = new_name
    x.voter_viewpoints = "Conservative"
    puts "Returning to main menu"
    startmenu
  when '3'
    x.voter_name = new_name
    x.voter_viewpoints = "Libertarian"
    puts "Returning to main menu"
    startmenu
  when '4'
    x.voter_name = new_name
    x.voter_viewpoints = "Democrat"
    puts "Returning to main menu"
    startmenu
  when '5'
    x.voter_name = new_name
    x.voter_viewpoints = "Independant"
    puts "Returning to main menu"
    startmenu
  end
else puts "Searching..."
  puts
end
  }
  puts "That person doesn't exist, returning to menu"
  startmenu
end

def candidate_update
  sleep 2
  $candidate_array.each { |x|
    print x.candidate_name + ", \n"
}

puts "Which Candidate are you going to change?"
candidate_choice = gets.chomp.capitalize

$candidate_array.each { |x|
if x.candidate_name == candidate_choice
puts "#{x.candidate_name} of the #{x.candidate_party} has been found \n What is their new name?"
  new_candidate_name = gets.chomp.capitalize

  puts "Are they a (1)Republican or (2)Democrat?"
  new_candidate_party = gets.chomp
  case new_candidate_party
  when '1'
  x.candidate_name = new_candidate_name
  x.candidate_party = "Republican"
  puts "Returning to main menu"
  startmenu
when '2'
  x.candidate_name = new_candidate_name
  x.candidate_party = "Democrat"
  puts "Returning to main menu"
  startmenu
  else
    puts "Invalid"
    candidate_update
  end
else
  puts "Loading..."
  puts
end
}
puts "That person doesn't exist, returning to main menu"
startmenu
end


def vote
  puts "The election will now begin"
  speech
end


def menu_choice
  puts "<< Pick something >>"
  menu_choice = gets.chomp
  if menu_choice == "1"
    puts "Would you like to create a (1)Voter or (2)Candidate?"
    menu_choice = gets.chomp
    if menu_choice == "1"
      puts "What is Their name?"
      name = gets.chomp.capitalize
      puts "What is their viewpoint?"
      puts "(1)Progressive, (2)Conservative, (3)Libertarian, (4)Democrat, (5)Independant"
      viewpoint = gets.chomp
      case viewpoint
    when '1' then viewpoint = "Progressive"
        puts "Voter is #{name} and their views are Progressive"
      when '2' then viewpoint = "Conservative"
        puts "Voter is #{name} and their views are Conservative"
      when '3' then viewpoint = "Libertarian"
        puts "Voter is #{name} and their views are Libertarian"
      when '4' then viewpoint = "Democrat"
        puts "Voter is #{name} and their views are Democrat"
      when '5' then viewpoint = "Independant"
        puts "Voter is #{name} and their views are Independant"
      else puts "Please pick a valid option"
      end
      $voter_array << Voter.new(name, viewpoint)
      sleep 1
      puts "Returning to main menu"
      startmenu


    elsif menu_choice == "2"
        then puts "What is The Candidates name?"
        candidate_name = gets.chomp.capitalize
        puts "Are they (1)Republican or (2)Democrat?"
        candidate_party = gets.chomp
        case candidate_party
        when '1'then candidate_party = "Republican"
          puts "Candidate #{candidate_name} is a Republican"
        when '2' then candidate_party = "Democrat"
          puts "Candidate #{candidate_name} is a Democrat"
        end
        $candidate_array << Candidate.new(candidate_name, candidate_party)
        sleep 1
        puts "Returning to main menu"
        startmenu
      end

    elsif menu_choice == "2"
       list
       startmenu

  elsif menu_choice == "3"
      update
      startmenu

  elsif menu_choice == "4"
      vote

    else menu_choice == "5"
      # quit == false
    end
end

def banner
  puts " = "*15
end

def list
  puts "List (1)Voters or (2)Candidates?"
  response = gets.chomp
  case response

  when '1'
  $voter_array.each { |x|
  print x.voter_name + " "
  print x.voter_viewpoints
  puts "\n"
  }

  when '2'
    $candidate_array.each { |x|
    print x.candidate_name + " "
    print x.candidate_party
    puts "\n"
    }
  end
end


# end

# end
# def selection
#   if selection = "1"
#     puts "Would you like to create a (1)Voter or (2)Candidate?"
#     selection = gets.chomp
#     if selection = "1"
#       then Voter.new
#       if selection = "2"
#         then Candidate.new

# g = Game.new

disclaimer
introscreen
startmenu
banner

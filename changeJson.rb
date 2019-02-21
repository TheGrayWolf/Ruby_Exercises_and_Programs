require 'json'
require 'colorize'

# Verify if leaderboard has country or no
file = File.read('personal.json')
personal = JSON.parse(file)
@hasCountry =
if personal['leaderboards'][1] != nil
    "yes".to_s
    else
    "no".to_s
end
puts "Does it have country? #{@hasCountry}".red
puts "Do you wish Region Only Yes/No"
@regionOnly = gets.downcase.chomp
if @regionOnly == "yes"
    # ********** Region Rank **********
    puts "Enter Region rank"
    getRegion = gets.chomp.to_i
    
    # ********** Delta Rank **********
    puts "Enter Delta rank"
    getDelta = gets.chomp.to_i
    
    if  (@regionOnly == 'yes' && @hasCountry == 'yes')
        # ********** Read Personal **********
        file = File.read('personal.json')
        personal = JSON.parse(file)
        # ********** Change Region Ranks **********
        personal['leaderboards'][0]['version'] += 1
        personal['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion -=3)
        personal['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
        personal['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['you']['rank'] = (getRegion -=3)
        personal['leaderboards'][0]['you']['rank_delta'] = (getDelta)
        personal['leaderboards'].delete_at(1)
        File.open("personal.json", 'w') {|f| f.write(JSON.pretty_generate(personal))}
        elsif
        (@regionOnly == 'yes' && @hasCountry == 'no')
        # ********** Read Personal **********
        file = File.read('personal.json')
        personal = JSON.parse(file)
        # ********** Change Region Ranks **********
        personal['leaderboards'][0]['version'] += 1
        personal['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion -=3)
        personal['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
        personal['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion +=1)
        personal['leaderboards'][0]['you']['rank'] = (getRegion -=3)
        personal['leaderboards'][0]['you']['rank_delta'] = (getDelta)
        File.open("personal.json", 'w') {|f| f.write(JSON.pretty_generate(personal))}
    end
    elsif @regionOnly == "no"
    # ********** Country Rank **********
    puts "Enter Country rank"
    getCountry = gets.to_i
    # ********** Region Rank **********
    puts "Enter Region rank"
    getRegion = gets.chomp.to_i
    
    # ********** Delta Rank **********
    puts "Enter Delta rank"
    getDelta = gets.chomp.to_i
    (@regionOnly == 'no' && @hasCountry == 'no')
    # ********** Read Personal **********
    file = File.read('personal.json')
    personal = JSON.parse(file)
    # # ********** Read Country An Region **********
    file = File.read('Country An Region.json')
    countryAndRegion = JSON.parse(file)
    # ********** Change Region Ranks **********
    personal['leaderboards'][0]['version'] += 1
    personal['leaderboards'][0]['leaderboard'][0]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion -=3))
    personal['leaderboards'][0]['leaderboard'][1]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion +=1))
    personal['leaderboards'][0]['leaderboard'][2]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion +=1))
    personal['leaderboards'][0]['leaderboard'][3]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion +=1))
    personal['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (countryAndRegion['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta))
    personal['leaderboards'][0]['leaderboard'][4]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion +=1))
    personal['leaderboards'][0]['leaderboard'][5]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion +=1))
    personal['leaderboards'][0]['leaderboard'][6]['rank'] = (countryAndRegion['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion +=1))
    personal['leaderboards'][0]['you']['rank'] = (countryAndRegion['leaderboards'][0]['you']['rank'] = (getRegion -=3))
    personal['leaderboards'][0]['you']['rank_delta'] = (countryAndRegion['leaderboards'][0]['you']['rank_delta'] = (getDelta))
    # ********** Change Region Ranks **********
    personal['leaderboards'][1] = countryAndRegion['leaderboards'][1]
    personal['leaderboards'][1]['version'] = personal['leaderboards'][0]['version']
    personal['leaderboards'][1]['leaderboard'][0]['rank'] = (getCountry -=3)
    personal['leaderboards'][1]['leaderboard'][1]['rank'] = (getCountry +=1)
    personal['leaderboards'][1]['leaderboard'][2]['rank'] = (getCountry +=1)
    personal['leaderboards'][1]['leaderboard'][3]['rank'] = (getCountry +=1)
    personal['leaderboards'][1]['leaderboard'][3]['rank_delta'] = (getDelta)
    personal['leaderboards'][1]['leaderboard'][4]['rank'] = (getCountry +=1)
    personal['leaderboards'][1]['leaderboard'][5]['rank'] = (getCountry +=1)
    personal['leaderboards'][1]['leaderboard'][6]['rank'] = (getCountry +=1)
    personal['leaderboards'][1]['you']['rank'] = (getCountry -=3)
    personal['leaderboards'][1]['you']['rank_delta'] = (getDelta)
    File.open("personal.json", 'w') {|f| f.write(JSON.pretty_generate(personal))}
end

puts "*****************************************************************************".green
puts "*                             Work Complete                                 *"
puts "*****************************************************************************".green
# ********** Ranks Output **********
puts "*****************************************************************************".green
puts "*                              Region Rank                                  *"
puts "*****************************************************************************".green
puts "Version  #{personal['leaderboards'][0]['version']}"
# puts "1'st #{personal['leaderboards'][0]['leaderboard'][0]['rank']}"
# puts "2'nd #{personal['leaderboards'][0]['leaderboard'][1]['rank']}"
# puts "3'th #{personal['leaderboards'][0]['leaderboard'][2]['rank']}"
# puts "4'th #{personal['leaderboards'][0]['leaderboard'][3]['rank']}"
# puts "5'th #{personal['leaderboards'][0]['leaderboard'][4]['rank']}"
# puts "6'th #{personal['leaderboards'][0]['leaderboard'][5]['rank']}"
# puts "7'th #{personal['leaderboards'][0]['leaderboard'][6]['rank']}"
puts "You #{personal['leaderboards'][0]['you']['rank']}"
if personal['leaderboards'][1] != nil
    puts "*****************************************************************************".green
    puts "*                              Country Rank                                 *"
    puts "*****************************************************************************".green
    puts "Version  #{personal['leaderboards'][0]['version']}"
    # puts "1'st #{personal['leaderboards'][1]['leaderboard'][0]['rank']}"
    # puts "2'nd #{personal['leaderboards'][1]['leaderboard'][1]['rank']}"
    # puts "3'th #{personal['leaderboards'][1]['leaderboard'][2]['rank']}"
    # puts "4'th #{personal['leaderboards'][1]['leaderboard'][3]['rank']}"
    # puts "5'th #{personal['leaderboards'][1]['leaderboard'][4]['rank']}"
    # puts "6'th #{personal['leaderboards'][1]['leaderboard'][5]['rank']}"
    # puts "7'th #{personal['leaderboards'][1]['leaderboard'][6]['rank']}"
    puts "You #{personal['leaderboards'][1]['you']['rank']}"
    else
end
puts "*****************************************************************************".green
puts "*                              Delta Rank                                   *"
puts "*****************************************************************************".green
puts "Delta Rank  #{getDelta}"
puts "*****************************************************************************".blue
puts "*****************************************************************************".blue

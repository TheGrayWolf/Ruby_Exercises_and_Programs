require 'json'

# ********** Country Rank **********
	puts "Enter Country rank"
	getCountry = gets.to_i	

# ********** Region Rank **********
	puts "Enter Region rank"
	getRegion = gets.to_i

# ********** Region Rank **********	

	puts "Enter Delta rank"
	getDelta = gets.to_i


# ********** Change Country Ranks **********
file = File.read('personal.json')
ceva = JSON.parse(file)
ceva['leaderboards'][0]['version'] += 1
ceva['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion -=3)
ceva['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion +=1)
ceva['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion +=1)
ceva['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion +=1)
ceva['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
ceva['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion +=1)
ceva['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion +=1)
ceva['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion +=1)
ceva['leaderboards'][0]['you']['rank'] = (getRegion -=3)
ceva['leaderboards'][0]['you']['rank_delta'] = (getDelta)
# ********** Change Region Ranks **********
ceva['leaderboards'][1]['version'] += 1
ceva['leaderboards'][1]['leaderboard'][0]['rank'] = (getCountry -=3)
ceva['leaderboards'][1]['leaderboard'][1]['rank'] = (getCountry +=1)
ceva['leaderboards'][1]['leaderboard'][2]['rank'] = (getCountry +=1)
ceva['leaderboards'][1]['leaderboard'][3]['rank'] = (getCountry +=1)
ceva['leaderboards'][1]['leaderboard'][3]['rank_delta'] = (getDelta)
ceva['leaderboards'][1]['leaderboard'][4]['rank'] = (getCountry +=1)
ceva['leaderboards'][1]['leaderboard'][5]['rank'] = (getCountry +=1)
ceva['leaderboards'][1]['leaderboard'][6]['rank'] = (getCountry +=1)
ceva['leaderboards'][1]['you']['rank'] = (getCountry -=3)
ceva['leaderboards'][1]['you']['rank_delta'] = (getDelta)
File.open("personal.json", 'w') {|f| f.write(JSON.pretty_generate(ceva))}


# ********** Ranks Output **********
puts "*****************************************************************************"
puts "*                              Region Rank                                  *"
puts "*****************************************************************************"
puts "Version  #{ceva['leaderboards'][0]['version']}"
# puts "1'st #{ceva['leaderboards'][0]['leaderboard'][0]['rank']}"
# puts "2'nd #{ceva['leaderboards'][0]['leaderboard'][1]['rank']}"
# puts "3'th #{ceva['leaderboards'][0]['leaderboard'][2]['rank']}"
# puts "4'th #{ceva['leaderboards'][0]['leaderboard'][3]['rank']}"
# puts "5'th #{ceva['leaderboards'][0]['leaderboard'][4]['rank']}"
# puts "6'th #{ceva['leaderboards'][0]['leaderboard'][5]['rank']}"
# puts "7'th #{ceva['leaderboards'][0]['leaderboard'][6]['rank']}"
puts "You #{ceva['leaderboards'][0]['you']['rank']}"
puts""
puts "*****************************************************************************"
puts "*                              Country Rank                                 *"
puts "*****************************************************************************"
puts "Version  #{ceva['leaderboards'][0]['version']}"
# puts "1'st #{ceva['leaderboards'][1]['leaderboard'][0]['rank']}"
# puts "2'nd #{ceva['leaderboards'][1]['leaderboard'][1]['rank']}"
# puts "3'th #{ceva['leaderboards'][1]['leaderboard'][2]['rank']}"
# puts "4'th #{ceva['leaderboards'][1]['leaderboard'][3]['rank']}"
# puts "5'th #{ceva['leaderboards'][1]['leaderboard'][4]['rank']}"
# puts "6'th #{ceva['leaderboards'][1]['leaderboard'][5]['rank']}"
# puts "7'th #{ceva['leaderboards'][1]['leaderboard'][6]['rank']}"
puts "You #{ceva['leaderboards'][1]['you']['rank']}"


puts "*****************************************************************************"
puts "*                              Delta Rank                                   *"
puts "*****************************************************************************"
puts "Delta Rank  #{getDelta}"
puts "*****************************************************************************"
puts "*****************************************************************************"

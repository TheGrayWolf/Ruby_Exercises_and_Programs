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
		# ********** Change Country Ranks **********
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
		puts "i did stuff"
	else
		puts "test"
	if  (@regionOnly == 'yes' && @hasCountry == 'no')
		# ********** Read Personal **********
		file = File.read('personal.json')
		personal = JSON.parse(file)
		# ********** Change Country Ranks **********
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
		puts "i shoot me"
		end
	end
end
	puts "Potatoooo"
# else
# 	if (regionOnly == 'no' && hasCountry == 'no')
# 		file = File.read('Country An Region.json')
#  		countryAndRegion = JSON.parse(file)
# 		file = File.read('personal.json')
# 		personal = JSON.parse(file)
# 		# ********** Change Country Ranks **********
# 		countryAndRegion['leaderboards'][0]['version'] += 1
# 		countryAndRegion['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion -=3)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion +=1)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion +=1)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion +=1)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion +=1)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion +=1)
# 		countryAndRegion['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion +=1)
# 		countryAndRegion['leaderboards'][0]['you']['rank'] = (getRegion -=3)
# 		countryAndRegion['leaderboards'][0]['you']['rank_delta'] = (getDelta)
# 		# ********** Change Region Ranks **********
#  		countryAndRegion['leaderboards'][1]['version'] += 1
#  		countryAndRegion['leaderboards'][1]['leaderboard'][0]['rank'] = (getCountry -=3)
#  		countryAndRegion['leaderboards'][1]['leaderboard'][1]['rank'] = (getCountry +=1)
# 		countryAndRegion['leaderboards'][1]['leaderboard'][2]['rank'] = (getCountry +=1)
# 		countryAndRegion['leaderboards'][1]['leaderboard'][3]['rank'] = (getCountry +=1)
# 		countryAndRegion['leaderboards'][1]['leaderboard'][3]['rank_delta'] = (getDelta)
# 		countryAndRegion['leaderboards'][1]['leaderboard'][4]['rank'] = (getCountry +=1)
# 		countryAndRegion['leaderboards'][1]['leaderboard'][5]['rank'] = (getCountry +=1)
# 		countryAndRegion['leaderboards'][1]['leaderboard'][6]['rank'] = (getCountry +=1)
# 		countryAndRegion['leaderboards'][1]['you']['rank'] = (getCountry -=3)
# 		countryAndRegion['leaderboards'][1]['you']['rank_delta'] = (getDelta)
# 		File.open("personal.json", 'w') {|f| f.write(JSON.pretty_generate(personal))}
# 		puts "i did stuff"
# 	end
# end

		# ## ********** Country Rank **********
		# puts "Enter Country rank"
		# getCountry = gets.chomp.to_i	

		# # ********** Region Rank **********
		# puts "Enter Region rank"
		# getRegion = gets.chomp.to_i

		# # ********** Delta Rank **********	
		# puts "Enter Delta rank"
		# getDelta = gets.chomp.to_i

		# if hasCountry == "yes"

## ********** Country Rank **********
#	puts "Enter Country rank"
#	getCountry = gets.to_i	

# ********** Region Rank **********
#	puts "Enter Region rank"
#	getRegion = gets.to_i

# ********** Delta Rank **********	
#	puts "Enter Delta rank"
#	getDelta = gets.to_i


# # ********** Read Files **********
# file = File.read('personal.json')
# personal = JSON.parse(file)

# file = File.read('Region Only.json')
# regionOnly = JSON.parse(file)

# file = File.read('Country An Region.json')
# countryAndRegion = JSON.parse(file)

# # ********** Change Country Ranks **********
# personal['leaderboards'][0]['version'] += 1
# personal['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion -=3)
# personal['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion +=1)
# personal['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion +=1)
# personal['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion +=1)
# personal['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
# personal['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion +=1)
# personal['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion +=1)
# personal['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion +=1)
# personal['leaderboards'][0]['you']['rank'] = (getRegion -=3)
# personal['leaderboards'][0]['you']['rank_delta'] = (getDelta)
# # ********** Change Region Ranks **********
# personal['leaderboards'][1]['version'] += 1
# personal['leaderboards'][1]['leaderboard'][0]['rank'] = (getCountry -=3)
# personal['leaderboards'][1]['leaderboard'][1]['rank'] = (getCountry +=1)
# personal['leaderboards'][1]['leaderboard'][2]['rank'] = (getCountry +=1)
# personal['leaderboards'][1]['leaderboard'][3]['rank'] = (getCountry +=1)
# personal['leaderboards'][1]['leaderboard'][3]['rank_delta'] = (getDelta)
# personal['leaderboards'][1]['leaderboard'][4]['rank'] = (getCountry +=1)
# personal['leaderboards'][1]['leaderboard'][5]['rank'] = (getCountry +=1)
# personal['leaderboards'][1]['leaderboard'][6]['rank'] = (getCountry +=1)
# personal['leaderboards'][1]['you']['rank'] = (getCountry -=3)
# personal['leaderboards'][1]['you']['rank_delta'] = (getDelta)
# File.open("personal.json", 'w') {|f| f.write(JSON.pretty_generate(personal))}


# # ********** Ranks Output **********
# puts "*****************************************************************************"
# puts "*                              Region Rank                                  *"
# puts "*****************************************************************************"
# puts "Version  #{personal['leaderboards'][0]['version']}"
# # puts "1'st #{personal['leaderboards'][0]['leaderboard'][0]['rank']}"
# # puts "2'nd #{personal['leaderboards'][0]['leaderboard'][1]['rank']}"
# # puts "3'th #{personal['leaderboards'][0]['leaderboard'][2]['rank']}"
# # puts "4'th #{personal['leaderboards'][0]['leaderboard'][3]['rank']}"
# # puts "5'th #{personal['leaderboards'][0]['leaderboard'][4]['rank']}"
# # puts "6'th #{personal['leaderboards'][0]['leaderboard'][5]['rank']}"
# # puts "7'th #{personal['leaderboards'][0]['leaderboard'][6]['rank']}"
# puts "You #{personal['leaderboards'][0]['you']['rank']}"
# puts""
# puts "*****************************************************************************"
# puts "*                              Country Rank                                 *"
# puts "*****************************************************************************"
# puts "Version  #{personal['leaderboards'][0]['version']}"
# # puts "1'st #{personal['leaderboards'][1]['leaderboard'][0]['rank']}"
# # puts "2'nd #{personal['leaderboards'][1]['leaderboard'][1]['rank']}"
# # puts "3'th #{personal['leaderboards'][1]['leaderboard'][2]['rank']}"
# # puts "4'th #{personal['leaderboards'][1]['leaderboard'][3]['rank']}"
# # puts "5'th #{personal['leaderboards'][1]['leaderboard'][4]['rank']}"
# # puts "6'th #{personal['leaderboards'][1]['leaderboard'][5]['rank']}"
# # puts "7'th #{personal['leaderboards'][1]['leaderboard'][6]['rank']}"
# puts "You #{personal['leaderboards'][1]['you']['rank']}"


# puts "*****************************************************************************"
# puts "*                              Delta Rank                                   *"
# puts "*****************************************************************************"
# puts "Delta Rank  #{getDelta}"
# puts "*****************************************************************************"
# puts "*****************************************************************************"

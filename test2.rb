require 'json'
require 'colorize'
require_relative 'methods'

# Verify if leaderboard has country or no
file = File.read('personal.json')
personal = JSON.parse(file)
@hasCountry = 
if personal['leaderboards'][1] != nil
	"yes".to_s	
	else
	"no".to_s
end
# ********** Region Rank **********
puts "Enter Region rank"
$getRegion = gets.chomp.to_i
# ********** Country Rank **********
puts "Enter Country rank"
$getCountry = gets.chomp.to_i
# ********** Read Personal **********
file = File.read('personal.json')
personal = JSON.parse(file)

if $getRegion <= 3
	if $getRegion == 1
		potato
		# file = File.read('personal.json')
		# ceva = JSON.parse(file)
		# ceva['leaderboards'][0]['version'] += 1
		# ceva['leaderboards'][0]['leaderboard'][0]['rank'] = (getRegion + 1)
		# ceva['leaderboards'][0]['leaderboard'][1]['rank'] = (getRegion + 2)
		# ceva['leaderboards'][0]['leaderboard'][2]['rank'] = (getRegion + 3)
		# ceva['leaderboards'][0]['leaderboard'][3]['rank'] = (getRegion)
		# #ceva['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
		# ceva['leaderboards'][0]['leaderboard'][4]['rank'] = (getRegion + 4)
		# ceva['leaderboards'][0]['leaderboard'][5]['rank'] = (getRegion + 5)
		# ceva['leaderboards'][0]['leaderboard'][6]['rank'] = (getRegion + 6)
		# ceva['leaderboards'][0]['you']['rank'] = (getRegion)
		# #ceva['leaderboards'][0]['you']['rank_delta'] = (getDelta)
		# # ********** Change Region Ranks **********
		# ceva['leaderboards'][1]['version'] += 1
		# ceva['leaderboards'][1]['leaderboard'][0]['rank'] = (getCountry + 1)
		# ceva['leaderboards'][1]['leaderboard'][1]['rank'] = (getCountry + 2)
		# ceva['leaderboards'][1]['leaderboard'][2]['rank'] = (getCountry + 3)
		# ceva['leaderboards'][1]['leaderboard'][3]['rank'] = (getCountry)
		# #ceva['leaderboards'][1]['leaderboard'][3]['rank_delta'] = (getDelta)
		# ceva['leaderboards'][1]['leaderboard'][4]['rank'] = (getCountry + 4)
		# ceva['leaderboards'][1]['leaderboard'][5]['rank'] = (getCountry + 5)
		# ceva['leaderboards'][1]['leaderboard'][6]['rank'] = (getCountry + 6)
		# ceva['leaderboards'][1]['you']['rank'] = (getCountry)
		# #ceva['leaderboards'][1]['you']['rank_delta'] = (getDelta)
		

		# # ********** Select Region and Country Leaderboards **********
		# regionData = ceva['leaderboards'][0]['leaderboard']
		# countryData = ceva['leaderboards'][1]['leaderboard']

		# # ********** Sort Region and Country Leaderboards **********
		# a = regionData.sort_by { |x| x['rank'].to_i}
		# b = countryData.sort_by { |x| x['rank'].to_i}

		# # ********** Puts the Region and Country rearanged Leaderboards back **********
		# ceva['leaderboards'][0]['leaderboard'] = a
		# ceva['leaderboards'][1]['leaderboard'] = b

		# # ********** Vrite the rearanged file **********
		# File.open("test.json", 'w') {|f| f.write(JSON.pretty_generate(ceva))}
	elsif 
			getRegion == 2
	end
end
	# if getRegion <= 3
	# 	if 1
	# 		region1 = getRegion - 1
	# 		region2 = getRegion - 2
	# 		region3 = getRegion - 3 
	# 		region4 = getRegion
	# 		region5 = getRegion - 4 
	# 		region6 = getRegion - 5
	# 		region7 = getRegion - 6
	# 		if 2
	# 			region1 = getRegion +1
	# 			region2 = getRegion - 1
	# 			region3 = getRegion - 2 
	# 			region4 = getRegion
	# 			region5 = getRegion - 3 
	# 			region6 = getRegion - 4
	# 			region7 = getRegion - 5
	# 			if 3
	# 				region1 = getRegion +2
	# 				region2 = getRegion + 1
	# 				region3 = getRegion - 1 
	# 				region4 = getRegion
	# 				region5 = getRegion - 2 
	# 				region6 = getRegion - 3
	# 				region7 = getRegion - 4
	# 			end
	# 		end
	# 	end
	# end
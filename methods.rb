def potato
	file = File.read('personal.json')
		ceva = JSON.parse(file)
		ceva['leaderboards'][0]['version'] += 1
		ceva['leaderboards'][0]['leaderboard'][0]['rank'] = ($getRegion.to_i + 1)
		ceva['leaderboards'][0]['leaderboard'][1]['rank'] = ($getRegion.to_i + 2)
		ceva['leaderboards'][0]['leaderboard'][2]['rank'] = ($getRegion.to_i + 3)
		ceva['leaderboards'][0]['leaderboard'][3]['rank'] = ($getRegion.to_i)
		#ceva['leaderboards'][0]['leaderboard'][3]['rank_delta'] = (getDelta)
		ceva['leaderboards'][0]['leaderboard'][4]['rank'] = ($getRegion.to_i + 4)
		ceva['leaderboards'][0]['leaderboard'][5]['rank'] = ($getRegion.to_i + 5)
		ceva['leaderboards'][0]['leaderboard'][6]['rank'] = ($getRegion.to_i + 6)
		ceva['leaderboards'][0]['you']['rank'] = ($getRegio.to_i)
		#ceva['leaderboards'][0]['you']['rank_delta'] = (getDelta)
		# ********** Change Region Ranks **********
		ceva['leaderboards'][1]['version'] += 1
		ceva['leaderboards'][1]['leaderboard'][0]['rank'] = ($getCountry.to_i + 1)
		ceva['leaderboards'][1]['leaderboard'][1]['rank'] = ($getCountry.to_i + 2)
		ceva['leaderboards'][1]['leaderboard'][2]['rank'] = ($getCountry.to_i + 3)
		ceva['leaderboards'][1]['leaderboard'][3]['rank'] = ($getCountry.to_i)
		#ceva['leaderboards'][1]['leaderboard'][3]['rank_delta'] = (getDelta)
		ceva['leaderboards'][1]['leaderboard'][4]['rank'] = ($getCountry.to_i + 4)
		ceva['leaderboards'][1]['leaderboard'][5]['rank'] = ($getCountry.to_i + 5)
		ceva['leaderboards'][1]['leaderboard'][6]['rank'] = ($getCountry.to_i + 6)
		ceva['leaderboards'][1]['you']['rank'] = ($getCountry.to_i)
		#ceva['leaderboards'][1]['you']['rank_delta'] = (getDelta)
		

		# ********** Select Region and Country Leaderboards **********
		regionData = ceva['leaderboards'][0]['leaderboard']
		countryData = ceva['leaderboards'][1]['leaderboard']

		# ********** Sort Region and Country Leaderboards **********
		a = regionData.sort_by { |x| x['rank'].to_i}
		b = countryData.sort_by { |x| x['rank'].to_i}

		# ********** Puts the Region and Country rearanged Leaderboards back **********
		ceva['leaderboards'][0]['leaderboard'] = a
		ceva['leaderboards'][1]['leaderboard'] = b

		# ********** Vrite the rearanged file **********
		File.open("test.json", 'w') {|f| f.write(JSON.pretty_generate(ceva))}
	end
module ActivitiesHelper
	def activity_verb_past_helper(activity_type_name)
		case activity_type_name
		when "Running"
			"ran"
		when "Walking"
			"walked"
		when "Cycling"
			"went cycling"
		when "Swimming"
			"swam"
		when "Strength Training"
			"trained"
		when "Hicking"
			"hicked"
		when "Nordic Skiing"
			"went nordic skiing"
		when "Skiing"
			"went skiing"
		when "Skating"
			"went skating"
		when "Snowboarding"
			"went snowboarding"
		when "Hockey"
			"played hocked"
		when "Table Tennis"
			"played table tennis"
		else
			"exercised"
		end	
	end

	def activity_motivational_helper(duration)
		case duration
		when 0..15
			"Keep the Good Work!"
		when 15..60
			"Good Job!"
		when 60..120
			"Excellent!"
		else
			"Incredible! You might want to take a break :)"		          	          
		end
	end

	def compute_duration(datetime_end = DateTime.now, datetime_start = 0)
		# duration in minutes from seconds
		duration = ((datetime_end.to_i - datetime_start.to_i) / 60 ).round + 1
		# raise duration.inspect
	end

	def activity_picture_url(activity_name)
		# jpeg pic names based on activity_name.snake.tolow + '.jpg'
		# replace later with API	
		case activity_name
		when "Running"
			"https://images.unsplash.com/photo-1513593771513-7b58b6c4af38?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80"
		when "Walking"
			"https://images.unsplash.com/photo-1487956382158-bb926046304a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80"
		when "Cycling"
			"https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
		when "Swimming"
			"https://images.unsplash.com/photo-1530549387789-4c1017266635?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
		when "Strength Training"
			"https://images.unsplash.com/photo-1534438327276-14e5300c3a48?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
		when "Hicking"
			"https://images.unsplash.com/19/nomad.JPG?ixlib=rb-1.2.1&auto=format&fit=crop&w=1288&q=80"
		when "Nordic Skiing"
			"https://images.unsplash.com/photo-1518775053278-5a569f0be353?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"
		when "Skiing"
			"https://images.unsplash.com/photo-1551698618-1dfe5d97d256?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
		when "Skating"
			"https://images.unsplash.com/photo-1517177646641-83fe10f14633?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1608&q=80"
		when "Snowboarding"
			"https://images.unsplash.com/photo-1522445263200-1b4b91053db8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
		when "Hockey"
			"https://images.unsplash.com/photo-1545652034-ff9abf03cf70?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80"
		when "Table Tennis"
			"https://images.unsplash.com/photo-1534158914592-062992fbe900?ixlib=rb-1.2.1&auto=format&fit=crop&w=1375&q=80"
		else
			# generic exercice pic
			"https://images.unsplash.com/photo-1484583066749-c2129489f52f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1490&q=80"
		end	
	end

	def activity_css_rgba(activity)
		# duration 121 min max duration
		css_color_names = ["AliceBlue","AntiqueWhite","Aqua","Aquamarine","Azure","Beige","Bisque","Black","BlanchedAlmond","Blue","BlueViolet","Brown","BurlyWood","CadetBlue","Chartreuse","Chocolate","Coral","CornflowerBlue","Cornsilk","Crimson","Cyan","DarkBlue","DarkCyan","DarkGoldenRod","DarkGray","DarkGrey","DarkGreen","DarkKhaki","DarkMagenta","DarkOliveGreen","Darkorange","DarkOrchid","DarkRed","DarkSalmon","DarkSeaGreen","DarkSlateBlue","DarkSlateGray","DarkSlateGrey","DarkTurquoise","DarkViolet","DeepPink","DeepSkyBlue","DimGray","DimGrey","DodgerBlue","FireBrick","FloralWhite","ForestGreen","Fuchsia","Gainsboro","GhostWhite","Gold","GoldenRod","Gray","Grey","Green","GreenYellow","HoneyDew","HotPink","IndianRed","Indigo","Ivory","Khaki","Lavender","LavenderBlush","LawnGreen","LemonChiffon","LightBlue","LightCoral","LightCyan","LightGoldenRodYellow","LightGray","LightGrey","LightGreen","LightPink","LightSalmon","LightSeaGreen","LightSkyBlue","LightSlateGray","LightSlateGrey","LightSteelBlue","LightYellow","Lime","LimeGreen","Linen","Magenta","Maroon","MediumAquaMarine","MediumBlue","MediumOrchid","MediumPurple","MediumSeaGreen","MediumSlateBlue","MediumSpringGreen","MediumTurquoise","MediumVioletRed","MidnightBlue","MintCream","MistyRose","Moccasin","NavajoWhite","Navy","OldLace","Olive","OliveDrab","Orange","OrangeRed","Orchid","PaleGoldenRod","PaleGreen","PaleTurquoise","PaleVioletRed","PapayaWhip","PeachPuff","Peru","Pink","Plum","PowderBlue","Purple","Red","RosyBrown","RoyalBlue","SaddleBrown","Salmon","SandyBrown","SeaGreen","SeaShell","Sienna","Silver","SkyBlue","SlateBlue","SlateGray","SlateGrey","Snow","SpringGreen","SteelBlue","Tan","Teal","Thistle","Tomato","Turquoise","Violet","Wheat","White","WhiteSmoke","Yellow","YellowGreen"]
		css_color_names_length = css_color_names.length
		# r, g, b = activity.activity_type.name.bytes[0..2]
		# r, g, b = r - rand(16), g - rand(16), b - rand(16)
		# a = [activity.activity_type.name.bytes[3] + activity.duration + 128, 255].max
		# "background-color: rgba(#{r}, #{g}, #{b}, #{a})"
		css_color_names_index = rand(css_color_names_length -1)
		# raise (rand(r) + rand(g) + rand(b) + rand(a)).inspect
		# raise [css_color_names_length, css_color_names_index].inspect
		css_color_names[css_color_names_index].to_sym
	end

end

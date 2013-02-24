class Launcher
	def initialize app_map
		@app_map  = app_map
	end

	def run file_name
		application = select_app file_name
		print application
		system "#{application} #{file_name}"
	end

	def select_app file_name
		ftype = file_type file_name
		@app_map [ ftype ]
	end

	def file_type file_name
		ext = File.extname(file_name).gsub(/^\./,'').downcase
		print "\next is " + ext + "\n"
		ext
	end
end
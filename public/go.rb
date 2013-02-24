#!/usr/bin/env ruby
$:.unshift '.'
require 'launcher'

def help
	print "
	You must pass in the path to the file to launch.
	Usage: #{__FILE__} target file

"
end

if ARGV.empty?
	help
	exit
else
	app_map = {
		'html' => 'open -a MacVim',
		'rb' => 'open -a MacVim',
		'jpg' => 'gimp'
	}

	l = Launcher.new app_map
	target = ARGV.join ' '
	print "target is " + target
	l.run target
end

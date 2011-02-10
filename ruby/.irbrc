require 'irb/completion'
#require 'map_by_method'
#require 'what_methods'
require 'pp'
require 'pathname'

IRB.conf[:AUTO_INDENT]=true

wd = `pwd`.chomp("\n")
if File.directory? wd + '/lib'
  $LOAD_PATH.unshift(wd + '/lib')
end
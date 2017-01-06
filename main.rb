require 'open-uri'
data = ""
open(ENV['release_notes_url']) { |io| data = io.read }
puts data

`envman add --key RELEASE_NOTES --value "#{data}"`
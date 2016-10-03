#!/usr/bin/env ruby
require_relative "copy_chopper/version"

Dir.glob('./*').each do |entry|
  if File.basename(entry).include?(' copy')
    newEntry = entry.gsub(' copy', '')
    File.rename( entry, newEntry )
  end
end


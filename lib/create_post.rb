file_name = "_posts/#{Time.now.strftime("%Y-%m-%d")}-#{ARGV[0]}.markdown"
IO.write(file_name, "---
type: post
layout: post
markdown: true
title:
---")
puts "Created #{file_name}"

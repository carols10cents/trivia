#!/usr/bin/env ruby
system "./bin/run_all.sh compare_dir"

any_changed = false

Dir["corrent/*.output"].each do |corrent_file|
	compare_file = "compare_dir/#{File.basename(corrent_file)}"
	if system "diff -u #{corrent_file} #{compare_file} > /dev/null"
		# no diffs
	else
		puts "#{compare_file} differs"
		any_changed = true
	end
end

puts "yay" unless any_changed
exit any_changed ? 1 : 0

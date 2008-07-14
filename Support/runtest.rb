#!/usr/bin/env ruby

require "#{ENV['TM_BUNDLE_SUPPORT']}/header.rb"

html_header("Run test", "PHPUnit - Run test")

phpunit_output = `cd "#{ENV['TM_PU_TEST_PATH']}"; phpunit AllTests.php`
puts phpunit_output.gsub(/[\n]/, '<br>') 

html_footer()
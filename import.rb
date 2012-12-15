# From file
#require "jekyll/migrators/wordpressdotcom"
#Jekyll::WordpressDotCom.process("wordpress.xml")


# from DB
#require "jekyll/migrators/wordpress"
#Jekyll::WordPress.process("arzebiu", "root", "", "localhost")
#


require "./lib/wordpress.rb"
Jekyll::WordPress.process("arzebiu", "root", "", "localhost")

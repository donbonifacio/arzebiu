require 'yaml'
require 'jekyll'

class GenerateTagPages
  def self.generate
    options = Jekyll.configuration({})
    site = Jekyll::Site.new(options)
    site.read
    site.tags.each do |tag_name, tag|
      base_template = File.read('tag.html')
      base_template.gsub!("__page.title__", tag_name)
      base_template.gsub!("__page.permalink__", "/tags/#{tag_name}")
      base_template.gsub!("__page.slug__", tag_name)
      IO.write("_posts/2000-12-12-#{tag_name}.html", base_template)
      puts "Generated tag page #{tag_name}"
    end
  end
end
GenerateTagPages.generate

require 'yaml'

class GenerateCategoryPages
  DATA = YAML.load(File.read('_config.yml'))["categoryList"]
  def self.generate
    DATA.each do |slug, category|
      base_template = File.read('category.html')
      base_template.gsub!("__page.title__", category["title"])
      base_template.gsub!("__page.permalink__", category["permalink"])
      IO.write("_posts/2000-12-12-#{slug}.html", base_template)
      puts "Generated page #{slug}"
    end
  end
end
GenerateCategoryPages.generate

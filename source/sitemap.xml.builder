# source/sitemap.xml.builder
xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.each do |content|
    xml.url do
      xml.loc "#{data.site.url}#{content.url}"
    end if content.url !~ /\.(css|js|eot|svg|woff|ttf|png|jpg)$/
  end
end

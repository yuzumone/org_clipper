require "org_clipper/version"
require "httpclient"
require "pandoc-ruby"

module OrgClipper
  class << self
    def get(url)
      client = HTTPClient.new()
      res = client.get(url)
      PandocRuby.convert(res.body, :s, {:from => :html, :to => :org}, 'wrap=none')
    end

    def output(doc, dir, filename)
      File.open("#{dir}/#{filename}.org", mode = "w") do |f|
        f.write(doc)
      end
    end
  end
end

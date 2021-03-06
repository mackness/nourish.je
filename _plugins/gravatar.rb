module Jekyll
  module GravatarFilter
    def gravatar(input)
      "https://secure.gravatar.com/avatar/" + Digest::MD5.hexdigest(input)
    end
  end
end

Liquid::Template.register_filter(Jekyll::GravatarFilter)

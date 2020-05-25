module UsersHelper
    def gravatar_for(user,size:80)
        # size=options[:size]
        gravatar_id=Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url,alt: user.name,class: "gravatar")
    end

    def gravatar_profile(user,size:80)
        # size=options[:size]
        gravatar_id=Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url,alt: user.name,class: "gravatar_center")
    end

    def avatar_url(user,size:80)
        if user.picture?
            gravatar_url=user.picture.url
        else
          gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
          gravatar_url="https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        end
        image_tag(gravatar_url,alt: user.name,class: "gravatar_center")
      end
end

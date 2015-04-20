module BoutiquesHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(boutique)
    gravatar_id = Digest::MD5::hexdigest(boutique.email)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: boutique.name, class: "gravatar")
  end
end
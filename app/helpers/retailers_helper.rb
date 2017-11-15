module RetailersHelper
  def retailer_avatar_url(retailer)
    # return user.avatar.url if user.avatar.present?
    return retailer.profile_picture if retailer.profile_picture

    "default_user"
  end
end

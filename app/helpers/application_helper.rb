module ApplicationHelper
  def avatar_url(user)
    if user.image
      "http://graph.facebook.com/#{user.uid}/picture?type=large"
    else
      gravatar_id = Digest::MD5::hexdigest(user.email).downcase
      default_url = image_url('User_Profile.png')
      if user.image
        "http://graph.facebook.com/#{user.uid}/picture?type=large"
      # elsif gravatar_id
        #{}"http://gravatar.com/avatar/#{gravatar_id}.png?s=#{150}&d=#{CGI::escape(default_url)}"
      else
        default_url
      end
    end
  end
end

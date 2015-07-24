module AppointmentHelper

  def link_to_user(user)
      link_to user.formatted_name,
              user_path(user)
  end
end

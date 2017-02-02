module GroupsHelper

  def show_join_group_button?(person, group)
    return true unless logged_in?(person)
    !person.member_of?(group)
  end

  def show_member_buttons?(person, group)
    if !logged_in?(person)
      false
    else
      person.member_of?(group)
    end
  end

  def group_location(group)
    [group.street, group.zip, group.city, group.country_name].select {|x| x.present? }.join(', ')
  end

end

class UsersController < ApplicationController
  def index
    matching_users = User.all

    @list_of_users = matching_users.order({ :created_at => :desc })

    render({ :template => "users/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_users = User.where({ :id => the_id })

    @the_user = matching_users.at(0)

    render({ :template => "users/show" })
  end

  def create
    the_user = User.new
    the_user.username = params.fetch("query_username")
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.linkedin_profile = params.fetch("query_linkedin_profile")
    the_user.mentor = params.fetch("query_mentor", false)
    the_user.biography = params.fetch("query_biography")
    the_user.mentee = params.fetch("query_mentee", false)
    the_user.industry = params.fetch("query_industry")
    the_user.interests = params.fetch("query_interests")
    the_user.current_occupation = params.fetch("query_current_occupation")
    the_user.location = params.fetch("query_location")
    the_user.goals = params.fetch("query_goals")

    if the_user.valid?
      the_user.save
      redirect_to("/users", { :notice => "User created successfully." })
    else
      redirect_to("/users", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.username = params.fetch("query_username")
    the_user.first_name = params.fetch("query_first_name")
    the_user.last_name = params.fetch("query_last_name")
    the_user.linkedin_profile = params.fetch("query_linkedin_profile")
    the_user.mentor = params.fetch("query_mentor", false)
    the_user.biography = params.fetch("query_biography")
    the_user.mentee = params.fetch("query_mentee", false)
    the_user.industry = params.fetch("query_industry")
    the_user.interests = params.fetch("query_interests")
    the_user.current_occupation = params.fetch("query_current_occupation")
    the_user.location = params.fetch("query_location")
    the_user.goals = params.fetch("query_goals")

    if the_user.valid?
      the_user.save
      redirect_to("/users/#{the_user.id}", { :notice => "User updated successfully."} )
    else
      redirect_to("/users/#{the_user.id}", { :alert => the_user.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user = User.where({ :id => the_id }).at(0)

    the_user.destroy

    redirect_to("/users", { :notice => "User deleted successfully."} )
  end
end

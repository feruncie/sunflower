class CommentLikesController < ApplicationController
  def index
    matching_comment_likes = CommentLike.all

    @list_of_comment_likes = matching_comment_likes.order({ :created_at => :desc })

    render({ :template => "comment_likes/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_comment_likes = CommentLike.where({ :id => the_id })

    @the_comment_like = matching_comment_likes.at(0)

    render({ :template => "comment_likes/show" })
  end

  def create
    the_comment_like = CommentLike.new
    the_comment_like.user_id = params.fetch("query_user_id")
    the_comment_like.comment_id = params.fetch("query_comment_id")

    if the_comment_like.valid?
      the_comment_like.save
      redirect_to("/comment_likes", { :notice => "Comment like created successfully." })
    else
      redirect_to("/comment_likes", { :alert => the_comment_like.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_comment_like = CommentLike.where({ :id => the_id }).at(0)

    the_comment_like.user_id = params.fetch("query_user_id")
    the_comment_like.comment_id = params.fetch("query_comment_id")

    if the_comment_like.valid?
      the_comment_like.save
      redirect_to("/comment_likes/#{the_comment_like.id}", { :notice => "Comment like updated successfully."} )
    else
      redirect_to("/comment_likes/#{the_comment_like.id}", { :alert => the_comment_like.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_comment_like = CommentLike.where({ :id => the_id }).at(0)

    the_comment_like.destroy

    redirect_to("/comment_likes", { :notice => "Comment like deleted successfully."} )
  end
end

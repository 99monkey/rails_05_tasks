class FeedbacksController < ApplicationController

  def index
    if title = params[:new_feedback]
      #code here
      Feedback.create(:title => title)
    end
    @feedbacks = Feedback.all
  end

end

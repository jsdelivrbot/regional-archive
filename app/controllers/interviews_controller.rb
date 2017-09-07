class InterviewsController < ApplicationController
  def index
    @disable_header = true
    @interviews = Interview.all
  end

  def show
    @disable_header = true
    @interview = Interview.find(params[:id])
  end

end

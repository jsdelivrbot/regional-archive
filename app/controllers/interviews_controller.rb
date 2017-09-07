class InterviewsController < ApplicationController
  def index
    @disable_header = true
    @interviews = Interview.all.paginate(page: params[:page], per_page: 15)
  end

  def show
    @disable_header = true
    @interview = Interview.find(params[:id])
  end

end

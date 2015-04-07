class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def search

  end

  def search_results
    @partner = params[:search][:partner]
    @opportunity = params[:search][:opportunity]

    if @partner != "" #search user
      @user_search = true
      @results = User.where("lower(full_name) LIKE ?", "%#{@partner}%")
    elsif @opportunity != ""
      #binding.pry
      @opportunity_search = true
      @results = Opportunity.
          where("lower(name) LIKE ? OR expertise_desired LIKE ? OR partnership_opportunity LIKE ?", "%#{@opportunity}%", "%#{@opportunity}%", "%#{@opportunity}%")
    end

  end

  def contact

  end

  def send_message
    if params[:contact][:message]
      ContactMailer.send_message(params[:contact][:message]).deliver_now
      redirect_to contact_path, notice: 'Message was sent'
    end
  end
end

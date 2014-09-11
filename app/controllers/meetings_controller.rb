class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      redirect_to @meeting
    else
      render action: 'new'
    end
  end

  def show
    @meeting = Meeting.find(params[:id])
    if params[:kpi] == "true"
      Mailer.kpi_email(@meeting).deliver
      flash[:success] = "KPI's sent!"
    end
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])

    if @meeting.update(meeting_params)
      redirect_to @meeting
    else
      render action: 'edit'
    end
  end


  private
  def meeting_params
    params.require(:meeting).permit(:business_checking, :personal_checking, :bank_balance, :revenue, :hours, :shifts, :labor_percent, :leads, :closes, :debt_payoff, :yelp_average, :yelp_amount, :yelp_one, :yelp_two, :yelp_three, :yelp_four, :yelp_five, :tax_is_paid, :tax_amount, :ink_balance, :amount_spent, :photos, :fb_posts)
  end
end

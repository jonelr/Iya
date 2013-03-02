class FeedingsController < ApplicationController
  before_filter :authenticate_user!

  # GET /feedings
  # GET /feedings.json
  def index
    @feedings = Feeding.where("owner=?", current_user.email).paginate(:page => params[:page]).order("datetime desc")
    @page_title = "Feeding listing"

    @wets = Feeding.current_day_wets.count
    @poops = Feeding.current_day_poops.count

    @date_today = Date.today

    @wets_yesterday = Feeding.yesterday_wets.count
    @poops_yesterday = Feeding.yesterday_poops.count

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: Feeding.order("datetime desc").all }
    end
  end

  # GET /feedings/1
  # GET /feedings/1.json
  def show
    @feeding = Feeding.find(params[:id])

    if @feeding and @feeding.owner == current_user.email
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @feeding }
      end
    else
      redirect_to :action => "index"
    end

    
  end

  # GET /feedings/new
  # GET /feedings/new.json
  def new
    @feeding = Feeding.new
    @feeding.owner = current_user.email

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feeding }
    end
  end

  # GET /feedings/1/edit
  def edit
    @feeding = Feeding.find(params[:id])
    
    if @feeding and @feeding.owner == current_user.email
      @wets = '0'
      @poops = '0'

      if @feeding.wets 
        @wets = '1'
      end
      if @feeding.poops
        @poops = '1'
      end
    
      respond_to do |format|
        format.html
      end
    else
      redirect_to :action=>"index"
    end
    
  end

  # POST /feedings
  # POST /feedings.json
  def create
    @feeding = Feeding.new(params[:feeding])

    respond_to do |format|
      if @feeding.save
        format.html { redirect_to @feeding, notice: 'Feeding was successfully created.' }
        format.json { render json: @feeding, status: :created, location: @feeding }
      else
        format.html { render action: "new" }
        format.json { render json: @feeding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feedings/1
  # PUT /feedings/1.json
  def update
    @feeding = Feeding.find(params[:id])

    if @feeding and @feeding.owner == current_user.email
      respond_to do |format|
        if @feeding.update_attributes(params[:feeding])
          format.html { redirect_to @feeding, notice: 'Feeding was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @feeding.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /feedings/1
  # DELETE /feedings/1.json
  def destroy
    @feeding = Feeding.find(params[:id])
    if @feeding and @feeding.owner == current_user.email
      @feeding.destroy
    end

    respond_to do |format|
      format.html { redirect_to feedings_url }
      format.json { head :no_content }
    end
  end
end

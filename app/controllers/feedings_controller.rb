class FeedingsController < ApplicationController

  # GET /feedings
  # GET /feedings.json
  def index
    @feedings = Feeding.paginate(:page => params[:page]).order("datetime desc")
    @page_title = "Feeding listing"

    @wets = Feeding.where("wets=1 and month(datetime)=? and day(datetime)=?", Date.today.mon, Date.today.day).count
    @poops = Feeding.where("poops=1 and month(datetime)=? and day(datetime)=?", Date.today.mon, Date.today.day).count
    @date_today = Date.today

    @wets_yesterday = Feeding.where("wets=1 and month(datetime)=? and day(datetime)=?", Date.today.mon, Date.today.day-1).count
    @poops_yesterday = Feeding.where("poops=1 and month(datetime)=? and day(datetime)=?", Date.today.mon, Date.today.day-1).count

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: Feeding.order("datetime desc").all }
    end
  end

  # GET /feedings/1
  # GET /feedings/1.json
  def show
    @feeding = Feeding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feeding }
    end
  end

  # GET /feedings/new
  # GET /feedings/new.json
  def new
    @feeding = Feeding.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feeding }
    end
  end

  # GET /feedings/1/edit
  def edit
    @feeding = Feeding.find(params[:id])

    @wets = '0'
    @poops = '0'
    if @feeding.wets 
      @wets = '1'
    end
    if @feeding.poops
      @poops = '1'
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

  # DELETE /feedings/1
  # DELETE /feedings/1.json
  def destroy
    @feeding = Feeding.find(params[:id])
    @feeding.destroy

    respond_to do |format|
      format.html { redirect_to feedings_url }
      format.json { head :no_content }
    end
  end
end

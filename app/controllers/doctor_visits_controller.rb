class DoctorVisitsController < ApplicationController
  # GET /doctor_visits
  # GET /doctor_visits.json
  def index
    @doctor_visits = DoctorVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_visits }
    end
  end

  # GET /doctor_visits/1
  # GET /doctor_visits/1.json
  def show
    @doctor_visit = DoctorVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_visit }
    end
  end

  # GET /doctor_visits/new
  # GET /doctor_visits/new.json
  def new
    @doctor_visit = DoctorVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_visit }
    end
  end

  # GET /doctor_visits/1/edit
  def edit
    @doctor_visit = DoctorVisit.find(params[:id])
  end

  # POST /doctor_visits
  # POST /doctor_visits.json
  def create
    @doctor_visit = DoctorVisit.new(params[:doctor_visit])

    respond_to do |format|
      if @doctor_visit.save
        format.html { redirect_to @doctor_visit, notice: 'Doctor visit was successfully created.' }
        format.json { render json: @doctor_visit, status: :created, location: @doctor_visit }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_visits/1
  # PUT /doctor_visits/1.json
  def update
    @doctor_visit = DoctorVisit.find(params[:id])

    respond_to do |format|
      if @doctor_visit.update_attributes(params[:doctor_visit])
        format.html { redirect_to @doctor_visit, notice: 'Doctor visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_visits/1
  # DELETE /doctor_visits/1.json
  def destroy
    @doctor_visit = DoctorVisit.find(params[:id])
    @doctor_visit.destroy

    respond_to do |format|
      format.html { redirect_to doctor_visits_url }
      format.json { head :no_content }
    end
  end
end

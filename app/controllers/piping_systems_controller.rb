class PipingSystemsController < ApplicationController
  # GET /piping_systems
  # GET /piping_systems.json
  def index
    @piping_systems = PipingSystem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @piping_systems }
    end
  end

  # GET /piping_systems/1
  # GET /piping_systems/1.json
  def show
    @piping_system = PipingSystem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @piping_system }
    end
  end

  # GET /piping_systems/new
  # GET /piping_systems/new.json
  def new
    @piping_system = PipingSystem.new
    @project = Project.find(params[:project_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @piping_system }
    end
  end

  # GET /piping_systems/1/edit
  def edit
    @piping_system = PipingSystem.find(params[:id])
  end

  # POST /piping_systems
  # POST /piping_systems.json
  def create
    @piping_system = PipingSystem.new(params[:piping_system])

    respond_to do |format|
      if @piping_system.save
        format.html { redirect_to project_path(params[:piping_system][:project_id], notice: 'Piping system was successfully created.') }
        format.json { render json: @piping_system, status: :created, location: @piping_system }
      else
        format.html { render action: "new" }
        format.json { render json: @piping_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /piping_systems/1
  # PUT /piping_systems/1.json
  def update
    @piping_system = PipingSystem.find(params[:id])

    respond_to do |format|
      if @piping_system.update_attributes(params[:piping_system])
        format.html { redirect_to @piping_system, notice: 'Piping system was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @piping_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piping_systems/1
  # DELETE /piping_systems/1.json
  def destroy
    @piping_system = PipingSystem.find(params[:id])
    @piping_system.destroy

    respond_to do |format|
      format.html { redirect_to piping_systems_url }
      format.json { head :no_content }
    end
  end
end

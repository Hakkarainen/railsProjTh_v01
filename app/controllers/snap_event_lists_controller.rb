class SnapEventListsController < ApplicationController
  before_action :set_snap_event_list, only: [:show, :edit, :update, :destroy]

  # GET /snap_event_lists
  # GET /snap_event_lists.json
  def index
    @snap_event_lists = SnapEventList.all
  end

  # GET /snap_event_lists/1
  # GET /snap_event_lists/1.json
  def show
  end

  # GET /snap_event_lists/new
  def new
    @snap_event_list = SnapEventList.new
  end

  # GET /snap_event_lists/1/edit
  def edit
  end

  # POST /snap_event_lists
  # POST /snap_event_lists.json
  def create
    @snap_event_list = SnapEventList.new(snap_event_list_params)

    respond_to do |format|
      if @snap_event_list.save
        format.html { redirect_to @snap_event_list, notice: 'Snap event list was successfully created.' }
        format.json { render :show, status: :created, location: @snap_event_list }
      else
        format.html { render :new }
        format.json { render json: @snap_event_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snap_event_lists/1
  # PATCH/PUT /snap_event_lists/1.json
  def update
    respond_to do |format|
      if @snap_event_list.update(snap_event_list_params)
        format.html { redirect_to @snap_event_list, notice: 'Snap event list was successfully updated.' }
        format.json { render :show, status: :ok, location: @snap_event_list }
      else
        format.html { render :edit }
        format.json { render json: @snap_event_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snap_event_lists/1
  # DELETE /snap_event_lists/1.json
  def destroy
    @snap_event_list.destroy
    respond_to do |format|
      format.html { redirect_to snap_event_lists_url, notice: 'Snap event list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snap_event_list
      @snap_event_list = SnapEventList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snap_event_list_params
      params.require(:snap_event_list).permit(:snapEventListID, :snapEventType, :eventListTimeStamp, :snapEvent1, :snapEvent2, :snapEvent3, :snapEvent4, :snapEvent5, :snapEvent6, :snapEvent7, :snapEvent8, :snapEvent9, :snapEvent10)
    end
end

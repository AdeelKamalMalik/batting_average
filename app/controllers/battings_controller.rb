class BattingsController < ApplicationController
  before_action :set_batting, only: %i[ show edit update destroy ]

  # GET /battings or /battings.json
  def index
    @battings = Batting.all
  end

  # GET /battings/1 or /battings/1.json
  def show
  end

  # GET /battings/new
  def new
    @batting = Batting.new
  end

  # GET /battings/1/edit
  def edit
  end

  # POST /battings or /battings.json
  def create
    @batting = Batting.new(batting_params)

    respond_to do |format|
      if @batting.save
        format.html { redirect_to @batting, notice: "Batting was successfully created." }
        format.json { render :show, status: :created, location: @batting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @batting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battings/1 or /battings/1.json
  def update
    respond_to do |format|
      if @batting.update(batting_params)
        format.html { redirect_to @batting, notice: "Batting was successfully updated." }
        format.json { render :show, status: :ok, location: @batting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @batting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battings/1 or /battings/1.json
  def destroy
    @batting.destroy
    respond_to do |format|
      format.html { redirect_to battings_url, notice: "Batting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batting
      @batting = Batting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def batting_params
      params.require(:batting).permit(:player_id, :year_id, :stint, :team_id, :lg_id, :g, :ab, :r, :h, :2b, :3b, :hr, :rbi, :sb, :cs, :bb, :so, :ibb, :hbp, :sh, :sf, :gidp)
    end
end

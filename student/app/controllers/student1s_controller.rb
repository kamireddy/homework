class Student1sController < ApplicationController
  before_action :set_student1, only: [:show, :edit, :update, :destroy]

  # GET /student1s
  # GET /student1s.json
  def index
    @student1s = Student1.all
  end

  # GET /student1s/1
  # GET /student1s/1.json
  def show
  end

  # GET /student1s/new
  def new
    @student1 = Student1.new
  end

  # GET /student1s/1/edit
  def edit
  end

  # POST /student1s
  # POST /student1s.json
  def create
    @student1 = Student1.new(student1_params)

    respond_to do |format|
      if @student1.save
        format.html { redirect_to @student1, notice: 'Student1 was successfully created.' }
        format.json { render :show, status: :created, location: @student1 }
      else
        format.html { render :new }
        format.json { render json: @student1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student1s/1
  # PATCH/PUT /student1s/1.json
  def update
    respond_to do |format|
      if @student1.update(student1_params)
        format.html { redirect_to @student1, notice: 'Student1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @student1 }
      else
        format.html { render :edit }
        format.json { render json: @student1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student1s/1
  # DELETE /student1s/1.json
  def destroy
    @student1.destroy
    respond_to do |format|
      format.html { redirect_to student1s_url, notice: 'Student1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student1
      @student1 = Student1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student1_params
      params.require(:student1).permit(:name, :address, :age, :gender)
    end
end

class ListOfStudentsController < ApplicationController
  before_action :set_list_of_student, only: [:show, :edit, :update, :destroy]

  # GET /list_of_students
  # GET /list_of_students.json
  def index
    @list_of_students = ListOfStudent.all
  end

  # GET /list_of_students/1
  # GET /list_of_students/1.json
  def show
  end

  # GET /list_of_students/new
  def new
    @list_of_student = ListOfStudent.new
  end

  # GET /list_of_students/1/edit
  def edit
  end

  # POST /list_of_students
  # POST /list_of_students.json
  def create
    @list_of_student = ListOfStudent.new(list_of_student_params)

    respond_to do |format|
      if @list_of_student.save
        format.html { redirect_to @list_of_student, notice: 'List of student was successfully created.' }
        format.json { render :show, status: :created, location: @list_of_student }
      else
        format.html { render :new }
        format.json { render json: @list_of_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_of_students/1
  # PATCH/PUT /list_of_students/1.json
  def update
    respond_to do |format|
      if @list_of_student.update(list_of_student_params)
        format.html { redirect_to @list_of_student, notice: 'List of student was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_of_student }
      else
        format.html { render :edit }
        format.json { render json: @list_of_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_of_students/1
  # DELETE /list_of_students/1.json
  def destroy
    @list_of_student.destroy
    respond_to do |format|
      format.html { redirect_to list_of_students_url, notice: 'List of student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_of_student
      @list_of_student = ListOfStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_of_student_params
      params.require(:list_of_student).permit(:src, :lang, :desc)
    end
end

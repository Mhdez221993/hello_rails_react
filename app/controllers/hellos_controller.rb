class HellosController < ApplicationController
  before_action :set_hello, only: %i[ show edit update destroy ]

  # GET /hellos or /hellos.json
  def index
    @hellos = Hello.all
  end

  # GET /hellos/1 or /hellos/1.json
  def show
  end

  # GET /hellos/new
  def new
    @hello = Hello.new
  end

  # GET /hellos/1/edit
  def edit
  end

  # POST /hellos or /hellos.json
  def create
    @hello = Hello.new(hello_params)

    respond_to do |format|
      if @hello.save
        format.html { redirect_to hello_url(@hello), notice: "Hello was successfully created." }
        format.json { render :show, status: :created, location: @hello }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hello.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hellos/1 or /hellos/1.json
  def update
    respond_to do |format|
      if @hello.update(hello_params)
        format.html { redirect_to hello_url(@hello), notice: "Hello was successfully updated." }
        format.json { render :show, status: :ok, location: @hello }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hello.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hellos/1 or /hellos/1.json
  def destroy
    @hello.destroy

    respond_to do |format|
      format.html { redirect_to hellos_url, notice: "Hello was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hello
      @hello = Hello.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hello_params
      params.fetch(:hello, {})
    end
end

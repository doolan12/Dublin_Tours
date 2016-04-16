class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :complete, :remove, :confirm]

  # GET /bookings
  # GET /bookings.json
  def index
    # @bookings = Booking.all
    @guides = User.with_role(:guide, :any)
  end

  def confirm
    @booking.update(:confirm => true)
    redirect_to my_bookings_bookings_path, :notice => "Booking has been confirmed"
  end

  def my_bookings
    if can? :confirm_booking, :all
      @bookings = BookingTour.where(:booking => Booking.where(:guide_user_id => current_user.id))
    else
      @bookings = BookingTour.where(:booking => current_user.bookings)
    end
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  def complete
  end

  def remove
    @booking.booking_tours.where(:id => params[:tour_id]).destroy_all
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to complete_booking_path(@booking), notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to my_bookings_bookings_path, notice: 'Booking was successfully completed.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def booking_params
    params.require(:booking).permit(:id, :user_id, :guide_user_id, :from_time, :to_time, :price, booking_tours_attributes: [:tour_id, :booking_id, :price, :from_time, :to_time, :id])
  end
end
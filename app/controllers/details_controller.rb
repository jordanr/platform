class DetailsController < ApplicationController
  before_filter :get_listing

  # GET /details
  # GET /details.xml
  def index
    @details = @listing.details.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @details }
    end
  end

  # GET /details/1
  # GET /details/1.xml
  def show
    @detail = @listing.details.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @detail }
    end
  end

  # GET /details/new
  # GET /details/new.xml
  def new
    @detail = @listing.details.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @detail }
    end
  end

  # GET /details/1/edit
  def edit
    @detail = @listing.details.find(params[:id])
  end

  # POST /details
  # POST /details.xml
  def create
    @detail = @listing.details.new(params[:detail])

    respond_to do |format|
      if @detail.save
        flash[:notice] = 'Detail was successfully created.'
        format.html { redirect_to(listing_detail_url(@listing, @detail)) }
        format.xml  { render :xml => @detail, :status => :created, :location => [@listing, @detail] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /details/1
  # PUT /details/1.xml
  def update
    @detail = @listing.details.find(params[:id])

    respond_to do |format|
      if @detail.update_attributes(params[:detail])
        flash[:notice] = 'Detail was successfully updated.'
        format.html { redirect_to(listing_detail_url(@listing, @detail)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.xml
  def destroy
    @detail = @listing.details.find(params[:id])
    @detail.destroy

    respond_to do |format|
      format.html { redirect_to(listing_details_url(@listing)) }
      format.xml  { head :ok }
    end
  end

  private
    def get_listing
      @listing = Listing.find(params[:listing_id])
    end

end

class PhotosController < ApplicationController
  before_filter :get_listing

  # GET /photos
  # GET /photos.xml
  def index
    @photos = @listing.photos

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.xml
  def show
    @photo = @listing.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.xml
  def new
    @photo = @listing.photos.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = @listing.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.xml
  def create
    @photo = @listing.photos.new(params[:photo])

    respond_to do |format|
      if @photo.save
        flash[:notice] = 'Photo was successfully created.'
        format.html { redirect_to(listing_photo_url(@listing, @photo)) }
        format.xml  { render :xml => @photo, :status => :created, :location => [@listing, @photo] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.xml
  def update
    @photo = @listing.photos.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        flash[:notice] = 'Photo was successfully updated.'
        format.html { redirect_to(listing_photo_url(@listing, @photo)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.xml
  def destroy
    @photo = @listing.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to(listing_photos_url(@listing)) }
      format.xml  { head :ok }
    end
  end

  private
    def get_listing
      @listing = Listing.find(params[:listing_id])
    end

end

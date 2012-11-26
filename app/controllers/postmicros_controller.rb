class PostmicrosController < ApplicationController
  # GET /postmicros
  # GET /postmicros.json
  def index
    @postmicros = Postmicro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @postmicros }
    end
  end

  # GET /postmicros/1
  # GET /postmicros/1.json
  def show
    @postmicro = Postmicro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @postmicro }
    end
  end

  # GET /postmicros/new
  # GET /postmicros/new.json
  def new
    @postmicro = Postmicro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @postmicro }
    end
  end

  # GET /postmicros/1/edit
  def edit
    @postmicro = Postmicro.find(params[:id])
  end

  # POST /postmicros
  # POST /postmicros.json
  def create
    @postmicro = Postmicro.new(params[:postmicro])

    respond_to do |format|
      if @postmicro.save
        format.html { redirect_to @postmicro, :notice => 'Postmicro was successfully created.' }
        format.json { render :json => @postmicro, :status => :created, :location => @postmicro }
      else
        format.html { render :action => "new" }
        format.json { render :json => @postmicro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /postmicros/1
  # PUT /postmicros/1.json
  def update
    @postmicro = Postmicro.find(params[:id])

    respond_to do |format|
      if @postmicro.update_attributes(params[:postmicro])
        format.html { redirect_to @postmicro, :notice => 'Postmicro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @postmicro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /postmicros/1
  # DELETE /postmicros/1.json
  def destroy
    @postmicro = Postmicro.find(params[:id])
    @postmicro.destroy

    respond_to do |format|
      format.html { redirect_to postmicros_url }
      format.json { head :no_content }
    end
  end
end

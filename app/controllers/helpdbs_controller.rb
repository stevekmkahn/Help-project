class HelpdbsController < ApplicationController
  # GET /helpdbs
  # GET /helpdbs.xml
  def index
    @helpdbs = Helpdb.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @helpdbs }
    end
  end

  # GET /helpdbs/1
  # GET /helpdbs/1.xml
  def show
    @helpdb = Helpdb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @helpdb }
    end
  end

  # GET /helpdbs/new
  # GET /helpdbs/new.xml
  def new
    @helpdb = Helpdb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @helpdb }
    end
  end

  # GET /helpdbs/1/edit
  def edit
    @helpdb = Helpdb.find(params[:id])
  end

  # POST /helpdbs
  # POST /helpdbs.xml
  def create
    @helpdb = Helpdb.new(params[:helpdb])

    respond_to do |format|
      if @helpdb.save
        format.html { redirect_to(@helpdb, :notice => 'Helpdb was successfully created.') }
        format.xml  { render :xml => @helpdb, :status => :created, :location => @helpdb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @helpdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /helpdbs/1
  # PUT /helpdbs/1.xml
  def update
    @helpdb = Helpdb.find(params[:id])

    respond_to do |format|
      if @helpdb.update_attributes(params[:helpdb])
        format.html { redirect_to(@helpdb, :notice => 'Helpdb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @helpdb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /helpdbs/1
  # DELETE /helpdbs/1.xml
  def destroy
    @helpdb = Helpdb.find(params[:id])
    @helpdb.destroy

    respond_to do |format|
      format.html { redirect_to(helpdbs_url) }
      format.xml  { head :ok }
    end
  end
end

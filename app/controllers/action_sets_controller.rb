class ActionSetsController < ApplicationController
  # GET /action_sets
  # GET /action_sets.json
  def index
    @action_sets = ActionSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @action_sets }
    end
  end

  # GET /action_sets/1
  # GET /action_sets/1.json
  def show
    @action_set = ActionSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @action_set }
    end
  end

  # GET /action_sets/new
  # GET /action_sets/new.json
  def new
    @action_set = ActionSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @action_set }
    end
  end

  # GET /action_sets/1/edit
  def edit
    @action_set = ActionSet.find(params[:id])
  end

  # POST /action_sets
  # POST /action_sets.json
  def create
    @action_set = ActionSet.new(params[:action_set])

    respond_to do |format|
      if @action_set.save
        format.html { redirect_to @action_set, :notice => 'Action set was successfully created.' }
        format.json { render :json => @action_set, :status => :created, :location => @action_set }
      else
        format.html { render :action => "new" }
        format.json { render :json => @action_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /action_sets/1
  # PUT /action_sets/1.json
  def update
    @action_set = ActionSet.find(params[:id])

    respond_to do |format|
      if @action_set.update_attributes(params[:action_set])
        format.html { redirect_to @action_set, :notice => 'Action set was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @action_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /action_sets/1
  # DELETE /action_sets/1.json
  def destroy
    @action_set = ActionSet.find(params[:id])
    @action_set.destroy

    respond_to do |format|
      format.html { redirect_to action_sets_url }
      format.json { head :ok }
    end
  end
end

class ConditionSetsController < ApplicationController
  # GET /condition_sets
  # GET /condition_sets.json
  def index
    @condition_sets = ConditionSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @condition_sets }
    end
  end

  # GET /condition_sets/1
  # GET /condition_sets/1.json
  def show
    @condition_set = ConditionSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @condition_set }
    end
  end

  # GET /condition_sets/new
  # GET /condition_sets/new.json
  def new
    @condition_set = ConditionSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @condition_set }
    end
  end

  # GET /condition_sets/1/edit
  def edit
    @condition_set = ConditionSet.find(params[:id])
  end

  # POST /condition_sets
  # POST /condition_sets.json
  def create
    @condition_set = ConditionSet.new(params[:condition_set])

    respond_to do |format|
      if @condition_set.save
        format.html { redirect_to @condition_set, :notice => 'Condition set was successfully created.' }
        format.json { render :json => @condition_set, :status => :created, :location => @condition_set }
      else
        format.html { render :action => "new" }
        format.json { render :json => @condition_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /condition_sets/1
  # PUT /condition_sets/1.json
  def update
    @condition_set = ConditionSet.find(params[:id])

    respond_to do |format|
      if @condition_set.update_attributes(params[:condition_set])
        format.html { redirect_to @condition_set, :notice => 'Condition set was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @condition_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_sets/1
  # DELETE /condition_sets/1.json
  def destroy
    @condition_set = ConditionSet.find(params[:id])
    @condition_set.destroy

    respond_to do |format|
      format.html { redirect_to condition_sets_url }
      format.json { head :ok }
    end
  end
end

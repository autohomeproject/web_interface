class RuleSetsController < ApplicationController
  # GET /rule_sets
  # GET /rule_sets.json
  def index
    @rule_sets = RuleSet.all
    @condition_sets = ConditionSet.all
    @action_sets = ActionSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @rule_sets }
    end
  end

  # GET /rule_sets/1
  # GET /rule_sets/1.json
  def show
    @rule_set = RuleSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @rule_set }
    end
  end

  # GET /rule_sets/new
  # GET /rule_sets/new.json
  def new
    @rule_set = RuleSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @rule_set }
    end
  end

  # GET /rule_sets/1/edit
  def edit
    @rule_set = RuleSet.find(params[:id])
  end

  # POST /rule_sets
  # POST /rule_sets.json
  def create
    @rule_set = RuleSet.new(params[:rule_set])

    respond_to do |format|
      if @rule_set.save
        format.html { redirect_to @rule_set, :notice => 'Rule set was successfully created.' }
        format.json { render :json => @rule_set, :status => :created, :location => @rule_set }
      else
        format.html { render :action => "new" }
        format.json { render :json => @rule_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rule_sets/1
  # PUT /rule_sets/1.json
  def update
    @rule_set = RuleSet.find(params[:id])

    respond_to do |format|
      if @rule_set.update_attributes(params[:rule_set])
        format.html { redirect_to @rule_set, :notice => 'Rule set was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @rule_set.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rule_sets/1
  # DELETE /rule_sets/1.json
  def destroy
    @rule_set = RuleSet.find(params[:id])
    @rule_set.destroy

    respond_to do |format|
      format.html { redirect_to rule_sets_url }
      format.json { head :ok }
    end
  end
end

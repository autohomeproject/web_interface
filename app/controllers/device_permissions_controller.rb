class DevicePermissionsController < ApplicationController
  # GET /device_permissions
  # GET /device_permissions.json
  def index
    @device_permissions = DevicePermission.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @device_permissions }
    end
  end

  # GET /device_permissions/1
  # GET /device_permissions/1.json
  def show
    @device_permission = DevicePermission.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @device_permission }
    end
  end

  # GET /device_permissions/new
  # GET /device_permissions/new.json
  def new
    @device_permission = DevicePermission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @device_permission }
    end
  end

  # GET /device_permissions/1/edit
  def edit
    @device_permission = DevicePermission.find(params[:id])
  end

  # POST /device_permissions
  # POST /device_permissions.json
  def create
    @device_permission = DevicePermission.new(params[:device_permission])

    respond_to do |format|
      if @device_permission.save
        format.html { redirect_to @device_permission, :notice => 'Device permission was successfully created.' }
        format.json { render :json => @device_permission, :status => :created, :location => @device_permission }
      else
        format.html { render :action => "new" }
        format.json { render :json => @device_permission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /device_permissions/1
  # PUT /device_permissions/1.json
  def update
    @device_permission = DevicePermission.find(params[:id])

    respond_to do |format|
      if @device_permission.update_attributes(params[:device_permission])
        format.html { redirect_to @device_permission, :notice => 'Device permission was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @device_permission.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /device_permissions/1
  # DELETE /device_permissions/1.json
  def destroy
    @device_permission = DevicePermission.find(params[:id])
    @device_permission.destroy

    respond_to do |format|
      format.html { redirect_to device_permissions_url }
      format.json { head :ok }
    end
  end
end

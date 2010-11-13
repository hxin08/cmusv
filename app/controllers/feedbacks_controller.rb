class FeedbacksController < ApplicationController

  layout 'cmu_sv'

  def index
    @deliverables = Deliverable.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @deliverables }
    end
  end

  def edit
    @deliverable = Deliverable.find(params[:id])
  end

  def update
    @deliverable = Deliverable.find(params[:id])

    respond_to do |format|
      if @deliverable.update_attributes(params[:deliverable])
        flash[:notice] = 'Feedback was successfully updated.'
        format.html { redirect_to :controller=>'feedbacks', :action=>'index' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @deliverable.errors, :status => :unprocessable_entity }
      end
    end
  end

  def del
    @deliverable = Deliverable.find(params[:id])
    @deliverable.feedback_content_type =nil
    @deliverable.feedback_file_name = nil
    @deliverable.feedback_file_size = nil
    @deliverable.feedback_updated_at = nil

    respond_to do |format|
     if @deliverable.update_attributes(params[:deliverable])
        flash[:notice] = 'Feedback was successfully deleted.'
        format.html { redirect_to :controller=>'feedbacks', :action=>'index' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @deliverable.errors, :status => :unprocessable_entity }
      end
    end
  end

end

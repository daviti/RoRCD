class NotesController < ApplicationController
  def index
  	@notes = Note.all
  end

  def new
  	@add_note = Note.new
  end

  def create
  	#@render :text => params[:title]
  	add_note = Note.new(:title => params[:title])
  	add_note.save

  	display_notes()
  end
  
  def update
    #render :text => params
    note = Note.find params[:id]
    note.description = params[:description]
    note.save

    display_notes()
  end

  def destroy
    delete_note = Note.find params[:id]
    delete_note.destroy

    display_notes()
  end

  def display_notes
  	@notes = Note.all(:order => "created_at DESC")
  	@html_data = ""
  	
  	@notes.each do |note|
  		@html_data += "<div id='individual_note'>
                      <h3>#{note.title}</h3>
          	  				<form action='notes/update' method='post'>
          	  					<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}' >
          						  <input type='hidden' name='id' value='#{note.id}' >
          	  					<textarea name='description'>#{note.description}</textarea>
          	  					<br />
          	  					<input type='submit' value ='Update'>
          	  				</form>
          	  				
                      <form action='notes/destroy' method='post'>
          	  					<input type='hidden' name='authenticity_token' value='#{form_authenticity_token}' >
            						<input type='hidden' name='id' value='#{note.id}'' >
                        <input type='hidden' name='action' value='delete' >
            						<input type='submit' value ='Delete'>
          	  				</form>
                    </div>"
    end
	
    #return @html_data

    json_message = {:html_data => @html_data}
    render json: json_message
  end

	
end

# --------------------------------------
# Request via Ajax, render HTML response
# --------------------------------------


# -----
# Route
# -----

# add route if necessary
# example:
get '/action' => 'some_controller#action', as: :action


# ----------
# Controller
# ----------

class SomeController < ApplicationController

  def action
    # this example shows how to pass local variables to a view instead of instance variables

    # execute some code
    # ...

    @variable = something

    respond_to do |format|
      format.html do
        render template: "some_resource/_partial_view", layout: nil, locals: {variable: @variable}
      end
    end
  end

end


# -----
# Views
# -----

# file: some_file.html.haml

#ajax_submit_button
  Pesquisar
  

.class_ajax_result#ajax_request_result



# -----------------------
# JavaScript/CoffeeScript
# -----------------------

# In this example we use the :beforeSend and :complete states to display a class to let the user now the request is being processed
# We could just as well use a loading gif or any other alternative

$ ->
  $("#ajax_submit_button").on("click", (event) ->
    url = '/action'
    
    $.ajax
      type: 'get'
      dataType: 'html'
      url: url
      beforeSend: (result) ->
        $('.class_ajax_result').addClass('loading')

      success: (data, textStatus, jqXHR) ->
        $('#ajax_request_result').html data

        # This is the place to set properties and reload any functions necessary
        # After any ajax request the page is only partially reloaded so, if there were functions binded to any input, id or class, those need to be reloaded
        reload_functions()

      error: (jqXHR, textStatus, errorThrown) ->
        $('#ajax_request_result').html "Erro: #{errorThrown}"

      complete: (result) ->
        $('.class_ajax_result').removeClass('loading')
    e.preventDefault()
  )
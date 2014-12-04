# -------------------------------------------------------------------
# Load collection with bootstrap typeahead
# -------------------------------------------------------------------

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
    # on this query we use the fields :id and :name just as an example

    respond_to do |format|
      format.json do
        @collection = Model.search(params[:query]).
                            select([:id, :name]).
                            reorder('name ASC').
                            first(10)

        render json: @comercial_entities.map(&:Name)
      end
    end
  end

end


# -----
# Views
# -----

= f.input :field_name, input_html: {class: 'typeahead', autocomplete: 'off', provide: 'typeahead', source: ['foo', 'bar'], query: "#{params[:query]}" }


# -----------------------
# JavaScript/CoffeeScript
# -----------------------

# In this example we use the :beforeSend and :complete states to display a class to let the user now the request is being processed
# We could just as well use a loading gif or any other alternative
  
  $('.typeahead').typeahead
    source: (query, process) ->
      url = '/action'

      $.ajax
        type: 'GET'
        data: {query: query}
        dataType: 'json'
        url: url
        cache: false
        timeout: 30000
        beforeSend: (result) ->
          $('.typeahead').addClass('loading')
        success: (result) ->
          process(result)
        complete: (result) ->
          $('.-typeahead').removeClass('loading')
    matcher: (item) ->
      true
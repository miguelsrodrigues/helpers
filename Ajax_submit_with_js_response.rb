# -------------------------------------------------------------------
# Submit form via Ajax, with jquery validation and render JS response
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

    # execute some code
    # ...

    respond_to do |format|
      format.js
    end
  end

end


# -----
# Views
# -----


# file: layouts/_loading.html.haml

%div{:align => "center"}
  = image_tag "AjaxLoader.gif", height: '128', width: '128'

# --- end of file ---


# file: some_view.html.haml

= render 'form'
.loading
  = render partial: '/layouts/loading'
#some_id

# --- end of file ---

# file: _form.html.haml

= form_tag("/action", method: "get", remote: true, id: "searchform") do |f|

  %br/
  = label_tag :some_field, 'Field Name'
  = text_field_tag :some_field
  %br/
  %br/
  = button_tag(type: 'submit', class: 'searchButton') do
    %b Search

# --- end of file ---


# file: action.js.haml

# Rendered after controller action executed
# This is the place to set properties and reload any functions necessary
# After any ajax request the page is only partially reloaded so, if there were functions binded to any input, id or class, those need to be reloaded

# toggle loading gif
$(".loading").toggle();

# render some template
$("#some_id").html("#{escape_javascript( render(:template => "some_resource/_partial_view") )}");

# --- end of file ---


# -----------------------
# JavaScript/CoffeeScript
# -----------------------

$ ->
  $('#form').validate
    rules:
      "some_field":
        required: true
        minlength: 9

    messages:
      "some_field":
        required: "The field is mandatory!"
        minlength: jQuery.validator.format("At least {0} characters required!")

    submitHandler: ->
      $("#some_id").toggle()
      $('.loading').toggle()
      $('#form').ajaxSubmit()

  $('.loading').hide()
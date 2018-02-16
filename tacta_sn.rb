require "sinatra"
require "./contacts_file"

get "/" do
	"<h1>Tacta Contact Manager</h1>"
end

get "/contacts" do
	@contacts = read_contacts
	erb :'contacts/index'
end

get "/contacts/:index" do
	@index = params[:index].to_i
	contacts = read_contacts
	@contact = contacts[@index]
	erb :'contacts/show'
end
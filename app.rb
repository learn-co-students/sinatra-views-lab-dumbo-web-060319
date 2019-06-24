class App < Sinatra::Base
	attr_reader :date_formatted

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = params[:q]
		erb :goodbye
	end

	get '/date' do
		@date_formatted = Time.now.strftime("The date is %A, %B %d, %Y.")
		erb :date
	end

end

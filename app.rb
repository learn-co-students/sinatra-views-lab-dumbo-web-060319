class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		erb :goodbye
	end

	get '/date' do
		@today = Date.today.strftime("%A, %B %d, %Y")
		@weekday = @today.split(", ")[0]
		@month_day = @today.split(", ")[1]
		@year = @today.split(", ")[2]
		erb :date
	end

end

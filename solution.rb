require 'sinatra'

get '/' do
    if params[:nombre].length
        if params[:nombre].length > 0
            "<h1>Hola #{params[:nombre]}!</h1>"
        else
            "<h1>Hola desconocido!</h1>"
        end
    else
        "<h1>Hola desconocido!</h1>"
    end
end

get "/makers" do
    "<h1>Hola desconocido!</h1>"
end

get "/makers/" do
    "<h1>Hola desconocido!</h1>"
end

get '/makers/:nombre' do
    @nombre = params[:nombre].capitalize
    if @nombre.length > 0
        "<h1>hola #{@nombre}!</h1>"
    elsif @nombre.length == 0
        "<h1>Hola desconocido!</h1>"
    end
end

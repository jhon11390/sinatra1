require 'sinatra'

get '/' do
    if params[:nombre].length > 0
        "<h1>Hola #{params[:nombre]}!</h1>"
    elsif params[:nombre].length == 0
        "<h1>Hola desconocido!</h1>"
    else
        "<h1>Hola desconocido!</h1>"
    end
end

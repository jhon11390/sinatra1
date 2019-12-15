require 'sinatra'

get '/' do
    unless params[:nombre]
        <<-HTML
            <h1>Hola desconocido!</h1>
        HTML
    else
        <<-HTML
            <h1>hola #{params[:nombre]}!</h1>
        HTML
    end
end
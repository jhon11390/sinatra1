require 'sinatra'

get '/' do
    if params[:nombre]
         <<-HTML
            <h1>Hola #{params[:nombre]}#{"!"}</h1>
        HTML
    else
       <<-HTML
            <h1>Hola desconocido!</h1>
        HTML
    end
end


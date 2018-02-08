require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index
    end
    
#     <!DOCTYPE html>
# <html>
#   <head>
#     <meta charset="UTF-8">
#     <title>title</title>
#   </head>
#   <body>
  
#   </body>
# </html>
end
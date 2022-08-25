#!C:\Ruby31-x64\bin\ruby.exe

require './app'

def main
  # puts "what's your name"
  # name = gets.chomp
  # puts "Hello #{name}, How're you?"
  app = App.new
  app.run
end

main

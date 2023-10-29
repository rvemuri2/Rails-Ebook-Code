class SayController < ApplicationController
  def hello
    @time = Time.now
  end

  def goodbye
    @files = Dir.glob("*")
    username = "rohitvemuri"
    @folder_name = "Desktop/PokemonEmeraldWalkthroughs"
    directory_path = File.expand_path("~#{username}/#{@folder_name}")
    if File.directory?(directory_path)
      @files1 = Dir.entries(directory_path).reject { |file| file == "." || file == ".." }
    else
      @error_message = "Directory not found: #{directory_path}"
    end
  end
end

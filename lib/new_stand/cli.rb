#CLI Controller
require 'pry'

class NewStand::CLI
  def call
    list_categories
    list_sites
    list_articles
    goodbye
  end

  def list_categories
    puts "Welcome To Your Personal News Stand - Where Every Story From All The Top Sources Is Yours To Read... All In One Place!"
    puts <<-DOC.gsub(/^\s*/,'')
      1. National
      2. International
      3. Pop Culture
      4. Sports
    DOC

    @category
  end

  def list_sites
    input = nil
    while input != "exit"
      puts "\nEnter The Number For The Article You'd Like To Read, Enter 'back' To Return To The Full Article Listing, Or Enter 'exit' To Leave The Stand"
      input = gets.strip
      case input
      when "1"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Associated Press
          2. Washington Post
          3. CNN
          4. FOX
        DOC
      when "2"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Reuters
          2. The Guardian
          3. BBC
          4. PBS
        DOC
      when "3"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Buzzfeed
          2. Deadspin
          3. TMZ
          4. E
        DOC
      when "4"
        puts <<-DOC.gsub(/^\s*/,'')
          1. ESPN
          2. Bleacher Report
          3. BBC Sports
          4. ESN International
        DOC
      when "back"
        list_categories
      else
        puts "Could Not Find Site '#{input}'"
      end
    end
  end

  def list_articles
    input = nil
    while input != "exit"
      puts "\nEnter The Number For The Article You'd Like To Read, Enter 'back' To Return To The Full Article Listing, Or Enter 'exit' To Leave The Stand"
      input = gets.strip
      case input
      when "1"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Associated Press
          2. Washington Post
          3. CNN
          4. FOX
        DOC
      when "2"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Reuters
          2. The Guardian
          3. BBC
          4. PBS
        DOC
      when "3"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Buzzfeed
          2. Deadspin
          3. TMZ
          4. E
        DOC
      when "4"
        puts <<-DOC.gsub(/^\s*/,'')
          1. ESPN
          2. Bleacher Report
          3. BBC Sports
          4. ESN International
        DOC
      when "back"
        list_sites
      else
        puts "Could Not Find Article '#{input}'"
      end
    end
  end

  def goodbye
    puts "See You Tomorrow!"
  end
end

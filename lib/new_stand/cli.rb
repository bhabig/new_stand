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
  end

  def list_sites
    @site_input = nil
    while @site_input != "exit"
      puts "\nEnter The Number For The Article You'd Like To Read, Enter 'back' To Return To The Full Article Listing, Or Enter 'exit' To Leave The Stand"
      @site_input = gets.strip
      case @site_input
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
    @article_input = nil
    while @article_input != "exit"
      puts "\nEnter The Number For The Article You'd Like To Read, Enter 'back' To Return To The Full Article Listing, Or Enter 'exit' To Leave The Stand"
      @article_input = gets.strip
      case @article_input
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

  def article_selector
    if @site_input == "1"
    end
  end
end

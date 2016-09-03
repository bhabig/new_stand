#CLI Controller
require 'pry'

class CLI

  def call
    list_categories
    list_sites
    list_articles
    goodbye
  end

  def list_categories
    puts "Welcome To Your Personal News Stand - Where Every Story From All The Top Sources Is Yours To Read... All In One Place!"
    puts <<-DOC.gsub(/^\s*/,'')
      1. International
      2. National
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
      when "2"
        puts <<-DOC.gsub(/^\s*/,'')
          1. Associated Press
          2. Washington Post
          3. CNN
          4. FOX
        DOC
      when "1"
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
          4. ESPN International
        DOC
      when "back"
        list_categories
      else
        puts "Could Not Find Site '#{@site_input}'"
      end
      list_articles
    end
  end

  def list_articles
    @article_input = nil
    while @article_input != "exit"
      puts "\nEnter The Number For The Article You'd Like To Read, Enter 'back' To Return To The Full Article Listing, Or Enter 'exit' To Leave The Stand"
      @article_input = gets.strip
      case @site_input
      when "1"
        if @article_input == "1"
          international_reuters
        elsif @article_input == "2"
          international_guardian
        elsif @article_input == "3"
          international_BBC
        elsif @article_input == "4"
          international_PBS
        end
      when "2"
        if @article_input == "1"
          national_associated_press
        elsif @article_input == "2"
          national_wash_post
        elsif @article_input == "3"
          national_cnn
        elsif @article_input == "4"
          national_fox
        end
      when "3"
        if @article_input == "1"
          pop_culture_buzz
        elsif @article_input == "2"
          pop_culture_dead
        elsif @article_input == "3"
          pop_culture_tmz
        elsif @article_input == "4"
          pop_culture_e
        end
      when "4"
        if @article_input == "1"
          sports_espn
        elsif @article_input == "2"
          sports_bleacher
        elsif @article_input == "3"
          sports_bbc
        elsif @article_input == "4"
          sports_espn_intl
        end
      end
      if @article_input == "back"
        list_sites
      else
        puts "Could Not Find Article '#{@article_input}'"
      end
    end
  end

  def read_article
    #gets input from list_articles and displays contents
  end

  def goodbye
    puts "See You Tomorrow!"
  end

  def international_reuters
		puts <<-DOC.gsub(/^\s*/,'')
			1. the queen
			2. the prince
			3. the clock
			4. the tea
		DOC
	end

	def international_guardian
		puts <<-DOC.gsub(/^\s*/,'')
			1. euro euro
			2. asia asia
			3. pan am
			4. africa
		DOC
	end

	def international_BBC
		puts <<-DOC.gsub(/^\s*/,'')
			1. premier league outbreak
			2. frenchies smell
			3. why aren't british cars engineered better
			4. gutentag
		DOC
	end

	def international_PBS
		puts <<-DOC.gsub(/^\s*/,'')
			1. i'm boring
			2. now you're bored
			3. wake up. don't crash
			4. don't drive while i speak
		DOC
	end

  def pop_culture_buzz
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. Kim West still America's favorite porn star
  		2. Kanye still beloved gay fish
  		3. Can't keep up with the kardashians
  		4. Matt Damon pressures you to donate
  	DOC
  end

  def pop_culture_dead
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. 5 year old boy goes triple platinum
  		2. racist grandma unites america
  		3. americans all have zica but think the constitution protects their right not to
  		4. simon cowel most loved celebrity
  	DOC
  end

  def pop_culture_tmz
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. we caught rap star walking while waiting in a trash can!
  		2. we caught country star mowing grass while hiding in a cow patty
  		3. we caught movie star talking while hiding under their bed
  		4. we caught sports star running while hiding in their shoe
  	DOC
  end

  def pop_culture_e
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. are they dating????
  		2. are they fighting????
  		3. are they cheating????????
  		4. are they murdering?!?!?!?!
  	DOC
  end

  def sports_espn
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. football
  		2. football
  		3. football
  		4. other in-season sport
  	DOC
  end

  def sports_bleacher
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. hockey
  		2. football
  		3. basketball
  		4. baseball
  	DOC
  end

  def sports_bbc
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. cricket
  		2. futbol
  		3. rugby
  		4. tennis
  	DOC
  end

  def sports_espn_intl
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. futbol
  		2. rugby
  		3. cricket
  		4. tennis
  	DOC
  end

  def national_associated_press
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. Trump Spray Tanned Live!
  		2. Hilary MRI Shows No Soul
  		3. New York's Sewage System Problems Tied To Trump's Hair
  		4. Hilary Tried To Be Funny Again At A Children's Nature Camp - Crickets On Cue
  	DOC
  end

  def national_wash_post
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. Barack Spits Fire At Beat Box Bonanza
  		2. Recent Poll Shows America Believes All Members of Congress Have Committed Murder
  		3. Rich White People Disagree About How To Get Richer
  		4. On This Day 2 Decades Ago: Middle Class Vanishes
  	DOC
  end

  def national_cnn
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. yada yada
  		2. blah blah
  		3. we hate fox
  		4. we also suck though
  	DOC
  end

  def national_fox
  	puts <<-DOC.gsub(/^\s*/,'')
  		1. yada yada
  		2. blah blah
  		3. we hate cnn and liberals
  		4. we suck the most though
  	DOC
  end


end

require 'nokogiri'
require 'open-uri'
require_relative 'post.rb'
require_relative 'comment.rb'
require 'pry'

   
class Post
  attr_writer :title, :url, :points, :item_id
  @@comment_count = 0
end


def get_command_line_input
  @command_line_input = ARGV[0]
end

def take_url_from_argv_to_string_io
  @html_file = open(@command_line_input)
end

def load_doc
  @doc = Nokogiri::HTML(File.open(@html_file))
end

def indentify_title
  @title = @doc.search('.title').map  { |title|
    title.inner_text }
end

def indentify_comments
  @comments = @doc.search('span.comment').map { |span|
    span.inner_text }
end


def make_comment
end

get_command_line_input

take_url_from_argv_to_string_io

load_doc

indentify_title

indentify_comments

puts "Post title: #{@title[1]}"

puts "Number of comments: #{@comments.length}"
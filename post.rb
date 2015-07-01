class Post
  def initialize
    @title = title
    @url = url
    @points = points 
    @item_id = item_id
  end

  def add_to_comment_counter
  end

  def comments
  end

  def add_coment(comment_object)
    comment_count += 1
  end
end
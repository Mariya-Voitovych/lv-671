class PaginationHelper

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  def item_count
    @collection.size
  end

  def page_count
    @collection.each_slice(@items_per_page).to_a.size
  end

  def page_item_count(page_index)
    total = @collection.each_slice(@items_per_page).to_a.fetch(page_index, -1)
    total == (-1) ? -1 : total.size
  end

  def page_index(item_index) 
    total = @collection.map.with_index{|x, i| [x, i]}.each_slice(@items_per_page).to_a
    index = total.find_index {|x| x.any? {|x| x.include?(item_index)}}
    index == nil ? -1 : index
  end
end



puts "This program working with collection of items depending on passed parameter (items_per_page)\nThis class has next methods:\n1)#item_count => returns total amount of items within all collection\n2)#page_count => returns amount of pages\n3)#page_item_count(page_index) => returns how many items specific page has (page_index specifies which page exactly)\n4)#page_index(item_index) => returns page index, where specific item is located (item_index specifies which item exactly)\nBoth #page_item_count and #page_index return -1 for non-existing indexes passed in"
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

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

puts "item_count =>#{helper.item_count} items"
puts "page_count =>#{helper.page_count} pages"
puts "page_item_count(1) =>#{helper.page_item_count(1)} items on page with index 1"
puts "page_index(5) =>#{helper.page_index(5)} page has item with index 5"
puts "page_index(-3)#non-existing argument =>#{helper.page_index(-3)}"


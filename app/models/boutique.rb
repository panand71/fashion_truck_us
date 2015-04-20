class Boutique < ActiveRecord::Base
  require 'csv'
  belongs_to :owner

  def self.import(file)
    CSV.foreach(file.path, headers: true, :encoding => 'ISO-8859-1') do |row|
      boutique_hash = row.to_hash
      boutique = Boutique.where(id: boutique_hash["id"])
      if boutique.count == 1
        boutique.first.update_attributes(boutique_hash)
      else
        Boutique.create! (boutique_hash)
      end
    end
  end

  # def self.search(query)
  #   # where(:title, query) -> This would return an exact match of the query
  #   where("title like ?", "%#{query}%") 
  # end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

# def self.search(search)
#   if search
#     find_by(:all, :conditions => ['name ILIKE ?', "%#{search}%"])
#   else
#     find_by(:all)
#   end
# end
end





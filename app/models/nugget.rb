class Nugget < ApplicationRecord
   has_and_belongs_to_many :users
   has_many :subscribings
   has_many :subs, through: :subscribings
  resourcify

  def sub_list
    self.subs.collect do |sub|
      sub.name
    end.join(", ")
  end

  def sub_list=(subs_string)
    sub_names = subs_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_subs = sub_names.collect { |name| Sub.find_or_create_by(name: name) }
    self.subs = new_or_found_subs
end

end

module ApplicationHelper

  def clean_user_data(hash)
    hash.each do |k,v|
      if k == 'id'
        hash['facebook_id'] = v
        hash.delete(k)
      end
    end
  end

end

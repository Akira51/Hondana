class Shelf < ActiveRecord::Base
  has_many :entries
  # validates_uniqueness_of :name �Ȥ������狼��ʤ��Τ���α

#  def validate
#    errors.add_to_base "�����ͻҤ��ѤǤ�"
#  end

  def countbook
    return Entry.count(:conditions => ["shelf_id = #{id}"])
  end

  def countbook_comm
    return Entry.count(:conditions => ["LENGTH(comment) > 0 AND shelf_id = #{id}"])
  end

end

# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  live       :boolean          default(FALSE), not null
#  title      :string           not null
#  year       :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer          not null
#
class Album < ApplicationRecord
    validates :band_id, :title, :year, presence: true 

    belongs_to :band






end

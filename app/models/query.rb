class Query < ApplicationRecord
  validates :content, presence: true

  def to_s
    content
  end

  def result
    @result ||= QueryResult.new(prompt)
  end

  def prompt
    @prompt ||= Prompt.new(self)
  end
end

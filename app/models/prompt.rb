class Prompt
  def initialize(query)
    @query = query
  end

  def join
    %(#{database_definition} ### A query to answer: #{@query}\nSELECT)
  end

  private

  def database_definition
    @database_definition ||= File.read("#{Rails.root}/lib/db_prompt.txt")
  end
end

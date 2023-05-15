class QueryResult
  extend Forwardable

  def_delegators :run, :entries, :fields

  def initialize(prompt)
    @prompt = prompt.join
    @client = OpenAI::Client.new(access_token: ENV['OPENAI_KEY'])
  end

  def run
    @run ||= ActiveRecord::Base.connection.execute(sql)
  end

  def sql
    'SELECT' + response['choices'].first['text']
  end

  def response
    @response ||= @client.completions(
      parameters: {
        model: 'text-davinci-003',
        prompt: @prompt,
        max_tokens: 150,
        temperature: 0,
        top_p: 1,
        frequency_penalty: 0,
        presence_penalty: 0,
        stop: ['#', ';']
      }
    )
  end
end

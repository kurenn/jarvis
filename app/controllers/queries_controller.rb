class QueriesController < ApplicationController
  def new
    @query = Query.new
  end

  def create
    @query = Query.new(query_params)

    respond_to do |format|
      if @query.save
        @query.result.run
        @query.update_column(:sql, @query.result.sql)

        format.turbo_stream
        format.html { redirect_to @query, notice: 'Query was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @query = Query.find(params[:id])
  end

  private

  def query_params
    params.require(:query).permit(:content)
  end
end

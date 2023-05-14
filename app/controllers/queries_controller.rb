class QueriesController < ApplicationController
  def new
    @query = Query.new
  end

  def create
    @query = Query.new(query_params)

    if @query.save
      redirect_to @query, notice: 'Query was successfully created.'
    else
      render :new
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

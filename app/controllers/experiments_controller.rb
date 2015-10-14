class ExperimentsController < ApplicationController
  def track
    if !params.has_key?(:name) || params[:name].empty?
        response.status = 400
        return render json: {
            status: 'error',
            message: 'Experiment name required'
        }
    end

    variant = track_experiment(params[:name].to_s)

    render json: {
        status: 'ok',
        name: params[:name],
        variant: variant
    }
  end
end

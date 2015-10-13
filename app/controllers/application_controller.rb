class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_experiments, :assign_variants_on_all_experiments

  def fetch_experiments
    @experiments = Split::ExperimentCatalog.all
    @experiments_list = @experiments.map { |experiment| experiment.name }
  end

  def assign_variants_on_all_experiments
    @experiments_variants = @experiments.map do |experiment|
        trial = Split::Trial.new(user: ab_user, experiment: experiment, override: override_alternative(experiment.name), exclude: exclude_visitor?, disabled: split_generically_disabled?)
        alt = trial.choose!
        alt ? alt.name : nil
    end
  end
end

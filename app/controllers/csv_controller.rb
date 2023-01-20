require 'csv'
class CsvController < ActionController::Base
    def api
        #table = CSV.parse(File.read("cats.csv"), headers: true)
        render json: CSV.parse(File.read(Rails.root.join("public", "dataset.csv"), headers: true))
        #render json: CSV.read(Rails.root.join("public", "dataset.csv"))
    end
end

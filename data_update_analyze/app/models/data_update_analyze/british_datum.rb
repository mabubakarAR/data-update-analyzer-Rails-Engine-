module DataUpdateAnalyze
  class BritishDatum < ApplicationRecord
    serialize :extra_columns, Hash
  end
end

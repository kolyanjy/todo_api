module Helpers
  module Params
    def build_params(params)
      { data: { attributes: params } }
    end
  end
end

module TakeDataConcern
  def data_params
    params.to_unsafe_h[:data]
  end
end

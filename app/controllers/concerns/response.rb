module Response
  def json_response(object, status = :ok)
    body = object
    if status == :ok
      object_type = object.name.downcase.pluralize

      #.find() return single item convert to array
      if (defined? object.class.table_name).present?
        object_type = object.class.table_name
        object = [object]
      end
      
      body = { object_type => object }.to_json
    end
    
    render json: body, status: status
  end
end
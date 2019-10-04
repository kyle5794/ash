defmodule Ash.Resource.Relationships.HasOne do
  defstruct [:name, :type, :destination, :destination_field, :source_field]

  def new(resource_name, name, related_resource, opts \\ []) do
    %__MODULE__{
      name: name,
      type: :has_one,
      destination: related_resource,
      destination_field: opts[:destination_field] || "#{resource_name}_id",
      source_field: opts[:source_field] || "id"
    }
  end
end
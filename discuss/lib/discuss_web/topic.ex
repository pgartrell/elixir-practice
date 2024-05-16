defmodule DiscussWeb.topic do
use DiscussWeb, :model

    schema "topics" do
        field :title, :string
    end
end
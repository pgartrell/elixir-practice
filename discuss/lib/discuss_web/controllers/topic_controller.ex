defmodule DiscussWeb.TopicController do
    use DiscussWeb, :controller

    alias Discuss.Discussions.Topic

    def new(conn, _params) do
        Topic.changeset(%Topic{}, %{})

        render(conn, :new)
    end
end


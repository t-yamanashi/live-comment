defmodule Server.CommentsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Server.Comments` context.
  """

  @doc """
  Generate a comment.
  """
  def comment_fixture(attrs \\ %{}) do
    {:ok, comment} =
      attrs
      |> Enum.into(%{
        comment: "some comment",
        loaded: 42
      })
      |> Server.Comments.create_comment()

    comment
  end
end

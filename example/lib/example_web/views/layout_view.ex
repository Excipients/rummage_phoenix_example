defmodule ExampleWeb.LayoutView do
  use ExampleWeb, :view

  def navbar_link(conn, href: href, title: title) do
    class = get_class(conn.path_info, href)
    raw(
    """
    <li class="tab"><a class="#{class}" href="#{href}">#{title}</a></li>
    """
    )
  end

  defp get_class(["categories_bootstrap" | _tail], "/categories_bootstrap") do
    "active"
  end

  defp get_class([], "/"), do: "active"

  defp get_class(_path_info, _href), do: ""
end

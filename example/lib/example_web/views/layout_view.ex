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

  defp get_class(["products_bootstrap3" | _tail], "/products_bootstrap3") do
    "active"
  end

  defp get_class(["products_bootstrap4" | _tail], "/products_bootstrap4") do
    "active"
  end

  defp get_class(["products_materialize" | _tail], "/products_materialize") do
    "active"
  end

  defp get_class(["products_foundation" | _tail], "/products_foundation") do
    "active"
  end

  defp get_class(["products_semantic" | _tail], "/products_semantic") do
    "active"
  end

  defp get_class([], "/"), do: "active"

  defp get_class(_path_info, _href), do: ""
end

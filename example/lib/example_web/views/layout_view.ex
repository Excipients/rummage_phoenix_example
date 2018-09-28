defmodule ExampleWeb.LayoutView do
  use ExampleWeb, :view

  def navbar_link(conn, href: href, title: title) do
    path_info = Enum.at(conn.path_info, 0)
    css = Map.get(conn.params, "css", "")
    path_info = path_info && "#{path_info}_#{css}"
    class = get_class(path_info, href)
    raw(
    """
    <li class="tab"><a class="#{class}" href="#{href}">#{title}</a></li>
    """
    )
  end

  defp get_class("products_bootstrap3", "/products?css=bootstrap3") do
    "active"
  end

  defp get_class("products_bootstrap4", "/products?css=bootstrap4") do
    "active"
  end

  defp get_class("products_materialize", "/products?css=materialize") do
    "active"
  end

  defp get_class("products_foundation", "/products?css=foundation") do
    "active"
  end

  defp get_class("products_semantic", "/products?css=semantic") do
    "active"
  end

  defp get_class(nil, "/"), do: "active"

  defp get_class(_path_info, _href), do: ""
end

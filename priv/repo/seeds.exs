# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Category{category_name: "Musical Instruments"})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Category{category_name: "Board Games"})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Category{category_name: "Electronics"})

RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Acoustic Guitar", price: 200, category_id: 1})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Electric Guitar", price: 300, category_id: 1})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Ukulele", price: 100, category_id: 1})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Flute", price: 120, category_id: 1})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Harmonica", price: 30, category_id: 1})

RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Pandemic", price: 200, category_id: 2})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Catan", price: 300, category_id: 2})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Power Grid", price: 100, category_id: 2})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Seven Wonders", price: 100, category_id: 2})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Mage Knight", price: 100, category_id: 2})

RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "iPad", price: 600, category_id: 3})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Macbook Pro", price: 2000, category_id: 3})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "Macbook Air", price: 1700, category_id: 3})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "iMac", price: 3000, category_id: 3})
RummagePhoenixExample.Repo.insert!(%RummagePhoenixExample.Product{name: "iPhone", price: 400, category_id: 3})

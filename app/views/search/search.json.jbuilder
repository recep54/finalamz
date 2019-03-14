json.movies do
  json.array!(@movies) do |movie|
    json.name movie.name
    json.url movie.surl
  end
end

json.films do
  json.array!(@films) do |movie|
    json.name movie.name
    json.url movie.surl
  end
end
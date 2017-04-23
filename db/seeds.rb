30.times do |item|
  Plane.create(name: "Plane ##{item}", take_off_time: rand(10..15))
end


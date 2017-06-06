munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  if value["age"] > 65
    value.merge!({"age_group" => "senior"})
  elsif value["age"] < 12
    value.merge!({"age_group" => "kid"})
  else 
    value.merge!({"age_group" => "adult"})
  end
end

puts munsters
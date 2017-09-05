
data = File.read("/home/afawad/Code/personal/regional-archive/scripts/ra_data.json")

data.each_line do |line|
  # Interview.create!(JSON.parse(line))
  line_json = JSON.parse(line)
  if line_json['themes'] == ""
    line_json['themes'] = []
  end

  if line_json['languages'] == ""
    line_json['languages'] = []
  end
  record = Interview.new(
    name: line_json['name'],
    interview_date: line_json['interview_date'],
    interview_location: line_json['interview_location'],
    place_of_birth: line_json['place_of_birth'],
    current_residence: line_json['current_residence'],
    hometown: line_json['hometown'],
    duration: line_json['duration'],
    languages: line_json['languages'],
    themes: line_json['themes'],
    mode_of_violence: line_json['mode_of_violence'],
    audio_url: line_json['audio_url'],
    religion: line_json['religion']
    )

  record.save!
end
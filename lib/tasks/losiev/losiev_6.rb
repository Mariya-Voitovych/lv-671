def number?(string)
  true if Float(string)
rescue StandardError
  false
end

def nba_cup(result_sheet, team)
  return '' if team.empty?

  table_with_results = {}
  default_row = { wins: 0, draws: 0, losses: 0, scored: 0, conceded: 0, points: 0 }
  result_sheet.split(',').each do |game|
    first_team_name = second_team_name = first_team_points = second_team_points = ''

    game.split.each do |word|
      if number?(word)
        if first_team_points.empty?
          first_team_points = word
        else
          second_team_points = word
        end
      elsif first_team_points.empty?
        first_team_name += if first_team_name.empty?
                             word
                           else
                             " #{word}"
                           end
      else
        second_team_name += if second_team_name.empty?
                              word
                            else
                              " #{word}"
                            end
      end
    end

    return "Error(float number):#{game}" if first_team_points.include?('.') || second_team_points.include?('.')

    first_team_points = first_team_points.to_i
    second_team_points = second_team_points.to_i

    table_with_results[first_team_name] = default_row.dup if table_with_results[first_team_name].nil?
    table_with_results[second_team_name] = default_row.dup if table_with_results[second_team_name].nil?

    table_with_results[first_team_name][:scored] += first_team_points
    table_with_results[first_team_name][:conceded] += second_team_points
    table_with_results[second_team_name][:scored] += second_team_points
    table_with_results[second_team_name][:conceded] += first_team_points

    if first_team_points > second_team_points
      table_with_results[first_team_name][:wins] += 1
      table_with_results[first_team_name][:points] += 3
      table_with_results[second_team_name][:losses] += 1
    elsif first_team_points < second_team_points
      table_with_results[second_team_name][:wins] += 1
      table_with_results[second_team_name][:points] += 3
      table_with_results[first_team_name][:losses] += 1
    else
      table_with_results[first_team_name][:draws] += 1
      table_with_results[second_team_name][:draws] += 1
      table_with_results[first_team_name][:points] += 2
      table_with_results[second_team_name][:points] += 2
    end
  end

  team_data = table_with_results[team]

  if team_data.nil?
    "#{team}:This team didn't play!"
  else
    "#{team}:W=#{team_data[:wins]};"\
      "D=#{team_data[:draws]};"\
      "L=#{team_data[:losses]};"\
      "Scored=#{team_data[:scored]};"\
      "Conceded=#{team_data[:conceded]};"\
      "Points=#{team_data[:points]}"
  end
end

result_sheet = 'Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,\
Indiana Pacers 103 Memphis Grizzlies 112, Los Angeles Clippers 100 Boston Celtics 120'

if $PROGRAM_NAME == __FILE__
puts "This program returns the results of given name of a basketball team \
using the string with games results."
puts nba_cup(result_sheet, 'Los Angeles Clippers')
end
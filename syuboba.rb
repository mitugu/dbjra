File.open("./hansinhinba19.csv", "r", :encoding => "SJIS"
) do |fin|

  File.open("./hansinhinba1919.csv", "w") do |fout|

    fin.each_line do |original|
      fout.puts original.encode("UTF-8")
    end
  end
end

column_names_str = column_names.join(",")
puts "LOAD DATA LOCAL INFILE './  hansinhinba1919.csv' INTO TABLE hoge FIELDS TERMINATED BY ',' LINES TERMINATED BY '\\n' (#{column_names_str});"

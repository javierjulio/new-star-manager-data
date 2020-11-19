require "net/http"

countries = {
  Denmark: {
    FNames: "https://raw.githubusercontent.com/DanielRanLehmann/danish-names/master/src/first-names/male/large.txt",
    LNames: "https://raw.githubusercontent.com/DanielRanLehmann/danish-names/master/src/last-names/large.txt",
  },
  Finland: {
    FNames: "https://raw.githubusercontent.com/shallowse/namesfi/master/namesfi/dist.male.first",
    LNames: "https://raw.githubusercontent.com/shallowse/namesfi/master/namesfi/dist.all.last",
  },
  Netherlands: {
    FNames: "https://raw.githubusercontent.com/mbeijen/Data-RandomPerson/master/share/DutchMale.tsv",
    LNames: "https://raw.githubusercontent.com/mbeijen/Data-RandomPerson/master/share/DutchLast.tsv"
  }
}

def get_names(url, max_length: 14)
  Net::HTTP
    .get(URI(url))
    .force_encoding("UTF-8")
    .strip
    .gsub(/\d+/, "")
    .split("\n")
    .map(&:strip)
    .select { |name| name.size < max_length }
    .uniq
    .sort_by(&:downcase)
end

countries.each do |country, name_types|
  name_types.each do |name_type, url|
    names = get_names(url)
    File.open("dist/#{country}#{name_type}.txt", "wb") do |file|
      file.write(names.join("\n").strip)
    end
  end
end

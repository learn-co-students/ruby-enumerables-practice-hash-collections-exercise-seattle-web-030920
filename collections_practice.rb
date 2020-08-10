# your code goes here
def begins_with_r (array)
    array.all? {|word| word[0]== 'r'}
end

def contain_a(array)
    array.select{|word|word.split("").sort[0]=='a'}
end

def first_wa (array)
    array.find{|word| word[0]=="w" && word[1]=='a'}
end

def remove_non_strings(array)
    array.select{|el| el.is_a?(String)}
end

def count_elements(array)
    array.each do |original_hash|
        original_hash[:count] = 0
        name = original_hash[:name]
        array.each do |hash|
          if hash[:name] == name
            original_hash[:count] += 1
          end
        end
      end.uniq
end

def find_cool (array)
    array.select { |hash| 
    hash.values.include?("cool")
}
end

def merge_data(arr1, arr2)
    new_array = []
    arr1.each_with_index {|element, index|
    new_array.push(arr1[index].merge(arr2[index]))}
    new_array
end

def organize_campuses (campus_hash)
    organized_schools = {}
  campus_hash.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
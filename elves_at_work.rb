Dir["./code/*.rb"].each {|file| require file }
class ElvesAtWork
  p "Which Day do you want to run (eg: Day1)"
  to_run = gets.to_s.strip
  Object.const_get(to_run).run()
end
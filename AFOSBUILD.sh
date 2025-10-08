gem build brakeman.gemspec

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Gem build... PASS!"
else
  # houston we have a problem
  exit 1
fi

gem install brakeman-7.1.0.gem

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Gem install... PASS!"
else
  # houston we have a problem
  exit 1
fi

# Ruby Sinatra Example

This application serves as an example for cf CLI training.

# Setup & Local Run
```
bundle install
bundle exec ruby app.rb

# in another console
curl http://localhost:4567
```

# Install cf

## Unix
```
# Add the Cloud Foundry Foundation public key and package repository to your system
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
echo "deb http://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
# Update your local package index, then finally install the cf CLI
sudo apt-get update
sudo apt-get install cf-cli
```

## Mac
```
brew install cloudfoundry/tap/cf-cli
```

## CF cli help
```
cf help
# cf <COMMAND> --help
# e.g.
cf target --help
```

# Deployment

Have a look at the scripts directory README file.
```
cd scripts
less README.md
```

# pilot-robotframework
Robot Framework pilot project for training

# Running the tests on local
- Install python3, pip and pipenv
- Setup pipenv: "pipenv install --dev"
- Start pipenv shell by running "pipenv shell"

# Running the tests
- Use command: pipenv run robot -V config/dev.py -V config/common_variables.py -L TRACE sampletest.robot
# pilot-robotframework
Robot Framework pilot project for training

# Running the tests on local
- Install python3, pip and pipenv
- Install Selenium Webdriver: "pip3 install -U selenium"
- Setup pipenv: "pipenv install --dev"
- Start pipenv shell by running "pipenv shell"
- Run pip3 install -r requirements.txt

# Running the tests
- Use command: pipenv run robot -V config/staging.py -V config/common_variables.py -L TRACE tests/demoblaze.robot
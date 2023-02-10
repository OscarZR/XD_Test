import requests
import json
from datetime import datetime
import pytest

@pytest.fixture(scope="session")
def connection():
    url='https://api.stackexchange.com/2.2/search?order=desc&sort=activity&intitle=perl&site=stackoverflow'
    header = {"user-agent" : 'robot'}
    response_raw = requests.get(url, headers=header)
    response_json = json.loads(response_raw.text)

    yield response_json

@pytest.fixture(scope="session")
def variables(connection):
    less_visits=connection['items'][0]['view_count']
    creation_date = connection['items'][0]['creation_date']
    creation_date_act = connection['items'][0]['creation_date']
    owner_value=connection['items'][0]['owner']['reputation']
    reasons = {
        "less_visits" : less_visits,
        "creation_date" : creation_date,
        "creation_date_act" : creation_date_act,
        "owner_value" : owner_value,
    }
    yield reasons
def test_connection(connection):
    assert connection is not None and connection !=[]

def test_samples(variables):
    less_visits = variables['less_visits']
    creation_date = variables['creation_date']
    creation_date_act = variables['creation_date_act']
    owner_value = variables['owner_value']
    assert (less_visits is not None) and (creation_date is not None) and (creation_date_act is not None) and (owner_value is not None)

def test_analizador(connection):
    answered_responses = 0
    noanswered_respones = 0
    for j,stack in enumerate(connection['items']):
        if stack['is_answered'] is True:
            answered_responses +=1
        else:
            noanswered_respones +=1
    assert int(answered_responses) + int(noanswered_respones) == int(30)
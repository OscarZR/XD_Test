import requests
import json
from datetime import datetime

def main():
    url='https://api.stackexchange.com/2.2/search?order=desc&sort=activity&intitle=perl&site=stackoverflow'
    header = {"user-agent" : 'robot'}
    response_raw = requests.get(url, headers=header)
    response_json = json.loads(response_raw.text)
    answered_responses = 0
    noanswered_respones = 0
    answer_index=0
    less_visits=response_json['items'][0]['view_count']
    creation_date = response_json['items'][0]['creation_date']
    creation_date_act = response_json['items'][0]['creation_date']
    owner_value=response_json['items'][0]['owner']['reputation']
    mvp_owner = 0
    actual_answer = 0; oldest_answer = 0
    for j,stack in enumerate(response_json['items']):
        if stack['is_answered'] is True:
            answered_responses +=1
        else:
            noanswered_respones +=1
        if less_visits >= stack['view_count']:
            less_visits = int(stack['view_count'])
            answer_index = j
        if creation_date_act < stack['creation_date']:
            actual_answer = j
            creation_date_act = stack['creation_date']
        if creation_date > stack['creation_date']:
            oldest_answer = j
            creation_date = stack['creation_date']
        if stack['owner']['reputation'] > owner_value:
            mvp_owner = stack['owner']['user_id']
            owner_value = stack['owner']['reputation']
    fecha_vieja = datetime.utcfromtimestamp(creation_date).strftime('%Y-%m-%d')
    fecha_actual = datetime.utcfromtimestamp(creation_date_act).strftime('%Y-%m-%d')
    print(f'Respuestas contestadas: {answered_responses}. Respuestas no contestadas: {noanswered_respones}')
    print(f'La pregunta con menor vistas es la {answer_index} con {less_visits} vistas')
    print(f'La pregunta mas vieja es la {oldest_answer} con fecha {fecha_vieja} y la mas actual es {actual_answer} con fecha {fecha_actual}')
    print(f'El owner con mayor reputacion tiene el id {mvp_owner} con reputacion {owner_value}')

if __name__ == '__main__':
    main()
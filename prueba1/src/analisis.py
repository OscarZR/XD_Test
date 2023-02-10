import requests
import json
from datetime import datetime

def analizador(response_json):
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
    responses_dict={
        "answered_responses" : answered_responses,
        "noanswered_respones" : noanswered_respones,
        "answer_index" : answer_index,
        "less_visits" : less_visits,
        "creation_date" : creation_date,
        "creation_date_act" : creation_date_act,
        "owner_value" : owner_value,
        "mvp_owner" : mvp_owner,
        "actual_answer" : actual_answer,
        "oldest_answer" : oldest_answer,
    }
    return responses_dict

def main():
    url='https://api.stackexchange.com/2.2/search?order=desc&sort=activity&intitle=perl&site=stackoverflow'
    header = {"user-agent" : 'robot'}
    response_raw = requests.get(url, headers=header)
    response_json = json.loads(response_raw.text)
    analisis_results = analizador(response_json)
    fecha_vieja = datetime.utcfromtimestamp(analisis_results['creation_date']).strftime('%Y-%m-%d')
    fecha_actual = datetime.utcfromtimestamp(analisis_results['creation_date_act']).strftime('%Y-%m-%d')
    print(f'Respuestas contestadas: {analisis_results["answered_responses"]}.\
    Respuestas no contestadas: {analisis_results["noanswered_respones"]}')
    print(f'La pregunta con menor vistas es la {analisis_results["answer_index"]}\
    con {analisis_results["less_visits"]} vistas')
    print(f'La pregunta mas vieja es la {analisis_results["oldest_answer"]} con fecha {fecha_vieja}\
    y la mas actual es {analisis_results["actual_answer"]} con fecha {fecha_actual}')
    print(f'El owner con mayor reputacion tiene el id {analisis_results["mvp_owner"]}\
    con reputacion {analisis_results["owner_value"]}')

if __name__ == '__main__':
    main()
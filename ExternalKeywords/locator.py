import json
import jsonpath


def read_locator_from_json(locatorname):
    f = open('C:/Users/46734/PycharmProjects/pythonProject1/RobatFramework/Jsonflies/Elements.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response, locatorname)
    return value[0]


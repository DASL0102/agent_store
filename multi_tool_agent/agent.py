import datetime
from zoneinfo import ZoneInfo
from google.adk.agents import Agent
import requests



    
def get_worker_activities(user_id: str) -> str:
    """Returns a summary of worker activities.

    Args:
        user_id (str): The name of the user.

    Returns:
        str: Summary of worker activities.
    """
    return [
        {
            "name": "revisar codigo",
            "description": "Revisar el codigo de la app",
            "user": "Daniel Sanchez"
        },
        {
            "name": "hacer codigo",
            "description": "hacer el codigo de la app",
            "user": "Geremy"
        },
        {
            "name": "Ser jefe",
            "description": "Solo supervisar el trabajo de los demas",
            "user": "Daniel Venegas"
        },
    ]


root_agent = Agent(
    name="weather_time_agent",
    model="gemini-2.0-flash",
    description=(
        "Agent to answer questions about the time and weather in a city."
    ),
    instruction=(
        "You are a helpful agent who can answer user questions about workers activities makin a summary."
    ),
    tools=[get_worker_activities],
)
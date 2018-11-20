import os
from slackclient import SlackClient

slack_token = os.environ["SLACK_BOT_TOKEN"]
sc = SlackClient(slack_token)


def postMessage(message):
    sc.api_call(
        "chat.postMessage",
        channel="#intuinno_bot",
        text=message
    )

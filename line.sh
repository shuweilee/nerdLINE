#!/bin/bash

source tokenfile

token=${token_ds}

for i in `seq 1 999`;
do
    curl -s -X POST \
     -H "Authorization: Bearer ${token}" \
     -F 'message=TEST' https://notify-api.line.me/api/notify > /dev/null
done

# Reference
# - https://engineering.linecorp.com/zh-hant/blog/using-line-notify-to-send-messages-to-line-from-the-command-line/
# - https://notify-bot.line.me/my/

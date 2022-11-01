docker build . -t xxx
docker stop telegram-bot
docker rm telegram-bot

docker run -it --name telegram-bot \
        -e "bottoken=telegramBotToken" \
        -e "chatid=telegramChatID" \
        -e "username=<username>" \
        -e "password=<password>" \
        -p 9119:9119 xxx

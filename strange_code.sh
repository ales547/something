# По факту весь твой скрип помещается в одной строке - в 10ой. Если делать по человечески, я бы переделал таким хером

#!/bin/bash

LOG_FILE_NAME=$1
if [ ! -e $LOG_FILE_NAME ]; then
    echo "WTF!!!"
    exit 1
fi
export LOG_FILE_CONTENT=$(cat /var/123/$LOG_FILE_NAME.txt)

# Если мы ожидаем что от проги будет возвращаться какой-то результат и нам нужно прочитать опять файл (если я правильно тебя понял), то помещаем это в цикл

#!/bin/bash

LOG_FILE_NAME=$1
if [ ! -e $LOG_FILE_NAME ]; then
    echo "WTF!!!"
    exit 1
fi

while true
do
    export LOG_FILE_CONTENT=$(cat /var/123/$LOG_FILE_NAME.txt)
    my_awesome_prog
    EXIT_STATUS=$?
    echo "prog result: $EXIT_STATUS"

    if [ $EXIT_STATUS == '1' ]; then
        echo "Jopisdone"
        exit 0
    elif [ $EXIT_STATUS == '0' ]; then
        echo "Nasha pisnya garna i nova..."
done

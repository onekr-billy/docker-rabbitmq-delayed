FROM rabbitmq:3.11-management

RUN apt-get update
RUN apt install -y wget

RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez -O $RABBITMQ_HOME/plugins/rabbitmq_delayed_message_exchange-3.11.1.ez

RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

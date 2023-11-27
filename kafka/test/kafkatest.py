from pykafka import KafkaClient
import threading

KAFKA_HOST = "localhost:9092" # Or the address you want

client = KafkaClient(hosts = KAFKA_HOST)
topic = client.topics["topic2"]

with topic.get_sync_producer() as producer:
    for i in range(10):
        message = "Test message " + str(i)
        encoded_message = message.encode("utf-8")
        producer.produce(encoded_message)

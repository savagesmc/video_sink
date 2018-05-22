FROM ubuntu

RUN apt-get update \
&& apt-get install -y vlc \
&& apt-get install -y ffmpeg

RUN useradd -m vlcuser

COPY simulate_video_sink.sh /tmp/
ENTRYPOINT ["/tmp/simulate_video_sink.sh"]

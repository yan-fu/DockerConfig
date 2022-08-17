docker run --rm \
  -e DISPLAY=${DISPLAY} \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ~/.PyCharm:/home/developer/.PyCharm \
  -v ~/.PyCharm.java:/home/developer/.java \
  -v ~/.PyCharm.py2:/usr/local/lib/python2.7 \
  -v ~/.PyCharm.py3:/usr/local/lib/python3.7 \
  -v ~/.PyCharm.share:/home/developer/.local/share/JetBrains \
  -v ~/Project:/home/developer/Project \
  --name pycharm-$(head -c 4 /dev/urandom | xxd -p)-$(date +'%Y%m%d-%H%M%S') \
docker-image-pycharm:latest

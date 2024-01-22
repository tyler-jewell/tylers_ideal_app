FROM dart:latest

ARG FLUTTER_CHANNEL=stable

ENV FLUTTER_GIT_URL=https://github.com/flutter/flutter.git
ENV FLUTTER_HOME=/flutter
ENV PATH="$PATH:$FLUTTER_HOME/bin"

# Clone and configure Flutter
RUN git clone $FLUTTER_GIT_URL $FLUTTER_HOME -b $FLUTTER_CHANNEL --depth 1 \
    && flutter config --enable-web \
    && flutter precache \
    && flutter doctor

# activate melos
RUN dart pub global activate melos

WORKDIR /app

COPY . .

CMD ["bash", "-c", "docker cp /app/test/goldens ./"]

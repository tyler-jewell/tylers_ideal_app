FROM dart:latest

RUN git clone https://github.com/flutter/flutter.git -b stable \
    && export PATH="$PATH:/flutter/bin" \
    && flutter config --enable-web \
    && flutter precache \
    && flutter doctor

WORKDIR /app

COPY . .

RUN flutter test --update-goldens
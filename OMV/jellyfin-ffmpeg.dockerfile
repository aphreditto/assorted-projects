FROM jellyfin/jellyfin:latest

# Install jellyfin-ffmpeg
RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://github.com/jellyfin/jellyfin-ffmpeg/releases/latest/download/jellyfin-ffmpeg.tar.xz && \
    tar -xf jellyfin-ffmpeg.tar.xz -C /usr/lib/jellyfin-ffmpeg --strip-components=1 && \
    rm jellyfin-ffmpeg.tar.xz && \
    ln -s /usr/lib/jellyfin-ffmpeg/ffmpeg /usr/bin/ffmpeg && \
    ln -s /usr/lib/jellyfin-ffmpeg/ffprobe /usr/bin/ffprobe

ENV PATH="/usr/lib/jellyfin-ffmpeg:$PATH"

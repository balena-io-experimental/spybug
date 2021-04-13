# spybug

This project creates an M3U/XSPF audio stream with audio captured from a microphone. The stream can be accessed locally on port 8080 or using the device's public URL.


**Services overview**

- audio: the audio block is the central piece, responsible for capturing audio from the microphone.
- darkice: a live audio streamer. It grabs audio from the audio block and creates an mp3 stream that can be fed into icecast.
- icecast: a streaming media server, responsible for hosting the M3U/XSPF streams and interfacing with clients.

# TODO
[] detailed readme
[] full project build including NanoPi, LiPo battery and Powerboost circutry for charging.

# GetGetYarn

These are some simples scripts to search [GetYarn.io](https://getyarn.io/) for clips relevant to search terms.
For example, the snippet below picks a random clip for "go" and "away" and then concatenates them into a video.

```shell
./words_to_clips.sh go away
```

Why?
I dunno, cause it was kind of fun to make and maybe it could be useful sometime?

This code is pretty crappy and not well tested so I'm sure there are a lot of bugs but it works well for me.
Sometimes the audio and video make get unsynced?

## Docker version
To use this as a docker container (especially valuable on Mac OS X), you can build it using the dockerfile in this repository.

```shell
$ docker build . -t getgetyarnio
```

Invocation of this with a string of words will dump the video to stdout
```shell
$ docker run getgetyarnio this is a test > tmp.mp4
```

#!/bin/sh
# https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/Virtual-devices?version_id=2366658e8c18457f3dc400b14f46789cba2eddcc
# https://obsproject.com/forum/threads/please-help-where-is-the-audio-output-going-in-obs.154475/post-565629

pw-loopback \
  --capture-props='media.class=Audio/Sink node.name=al_speaker node.description="Audiolink Speaker"' \
  --playback-props='media.class=Audio/Source node.name=al_mic node.description="Audiolink Mic"' \
  &


#!/bin/bash

THEME=frog

tutor config render --extra-config ./config.yml ./theme "$(tutor config printroot)/env/build/openedx/themes/$THEME" \
&& tutor images build openedx \
&& tutor local start -d \
&& tutor local settheme $THEME localhost studio.localhost $(tutor config printvalue LMS_HOST) $(tutor config printvalue CMS_HOST)

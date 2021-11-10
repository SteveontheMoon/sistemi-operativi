#!/bin/bash
find /usr/include -name '*.h' -type f | xargs -I{} cp --parents {} ./.localcopy/

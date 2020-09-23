#!/bin/bash

# Rebind CAPS LOCK to act as ESC key
# Key hex IDs can be found here: https://developer.apple.com/library/archive/technotes/tn2450/_index.html

hidutil property --set '{"UserKeyMapping":
  [{"HIDKeyboardModifierMappingSrc":0x700000039,
    "HIDKeyboardModifierMappingDst":0x700000029}]
}'

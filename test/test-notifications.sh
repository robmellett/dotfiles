#!/bin/bash

# Restart Dunst
killall -SIGUSR1 dunst
killall -SIGUSR2 dunst

# Send Large Notification
# /usr/bin/notify-send -u normal "TEST" "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt libero elit, nec luctus eros porta vitae. Aenean vel dapibus risus. Donec imperdiet vel mauris id posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Suspendisse sed fringilla enim. Cras hendrerit sem sed mauris rhoncus, eu ultricies purus imperdiet. Aliquam blandit arcu et purus consequat, nec convallis sapien dignissim. Curabitur pharetra orci in diam finibus hendrerit in eu erat. Vivamus est turpis, sodales eu rutrum et, rhoncus a risus. Donec at erat finibus, lobortis enim et, dignissim eros. Quisque congue tortor luctus aliquet fermentum."

# Send a Small Notification
/usr/bin/notify-send -u normal "TEST" "Lorem ipsum dolor sit amet"
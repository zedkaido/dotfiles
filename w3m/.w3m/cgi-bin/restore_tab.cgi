#!/bin/bash

last_tab=$(tail -n 1 ~/.w3m/.restore_tab.txt);
limit=$(tail -n 20 ~/.w3m/.restore_tab.txt);
other_tabs=$(printf "%s" "$limit" | head -n -1);
printf "%s\r\n" "$other_tabs" > ~/.w3m/restore_tab.txt;
printf "%s\r\n" "W3m-control: GOTO $last_tab";
printf "W3m-control: DELETE_PREVBUF\r\n"

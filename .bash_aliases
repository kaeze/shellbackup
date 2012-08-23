#!/bin/bash
alias buildEVT="CONFIG_BOARD_EVT=y build_all_noprebuilt &> build_a.log &"
alias buildEVM="CONFIG_BOARD_EVM=y build_all_noprebuilt &> build_a.log &"
alias today="date +%Y%m%d"


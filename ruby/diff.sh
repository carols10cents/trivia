#!/usr/bin/env bash

./bin/golden_master > game2.out
diff game.out game2.out

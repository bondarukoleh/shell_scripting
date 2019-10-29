#!/usr/bin/env bash
#Not working with git for windows, since it's not a trully shell.
CREDENTIALS="User=Bob\nPass=1111";

echo $CREDENTIALS > newFile.env;

# append
echo $CREDENTIALS >> newFile.env;
#!/bin/bash
echo 'hello world';

brew services stop php71;
brew unlink  php71;
brew link php56;
brew services start php56;
sudo nginx -s reload;
echo 'finish work that php71 to php56 ';

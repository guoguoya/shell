!#/bin/bash

echo 'hello world';

brew services stop php56;
brew unlink  php56;
brew link php71;
brew services start php71;
sudo nginx -s reload;
echo 'finish work that php56 to php71 ';

# eng
eng

## INSTALL NPM
:<div>

```bash
function npm_install(){
    wget https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-x64.tar.xz
    tar xf node-v10.15.0-linux-x64.tar.xz -C /usr/local/
    ln -s /usr/local/node-v10.15.0-linux-x64/ /usr/local/node
    echo "PATH=/usr/local/node/bin:$PATH" >> /etc/profile.d/env.sh
    . /etc/profile.d/env.sh
}
```
</div>
## INSTALL tiddlywiki

```bash
function install_tiddlywiki(){
    npm_install
    npm install -g tiddlywiki
}
```
## START tiddlywiki server

```bash
git clone git@github.com:cndeng/eng.git
tiddlywiki eng --listen
```

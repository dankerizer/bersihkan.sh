# Delete all node_modules folders recursively on Mac

DO you get notice like this?
![disk full](disk-full.png)

Easly to remove all node_modules on current directory recursively.


## Step 1
```bash
wget  https://github.com/dankerizer/bersihkan.sh/raw/master/bersihkan.sh --output-document=bersihkan.sh

mv bersihkan.sh /usr/local/sbin
```

## Run
```bash
bersihkan.sh
```

And then, if you will edit your project, you can install all node modules again
```bash
npm install
```

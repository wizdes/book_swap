cd /home/mikehand/book_swap/public
wget --no-check-certificate -O  inventory.csv http://bookswap.kylelady.com/export/csv.csv?api=Jg7wjI0w0DuFTUqMAkd3TjTPFPvcx83fHXj0K26BfgqFgHtJSVfJOJax8G6lI2N
python ./LoadInventory.py
cp -r ./webcontent/*  /var/www/dramaticchipmunk/bookswap

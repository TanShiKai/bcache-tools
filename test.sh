make

echo 1 > /sys/fs/bcache/*/unregister
wipefs -a /dev/sdc
# ./make-bcache -C /dev/sdc

echo 1 > /sys/block/bcache0/bcache/stop
wipefs -a /dev/sdd
./make-bcache -B /dev/sdd

sudo parted /dev/sdd --script mklabel gpt mkpart xfspart xfs 0% 100%
sudo mkfs.xfs /dev/sdd1
sudo partprobe /dev/sdd1


 UUID="6b96c0df-7e2e-4c20-b238-4d47ddd9d4cd"    /datadrive   xfs   defaults,discard   1   2
 
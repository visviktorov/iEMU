cd iphone
export STRAP_URL=$(curl https://assets.checkra.in/loader/config.json | jq -r ".core_bootstrap_tar")
curl -LO $STRAP_URL
mkdir strap
tar xf strap.tar.lzma -C strap
cd ..

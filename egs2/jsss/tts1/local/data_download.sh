# Download JSSS Corpus

. ./path.sh || exit 1

download_dir=$1

# check arguments
if [ $# != 1 ]; then
    echo "Usage: $0 <download_dir>"
    exit 1
fi

set -euo pipefail

url="https://drive.google.com/a/g.sp.m.is.nagoya-u.ac.jp/uc?id=1O_3ffKTOLb_CdCsuWPqUX6wiDDP0ge66"
if [ ! -e "${download_dir}/jsss_ver1" ]; then
    scripts/utils/download_from_google_drive.sh \
        "${url}" "${download_dir}" zip
    echo "Successfully downloaded JSSS corpus."
else
    echo "Already exists. Skipped."
fi

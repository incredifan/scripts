BLUE='\033[0;34m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

INFO="${BLUE}[INFO] ${NC}"
SUCCESS="${GREEN}[SUCCESS] ${NC}"

echo -e "${INFO} "
echo -e "${INFO}Connecting to PostGres Database..."
echo -e "${INFO} "
echo -e "${INFO}Once Connected:"
echo -e "${INFO}  - To list databases:  \l or \list"
echo -e "${INFO}  - To list tables:     \dt"
echo -e "${INFO}  - To Quit:            \q"
echo -e "${INFO} "

psql -host "host=host.amazonaws.com user=user password=password"

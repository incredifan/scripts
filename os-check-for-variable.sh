if [[ -z ${1} ]]; then
  echo "Variable NOT set: [$1]"
  exit -1
else
  echo "  Variable set: [$1]"
fi

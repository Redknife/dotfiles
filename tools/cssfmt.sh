if [ -z "$1" ]; then
  echo "Usage: cssfmt input-file [output-file]"
  exit 1;
fi

file=$1
output=$2

if [ -z "$output" ]; then
  output=$file
fi

postcss_config=/Users/redknife/Developer/rs/dotfiles/home/postcss-sorting.json
stylelint_config=/Users/redknife/Developer/rs/dotfiles/home/stylelint-config.json

stylefmt -c $stylelint_config $file $output
postcss -u postcss-sorting -s postcss-scss -c $postcss_config -o $output $file

exit 0;

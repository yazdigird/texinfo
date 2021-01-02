#! /bin/sh
# This file generated by maintain/regenerate_cmd_tests.sh

if test z"$srcdir" = "z"; then
  srcdir=.
fi

one_test_logs_dir=test_log
diffs_dir=diffs


dir=nested_formats
name='nested_menu'
mkdir -p $dir

"$srcdir"/run_parser_all.sh -dir $dir $name
exit_status=$?
cat $dir/$one_test_logs_dir/$name.log
if test $exit_status = 0 && test -f $dir/$diffs_dir/$name.diff; then
  echo 
  cat $dir/$diffs_dir/$name.diff
fi
exit $exit_status


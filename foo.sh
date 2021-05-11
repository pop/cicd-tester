input=".github/workflows/release.yml production/baz sandbox/foo staging/bar"
echo "::set-output name=changed::`echo [$(echo $input | xargs -n1 -I{} echo {}, | cut -d '/' -f 1 | uniq)]`"

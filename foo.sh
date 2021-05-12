input=".github/workflows/release.yml production/baz sandbox/foo staging/bar"

folders=$(echo $input | xargs -n1 echo | cut -d '/' -f 1 | uniq)
changed=$(echo $folders | jq -R 'split(" ")' -rj | tr -d '\n' | tr -d ' ')

echo "::set-output name=changed::$changed"

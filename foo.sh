for changed_file in $(echo ".github/workflows/release.yml production/baz sandbox/foo staging/bar"); do
        echo $changed_file;
	if [[ "$changed_file" == "production/"* ]]; then
		echo "::set-output name=production::true"
	fi
done

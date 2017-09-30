for file in $(find . -name \*.py) ; do 
    echo $file 
    ruby extract_examples.rb <  $file > "${file%.py}.yml"
done


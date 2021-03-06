# ansible-examples

```
The MIT License

Copyright 2017 Vinod Halaharvi, vinod.halaharvi@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```


### Here is how I generated it.
```
cd SOME_DIRECTORY

# clone this project
git clone https://github.com/vinodhalaharvi/ansible-examples.git

# clone ansible source code
git clone https://github.com/ansible/ansible.git
cd ansible/lib/ansible 
for file in $(find . -name \*.py) ; do 
    echo $file 
    ruby SOME_DIRECTORY/ansible-examples/extract_examples.rb <  $file > "${file%.py}.yml"
done
```

## You should know what you are doing to run the following commands!!!
### delete all but the generated yaml files
```
find SOME_DIRECTORY/ansible/lib/ansible -not -name \*.yml -exec rm {} \;
```

### delete all empty directories
```
find SOME_DIRECTORY/ansible/lib/ansible -not -name \*.yml -exec rmdir {} \;
```

### delete files with zero size
```
find SOME_DIRECTORY/ansible/lib/ansible -size 0 -name \*.yml -exec rm {} \;
```

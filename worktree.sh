
# Get repo name
url=git://github.com/some-user/my-repo.git
basename=$(basename $url)
echo $basename
filename=${basename%.*}
echo $filename
# extension=${basename##*.}
# echo $extension

# Make direcotry
mkdir $filename
git clone $url $filename/.bare --bare
ln -s $filename/.bare .git

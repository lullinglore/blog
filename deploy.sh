echo 'Cleaning and building "public" directory'
hugo --cleanDestinationDir

echo
echo -n 'Enter commit name:'
read cname
echo

echo 'Pushing new changes to "public"'
cd public
git add .
git commit -m "$cname"
git push

echo 'Pushing new changes to "blog"'
cd ..
git add .
git commit -m "Deployed: $cname"
git push

echo '' > index.html
echo '<!DOCTYPE html>' >> index.html
echo '<html lang="en">' >> index.html
echo '<head>' >> index.html
echo '    <meta charset="UTF-8">' >> index.html
echo '    <meta name="viewport" content="width=device-width, initial-scale=1.0">' >> index.html
echo '    <title>Notes by Deepak Mecheri</title>' >> index.html
echo '    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">' >> index.html
echo '    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '    <h1>Notes</h1>' >> index.html

html_files=(`find . -name '*.html' | grep -v index.html | sort`)
links=''
for file in "${html_files[@]}"; do
    title="${file%.*}"
    echo '      <a href='\"$file\"'>'$title'</a>' >> index.html
    echo '      <br>' >> index.html
done
echo "</body>" >> index.html
echo "</html>" >> index.html
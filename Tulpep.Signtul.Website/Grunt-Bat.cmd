IF "%PLATFORM%"=="Any CPU" (
ECHO "Running Grunt Functions"
npm install -g grunt-cli  1> nul
cd Tulpep.Signtul.Website
npm install
grunt
)

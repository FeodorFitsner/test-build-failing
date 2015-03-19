Signtul [![Build status](https://ci.appveyor.com/api/projects/status/0l6d6vcu963lbel1/branch/master?svg=true)](https://ci.appveyor.com/project/tulpep/signtul/branch/master)
========

To use websites you should run inside Tulpep.Singtul\Tulpep.Signtul.Website :

1. bower install (previously installed using npm install -g bower)
2. npm install
3. grunt (previously installed using npm install -g grunt-cli)

Before compile the Outlook Adding Project you need:
  1.  Have the password for the Tulpep Certificate PFX File stored as a string Value named ```PfxPassword``` in the registry key ```HKEY_CURRENT_USER\Software\Tulpep```
  2.  Run ```InstallCertificate.ps1```

To test Stripe WebHooks in Local development enviroment you need:
  1. Create a new test in Stripe.com
  2. Allow IIS request from other domain, other than localhost. Modifying ```%userprofile%\Documents\IISExpress\config\applicationhost.config``` to add this binding in the website ```<binding protocol="http" bindingInformation="*:4300:signtuldev.localtunnel.me" />```
  3. Install [localtunnel](https://localtunnel.me/)  using ```npm install -g localtunnel```
  4. Run your Visual Studio as administrator
  5. Run ```lt --port 4300 --subdomain signtuldev```


To create a new build release for Outlook Addin run something like
````powershell
Squirrel --releasify SigntulOutlookAddIn.1.0.1115.nupkg -i favicon.ico -n "/t http://timestamp.verisign.com/scripts/timstamp.dll /sha1 b6c83dfa006475aec9e458a48696c1c42ff1b5c4"
````
Keep old *Releases* folder preloaded to generate delta update package

To develop Tulpep.ADSigntul you neeed to debug in X86, due [Akavache](https://github.com/akavache/Akavache)

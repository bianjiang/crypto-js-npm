Crypto-JS (mirror of http://code.google.com/p/crypto-js/)
=============

This basically tracks the crypto-js project at http://code.google.com/p/crypto-js/ done by Jeff.Mott.OR@gmail.com.

I did nothing but add 
	
	if (typeof module !== 'undefined' && module.exports) {module.exports = CrytoJS;}
	
to the end of the package.

My current project only needs part of the whole library, so I created a specific "rollup" to meet my needs.

Just take a look up the build.yml in the original/cypro-js-read-only/builder/build.yml. I added the last line.
	
    crypto-js: [core, enc-base64, enc-utf16, md5, sha1, sha256, hmac, pbkdf2, evpkdf, cipher-core, mode-cfb, mode-ctr, mode-ofb, mode-ecb, aes]
    
You can add or remove the modules you want, and run

	$./make.sh
	
It should make the crypto-js.js package using the original builder, and move it to ./lib/. But the current npm package ONLY works with my setting.
It's quick and dirty... since don't know if anybody has the same interest to use crypto-js to replace node.js's own crypto package. If you do, let me know.
I might just maintain it and push it to the npm.

In your node.js package.json, just add 

	"dependencies":{
        "cryptojs": "git+https://github.com/bianjiang/crypto-js-npm.git"
    }

you should ok... 



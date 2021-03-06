# Tugrik

<img style="border: 2px solid #000000;" src="https://c1.staticflickr.com/9/8178/7979804061_1e2131de4a_m.jpg" /> [(CC BY-NC 2.0)](https://creativecommons.org/licenses/by-nc/2.0/) by [chimerasaurus](https://www.flickr.com/photos/jamesmalone/).

## Work in Progress

Tugrik makes it possible to use the [MongoTalk][1] Smalltalk API to store objects in a [GemStone/S 64][3] database using [GsDevKit_home][2]. 
The obvious advantage is that instead of storing your domain objects in an opaque db like [Mongo][4], your Smalltalk objects are stored in a Smalltalk db and operations can be performed in-place in the GemStone/S 64 db.

## [100 mongo = 1 tugrik][5]

### Install GsDevKit_home

The following are based on the [GsDevKit_home installation instructions][6]:

```
# Install GsDevKit_home
git clone https://github.com/GsDevKit/GsDevKit_home.git
cd GsDevKit_home
. bin/defHOME_PATH.env
installServerClient

# Create tODE client
createClient tode
```

### Create Tugrik stone and client

```
# Create Tugrik stone
createStone -u http://gsdevkit.github.io/GsDevKit_home/Tugrik.ston -i Tugrik -l Tugrik Tugrik 3.3.0

# Create Tugrik Pharo5.0 client
createClient -t pharo tugrik -l -v Pharo5.0 -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston

#interactive session
startClient tugrik -s Tugrik

# run SmalltalkCI tests - batch mode
startClient tugrik -f -s Tugrik -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston -r -t tugrik_tests
```

### Update Tugrik client and server after a refreshing Tugrik clone

#### Bash scripts

```
# refresh git clone
cd $GS_HOME/shared/repos/Tugrik
git pull origin master

# refresh client (-f option)
createClient -f -t pharo tugrik -l -v Pharo5.0 -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston

# refresh server
todeIt Tugrik project load Tugrik
```


#### Client image doIt

```smalltalk
(FileLocator imageDirectory / 'customClientLoad.st') fileIn
```

For more information see [SmalltalkCI and GsDevKit_home][7].


### [Merged as of no-sql/mongotalk@32108d4](https://github.com/pharo-nosql/mongotalk/commit/32108d4daa7c38310ce03fd69d2bdd8e47d09a27)

[1]: https://github.com/pharo-nosql/mongotalk
[2]: https://github.com/GsDevKit/GsDevKit_home
[3]: https://gemtalksystems.com/products/gs64/
[4]: https://www.mongodb.org
[5]: http://ccoins.ru/pages/mongolia_en.html
[6]: https://github.com/GsDevKit/GsDevKit_home#installation
[7]: https://github.com/hpi-swa/smalltalkCI/blob/master/gemstone/README.md#smalltalkci-and-gsdevkit_home
[8]: https://github.com/hpi-swa/smalltalkCI

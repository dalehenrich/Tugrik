# Tugrik

## Work in Progress

Tugrik is based on the Mongo-Core package of the [MongoTalk project][1]. Tugrik makes it possible to use the [MongoTalk][1] Smalltalk API to store objects in a [GemStone/S 64][3] database using [GsDevKit_home][2]. 
The obvious advantage is that instead of storing your domain objects in an opaque db like [Mongo][4], your Smalltalk objects are stored in a Smalltalk db and operations can be performed in-place in the GemStone/S 64 db.

## [100 mongo = 1 tugrik][5]

## Installation - based on soon to be released version of GsDevKit_home

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
cd $GS_HOME/shared/repos
git clone https://github.com/dalehenrich/Tugrik.git
createStone -u http://gsdevkit.github.io/GsDevKit_home/TugrikTalk.ston -i TugrikTalk -l TugrikTalk -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston Tugrik 3.3.0

# Create Tugrik Pharo4.0 client
createClient -t pharo Tugrik -l -v Pharo4.0 -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston

#interactive session
startClient Tugrik -s Tugrik

# run SmalltalkCI tests - batch mode
startClient Tugrik -f -s Tugrik -z $GS_HOME/shared/repos/Tugrik/.smalltalk.ston -r -t tugrik_tests

```

For more information see [SmalltalkCI and GsDevKit_home][7].

[1]: http://smalltalkhub.com/#!/~MongoTalkTeam/mongotalk
[2]: https://github.com/GsDevKit/GsDevKit_home
[3]: https://gemtalksystems.com/products/gs64/
[4]: https://www.mongodb.org
[5]: http://www.ccoins.ru/asia/mongolia_en.html
[6]: https://github.com/GsDevKit/GsDevKit_home#installation
[7]: https://github.com/hpi-swa/smalltalkCI/blob/master/gemstone/README.md#smalltalkci-and-gsdevkit_home
[8]: https://github.com/hpi-swa/smalltalkCI

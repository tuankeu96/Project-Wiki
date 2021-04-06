<?php











namespace Composer;

use Composer\Autoload\ClassLoader;
use Composer\Semver\VersionParser;






class InstalledVersions
{
private static $installed = array (
  'root' => 
  array (
    'pretty_version' => '1.0.0+no-version-set',
    'version' => '1.0.0.0',
    'aliases' => 
    array (
    ),
    'reference' => NULL,
    'name' => 'flarum/flarum',
  ),
  'versions' => 
  array (
    'antoinefr/flarum-ext-money' => 
    array (
      'pretty_version' => 'v0.11.0',
      'version' => '0.11.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'a76c30aef82ac4a4e9341b6aaab92b00fcd19705',
    ),
    'askvortsov/flarum-categories' => 
    array (
      'pretty_version' => 'v2.0.0',
      'version' => '2.0.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '96f9426f7016d9690674bae8dea8863ba84d42d2',
    ),
    'axy/backtrace' => 
    array (
      'pretty_version' => '1.0.7',
      'version' => '1.0.7.0',
      'aliases' => 
      array (
      ),
      'reference' => 'c6c7d0f3497a07ae934f9e8511cbc2286db311c5',
    ),
    'axy/codecs-base64vlq' => 
    array (
      'pretty_version' => '1.0.1',
      'version' => '1.0.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '53a1957f2cb773c6533ac615b3f1ac59e40e13cc',
    ),
    'axy/errors' => 
    array (
      'pretty_version' => '1.0.5',
      'version' => '1.0.5.0',
      'aliases' => 
      array (
      ),
      'reference' => '2c64374ae2b9ca51304c09b6b6acc275557fc34f',
    ),
    'axy/sourcemap' => 
    array (
      'pretty_version' => '0.1.5',
      'version' => '0.1.5.0',
      'aliases' => 
      array (
      ),
      'reference' => '95a52df5a08c3a011031dae2e79390134e28467c',
    ),
    'clarkwinkelmann/flarum-ext-bookmarks' => 
    array (
      'pretty_version' => '0.1.2',
      'version' => '0.1.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '70ebaa1929a2613a3ecac24d5b7f2a5f42a90358',
    ),
    'clarkwinkelmann/flarum-ext-circle-groups' => 
    array (
      'pretty_version' => '0.2.3',
      'version' => '0.2.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '8169cf1c6ba0c740cfc1bb956d9b7bc976c2bffb',
    ),
    'clarkwinkelmann/flarum-ext-emojionearea' => 
    array (
      'pretty_version' => '0.3.0',
      'version' => '0.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '91737d5b25439d06c1890e12c0e6d7da021bec9d',
    ),
    'components/font-awesome' => 
    array (
      'pretty_version' => '5.15.1',
      'version' => '5.15.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '6943708effe6d823d40255bcdbe9ee021312c880',
    ),
    'datlechin/lang-vietnamese' => 
    array (
      'pretty_version' => '1.0.0',
      'version' => '1.0.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '60063e841440f4a5c1ee463d73c62633e78370fe',
    ),
    'dflydev/fig-cookies' => 
    array (
      'pretty_version' => 'v2.0.3',
      'version' => '2.0.3.0',
      'aliases' => 
      array (
      ),
      'reference' => 'aa3c3a6224fea4ca2c05cf6b8285ce023ff41d9b',
    ),
    'doctrine/cache' => 
    array (
      'pretty_version' => '1.10.2',
      'version' => '1.10.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '13e3381b25847283a91948d04640543941309727',
    ),
    'doctrine/dbal' => 
    array (
      'pretty_version' => '2.12.1',
      'version' => '2.12.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'adce7a954a1c2f14f85e94aed90c8489af204086',
    ),
    'doctrine/event-manager' => 
    array (
      'pretty_version' => '1.1.1',
      'version' => '1.1.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '41370af6a30faa9dc0368c4a6814d596e81aba7f',
    ),
    'doctrine/inflector' => 
    array (
      'pretty_version' => '2.0.3',
      'version' => '2.0.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '9cf661f4eb38f7c881cac67c75ea9b00bf97b210',
    ),
    'doctrine/lexer' => 
    array (
      'pretty_version' => '1.2.1',
      'version' => '1.2.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e864bbf5904cb8f5bb334f99209b48018522f042',
    ),
    'dragonmantank/cron-expression' => 
    array (
      'pretty_version' => 'v1.2.1',
      'version' => '1.2.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '9504fa9ea681b586028adaaa0877db4aecf32bad',
    ),
    'egulias/email-validator' => 
    array (
      'pretty_version' => '2.1.25',
      'version' => '2.1.25.0',
      'aliases' => 
      array (
      ),
      'reference' => '0dbf5d78455d4d6a41d186da50adc1122ec066f4',
    ),
    'fig/http-message-util' => 
    array (
      'pretty_version' => '1.1.5',
      'version' => '1.1.5.0',
      'aliases' => 
      array (
      ),
      'reference' => '9d94dc0154230ac39e5bf89398b324a86f63f765',
    ),
    'filp/whoops' => 
    array (
      'pretty_version' => '2.9.1',
      'version' => '2.9.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '307fb34a5ab697461ec4c9db865b20ff2fd40771',
    ),
    'flagrow/user-directory' => 
    array (
      'replaced' => 
      array (
        0 => '*',
      ),
    ),
    'flarum/approval' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '6d73226a3dbe8867f48a53e98a2a7e55b33bbf32',
    ),
    'flarum/bbcode' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'f870df04a68175004d1e67be0a0c0ce1407b5fb9',
    ),
    'flarum/core' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'f8edc2d827fee47dc78fbb75ee1d3b28580ed11d',
    ),
    'flarum/emoji' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'e51c59f0128e9c877ff61e2ce9efd63e861209b8',
    ),
    'flarum/flags' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '4a6d7657d1259c217b43f814ca3e4918ab55ef6b',
    ),
    'flarum/flarum' => 
    array (
      'pretty_version' => '1.0.0+no-version-set',
      'version' => '1.0.0.0',
      'aliases' => 
      array (
      ),
      'reference' => NULL,
    ),
    'flarum/lang-english' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'db94e7e178be298f266558953555cb6f5373a94e',
    ),
    'flarum/likes' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '985ca7a2022148f64ac291c2e18c3300a0b1423c',
    ),
    'flarum/lock' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '3dcbfc67af206e34095e32af5f96a603145db752',
    ),
    'flarum/markdown' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'd27e1087b37ac9ae5375252d6b9bff31ff6ca71d',
    ),
    'flarum/mentions' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'e785d89b43e483d9b6f5d070b9828c87b7bcb4b6',
    ),
    'flarum/nicknames' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'ef05f8a8c6801a6336c0ba1338ce3d7d6abba605',
    ),
    'flarum/pusher' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '1d7a94a26deed07a1b38eb3ef6ef2014043a10f4',
    ),
    'flarum/statistics' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '8764dc652d29ba68bc5dd69b7892b7e5c88c23ef',
    ),
    'flarum/sticky' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '57cf21950bc651f085e6c9427e7408df487ea4b4',
    ),
    'flarum/subscriptions' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'f1ab545679f4fd14633ebdf66742d804314749f4',
    ),
    'flarum/suspend' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => 'c00094d89baf32d9fae2e56fd82b54877eae4a06',
    ),
    'flarum/tags' => 
    array (
      'pretty_version' => 'v0.1.0-beta.15',
      'version' => '0.1.0.0-beta15',
      'aliases' => 
      array (
      ),
      'reference' => '9f3a12376998b3d43bb996dd5ab1b4d822e677c2',
    ),
    'flarumite/simple-discussion-views' => 
    array (
      'pretty_version' => '0.2.3',
      'version' => '0.2.3.0',
      'aliases' => 
      array (
      ),
      'reference' => 'cf209ba2609e046205c2c6ef5e3eeb26d6f4f93d',
    ),
    'fof/console' => 
    array (
      'pretty_version' => '0.6.2',
      'version' => '0.6.2.0',
      'aliases' => 
      array (
      ),
      'reference' => 'b6e3b744ab0ac7c0ff3e21f883722daa6520f05f',
    ),
    'fof/doorman' => 
    array (
      'pretty_version' => '0.3.0',
      'version' => '0.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '7f93ada46dec12227243d8627f7344bcf7357086',
    ),
    'fof/drafts' => 
    array (
      'pretty_version' => '0.3.1',
      'version' => '0.3.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'cc77ec510c1c7f31c66a45b30a36b1c76798c32e',
    ),
    'fof/extend' => 
    array (
      'pretty_version' => '0.3.1',
      'version' => '0.3.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '9fc079d3b1c4c98c87fb252b4df12d5b2033458e',
    ),
    'fof/follow-tags' => 
    array (
      'pretty_version' => '0.6.4',
      'version' => '0.6.4.0',
      'aliases' => 
      array (
      ),
      'reference' => '93012fc748309cce992efdc1026f18600937e65b',
    ),
    'fof/gamification' => 
    array (
      'pretty_version' => '0.4.2',
      'version' => '0.4.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '131425e280fc4aa0e42af8548b2528bc3921d3a4',
    ),
    'fof/links' => 
    array (
      'pretty_version' => '0.5.2',
      'version' => '0.5.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '72b5c9617b25a092b1b5798126bdd8e56d72b8e1',
    ),
    'fof/polls' => 
    array (
      'pretty_version' => '0.3.2',
      'version' => '0.3.2.0',
      'aliases' => 
      array (
      ),
      'reference' => '6c130b8067a86d856e2cc8e24ab258f8d2d0e399',
    ),
    'fof/reactions' => 
    array (
      'pretty_version' => '0.5.0',
      'version' => '0.5.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '562a5e60bf92af9d2ab8ca315c9c815e232e1937',
    ),
    'fof/user-directory' => 
    array (
      'pretty_version' => '0.5.0',
      'version' => '0.5.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'b3dd04fb14ca9b7b3c35f6fa661b6bcd46be0d4e',
    ),
    'franzl/whoops-middleware' => 
    array (
      'pretty_version' => '0.4.1',
      'version' => '0.4.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '625a80d90b22c38d8a9372187e76ae5f844e4412',
    ),
    'guzzlehttp/psr7' => 
    array (
      'pretty_version' => '1.7.0',
      'version' => '1.7.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '53330f47520498c0ae1f61f7e2c90f55690c06a3',
    ),
    'illuminate/bus' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '107fd91aa7bc121fef8b43fb51a5bdee19e77e94',
    ),
    'illuminate/cache' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '19d55205ca38d54dc200285431b21eaa18de93f8',
    ),
    'illuminate/config' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e52084805fcfc0d36f891121dd14c64ce388a892',
    ),
    'illuminate/console' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e500b84f88c313432638d84911aa4ddfaa31c663',
    ),
    'illuminate/container' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => 'aa6e7030cba7458bbeeddfb1ddb54b3c2f7ba113',
    ),
    'illuminate/contracts' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '89dc8d7ac32cdfa254461cdd4da5d692b44169a4',
    ),
    'illuminate/database' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '49563a8b1676c13207b3c3bd516f1b7a8c343887',
    ),
    'illuminate/events' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '668581e3c31f9d499dc6919fe873003969a88e6c',
    ),
    'illuminate/filesystem' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '5355953da41db06aac064a3d08dfa1f9bafffd24',
    ),
    'illuminate/hashing' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => 'd1fcfd3acf9629708c00a6b4c946857a5f877bf2',
    ),
    'illuminate/mail' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '224a45884cdea863d2fea9bf0e8449de87edc8db',
    ),
    'illuminate/pipeline' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '01063d3605efd22453316d771802cf5075ed848e',
    ),
    'illuminate/queue' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => 'eaf5da2b91526bc21485ebf98f08a6cb9948b053',
    ),
    'illuminate/session' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '3103f1fb446f9c3e7d7c0deb8810a8c8d1d22c03',
    ),
    'illuminate/support' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '338777190c1169087e1d8f61a0fb7b1255310c74',
    ),
    'illuminate/translation' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '717fad58c8451b86c7b5644bc652430a3369d7b3',
    ),
    'illuminate/validation' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => '292b63fb50a999cf8cab8deffb60c696b0be8ce1',
    ),
    'illuminate/view' => 
    array (
      'pretty_version' => 'v6.20.13',
      'version' => '6.20.13.0',
      'aliases' => 
      array (
      ),
      'reference' => 'ef8ca562fb42957b76b00dc21a9c08df5798f572',
    ),
    'intervention/image' => 
    array (
      'pretty_version' => '2.5.1',
      'version' => '2.5.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'abbf18d5ab8367f96b3205ca3c89fb2fa598c69e',
    ),
    'laminas/laminas-diactoros' => 
    array (
      'pretty_version' => '1.8.7p2',
      'version' => '1.8.7.0-patch2',
      'aliases' => 
      array (
      ),
      'reference' => '6991c1af7c8d2c8efee81b22ba97024781824aaa',
    ),
    'laminas/laminas-escaper' => 
    array (
      'pretty_version' => '2.7.0',
      'version' => '2.7.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '5e04bc5ae5990b17159d79d331055e2c645e5cc5',
    ),
    'laminas/laminas-httphandlerrunner' => 
    array (
      'pretty_version' => '1.3.0',
      'version' => '1.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e8f850bd12cb82b268ff235fe74b2df906e8bfe8',
    ),
    'laminas/laminas-stratigility' => 
    array (
      'pretty_version' => '3.3.0',
      'version' => '3.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'd6336b873fe8f766f84b82164f2a25e4decd6a9a',
    ),
    'laminas/laminas-zendframework-bridge' => 
    array (
      'pretty_version' => '1.1.1',
      'version' => '1.1.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '6ede70583e101030bcace4dcddd648f760ddf642',
    ),
    'league/commonmark' => 
    array (
      'pretty_version' => '1.5.7',
      'version' => '1.5.7.0',
      'aliases' => 
      array (
      ),
      'reference' => '11df9b36fd4f1d2b727a73bf14931d81373b9a54',
    ),
    'league/flysystem' => 
    array (
      'pretty_version' => '1.1.3',
      'version' => '1.1.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '9be3b16c877d477357c015cec057548cf9b2a14a',
    ),
    'league/mime-type-detection' => 
    array (
      'pretty_version' => '1.7.0',
      'version' => '1.7.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '3b9dff8aaf7323590c1d2e443db701eb1f9aa0d3',
    ),
    'matteocontrini/flarum-imgur-upload' => 
    array (
      'pretty_version' => 'v3.5.0',
      'version' => '3.5.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '5d8e535d4b9f98e3879956f27790ec7e61206cf4',
    ),
    'matthiasmullie/minify' => 
    array (
      'pretty_version' => '1.3.66',
      'version' => '1.3.66.0',
      'aliases' => 
      array (
      ),
      'reference' => '45fd3b0f1dfa2c965857c6d4a470bea52adc31a6',
    ),
    'matthiasmullie/path-converter' => 
    array (
      'pretty_version' => '1.1.3',
      'version' => '1.1.3.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e7d13b2c7e2f2268e1424aaed02085518afa02d9',
    ),
    'middlewares/base-path' => 
    array (
      'pretty_version' => 'v1.1.0',
      'version' => '1.1.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '18277023b9a4acdc85479071a10f702582c3a909',
    ),
    'middlewares/base-path-router' => 
    array (
      'pretty_version' => 'v0.2.1',
      'version' => '0.2.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '1706ec57dbeb7083c7ea17561041f8dc2de3b37c',
    ),
    'middlewares/request-handler' => 
    array (
      'pretty_version' => 'v1.4.0',
      'version' => '1.4.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'adcc7dd36361661bd62057a21c052643ede6c726',
    ),
    'middlewares/utils' => 
    array (
      'pretty_version' => 'v2.2.0',
      'version' => '2.2.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '7dc49454b4fbf249226023c7b77658b6068abfbc',
    ),
    'monolog/monolog' => 
    array (
      'pretty_version' => '1.26.0',
      'version' => '1.26.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '2209ddd84e7ef1256b7af205d0717fb62cfc9c33',
    ),
    'mskian/tasklist' => 
    array (
      'pretty_version' => '0.0.5',
      'version' => '0.0.5.0',
      'aliases' => 
      array (
      ),
      'reference' => '5400428fffe7b5a6215b4f0f34e0a7c009ac150a',
    ),
    'nearata/flarum-ext-copy-code-to-clipboard' => 
    array (
      'pretty_version' => 'v1.1.0',
      'version' => '1.1.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e93bda80facb5026a816fc2907045c1d01d45a3a',
    ),
    'nearata/flarum-ext-signup-confirm-password' => 
    array (
      'pretty_version' => 'v2.1.0',
      'version' => '2.1.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '37fc47614b09a06ccd13b3353297c23f8c9a0209',
    ),
    'nesbot/carbon' => 
    array (
      'pretty_version' => '2.43.0',
      'version' => '2.43.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'd32c57d8389113742f4a88725a170236470012e2',
    ),
    'nikic/fast-route' => 
    array (
      'pretty_version' => 'v0.6.0',
      'version' => '0.6.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '31fa86924556b80735f98b294a7ffdfb26789f22',
    ),
    'opis/closure' => 
    array (
      'pretty_version' => '3.6.1',
      'version' => '3.6.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '943b5d70cc5ae7483f6aff6ff43d7e34592ca0f5',
    ),
    'psr/container' => 
    array (
      'pretty_version' => '1.0.0',
      'version' => '1.0.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'b7ce3b176482dbbc1245ebf52b181af44c2cf55f',
    ),
    'psr/event-dispatcher-implementation' => 
    array (
      'provided' => 
      array (
        0 => '1.0',
      ),
    ),
    'psr/http-factory' => 
    array (
      'pretty_version' => '1.0.1',
      'version' => '1.0.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '12ac7fcd07e5b077433f5f2bee95b3a771bf61be',
    ),
    'psr/http-message' => 
    array (
      'pretty_version' => '1.0.1',
      'version' => '1.0.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'f6561bf28d520154e4b0ec72be95418abe6d9363',
    ),
    'psr/http-message-implementation' => 
    array (
      'provided' => 
      array (
        0 => '1.0',
      ),
    ),
    'psr/http-server-handler' => 
    array (
      'pretty_version' => '1.0.1',
      'version' => '1.0.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'aff2f80e33b7f026ec96bb42f63242dc50ffcae7',
    ),
    'psr/http-server-middleware' => 
    array (
      'pretty_version' => '1.0.1',
      'version' => '1.0.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '2296f45510945530b9dceb8bcedb5cb84d40c5f5',
    ),
    'psr/log' => 
    array (
      'pretty_version' => '1.1.3',
      'version' => '1.1.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '0f73288fd15629204f9d42b7055f72dacbe811fc',
    ),
    'psr/log-implementation' => 
    array (
      'provided' => 
      array (
        0 => '1.0.0',
        1 => '1.0',
      ),
    ),
    'psr/simple-cache' => 
    array (
      'pretty_version' => '1.0.1',
      'version' => '1.0.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '408d5eafb83c57f6365a3ca330ff23aa4a5fa39b',
    ),
    'pusher/pusher-php-server' => 
    array (
      'pretty_version' => '2.6.4',
      'version' => '2.6.4.0',
      'aliases' => 
      array (
      ),
      'reference' => '2cf2ba85e7ce3250468a1c42ab7c948a7d43839d',
    ),
    'ralouphie/getallheaders' => 
    array (
      'pretty_version' => '3.0.3',
      'version' => '3.0.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '120b605dfeb996808c31b6477290a714d356e822',
    ),
    'reflar/doorman' => 
    array (
      'replaced' => 
      array (
        0 => '*',
      ),
    ),
    'reflar/gamification' => 
    array (
      'replaced' => 
      array (
        0 => '*',
      ),
    ),
    'reflar/polls' => 
    array (
      'replaced' => 
      array (
        0 => '^1.3.4',
      ),
    ),
    'reflar/reactions' => 
    array (
      'replaced' => 
      array (
        0 => '*',
      ),
    ),
    's9e/regexp-builder' => 
    array (
      'pretty_version' => '1.4.4',
      'version' => '1.4.4.0',
      'aliases' => 
      array (
      ),
      'reference' => '605b33841a766abd40ba3d07c15d0f62b5e7f033',
    ),
    's9e/sweetdom' => 
    array (
      'pretty_version' => '2.0.0',
      'version' => '2.0.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '5fc62bc1f4756650924e5cd1b429afcf34542722',
    ),
    's9e/text-formatter' => 
    array (
      'pretty_version' => '2.8.1',
      'version' => '2.8.1.0',
      'aliases' => 
      array (
      ),
      'reference' => '2ac2ab8c28849311424a78ea21a8368423053ce3',
    ),
    'sijad/flarum-ext-links' => 
    array (
      'replaced' => 
      array (
        0 => '*',
      ),
    ),
    'simonxeko/preview-discussion' => 
    array (
      'pretty_version' => '0.1.0',
      'version' => '0.1.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '8cf1eab5366d909e88d832d9e691308de1e46978',
    ),
    'swiftmailer/swiftmailer' => 
    array (
      'pretty_version' => 'v6.2.5',
      'version' => '6.2.5.0',
      'aliases' => 
      array (
      ),
      'reference' => '698a6a9f54d7eb321274de3ad19863802c879fb7',
    ),
    'symfony/config' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e501c56d2fa70798075b9811d0eb4c27de491459',
    ),
    'symfony/console' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => '12e071278e396cc3e1c149857337e9e192deca0b',
    ),
    'symfony/css-selector' => 
    array (
      'pretty_version' => 'v5.2.1',
      'version' => '5.2.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'f789e7ead4c79e04ca9a6d6162fc629c89bd8054',
    ),
    'symfony/debug' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => '5dfc7825f3bfe9bb74b23d8b8ce0e0894e32b544',
    ),
    'symfony/deprecation-contracts' => 
    array (
      'pretty_version' => 'v2.2.0',
      'version' => '2.2.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '5fa56b4074d1ae755beb55617ddafe6f5d78f665',
    ),
    'symfony/event-dispatcher' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => '5d4c874b0eb1c32d40328a09dbc37307a5a910b0',
    ),
    'symfony/event-dispatcher-contracts' => 
    array (
      'pretty_version' => 'v1.1.9',
      'version' => '1.1.9.0',
      'aliases' => 
      array (
      ),
      'reference' => '84e23fdcd2517bf37aecbd16967e83f0caee25a7',
    ),
    'symfony/event-dispatcher-implementation' => 
    array (
      'provided' => 
      array (
        0 => '1.1',
      ),
    ),
    'symfony/filesystem' => 
    array (
      'pretty_version' => 'v5.2.1',
      'version' => '5.2.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'fa8f8cab6b65e2d99a118e082935344c5ba8c60d',
    ),
    'symfony/finder' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => 'ebd0965f2dc2d4e0f11487c16fbb041e50b5c09b',
    ),
    'symfony/http-foundation' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => '5ebda66b51612516bf338d5f87da2f37ff74cf34',
    ),
    'symfony/mime' => 
    array (
      'pretty_version' => 'v5.2.1',
      'version' => '5.2.1.0',
      'aliases' => 
      array (
      ),
      'reference' => 'de97005aef7426ba008c46ba840fc301df577ada',
    ),
    'symfony/polyfill-ctype' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'c6c942b1ac76c82448322025e084cadc56048b4e',
    ),
    'symfony/polyfill-iconv' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'b34bfb8c4c22650ac080d2662ae3502e5f2f4ae6',
    ),
    'symfony/polyfill-intl-idn' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '0eb8293dbbcd6ef6bf81404c9ce7d95bcdf34f44',
    ),
    'symfony/polyfill-intl-normalizer' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '6e971c891537eb617a00bb07a43d182a6915faba',
    ),
    'symfony/polyfill-mbstring' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'f377a3dd1fde44d37b9831d68dc8dea3ffd28e13',
    ),
    'symfony/polyfill-php72' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'cc6e6f9b39fe8075b3dabfbaf5b5f645ae1340c9',
    ),
    'symfony/polyfill-php73' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'a678b42e92f86eca04b7fa4c0f6f19d097fb69e2',
    ),
    'symfony/polyfill-php80' => 
    array (
      'pretty_version' => 'v1.22.0',
      'version' => '1.22.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'dc3063ba22c2a1fd2f45ed856374d79114998f91',
    ),
    'symfony/process' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => '075316ff72233ce3d04a9743414292e834f2cb4a',
    ),
    'symfony/service-contracts' => 
    array (
      'pretty_version' => 'v2.2.0',
      'version' => '2.2.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'd15da7ba4957ffb8f1747218be9e1a121fd298a1',
    ),
    'symfony/translation' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => 'c1001b7d75b3136648f94b245588209d881c6939',
    ),
    'symfony/translation-contracts' => 
    array (
      'pretty_version' => 'v2.3.0',
      'version' => '2.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'e2eaa60b558f26a4b0354e1bbb25636efaaad105',
    ),
    'symfony/translation-implementation' => 
    array (
      'provided' => 
      array (
        0 => '1.0',
      ),
    ),
    'symfony/yaml' => 
    array (
      'pretty_version' => 'v4.4.18',
      'version' => '4.4.18.0',
      'aliases' => 
      array (
      ),
      'reference' => 'bbce94f14d73732340740366fcbe63363663a403',
    ),
    'therealsujitk/flarum-ext-gifs' => 
    array (
      'pretty_version' => 'v2.0.0',
      'version' => '2.0.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '6283d63d5b6678459d9883a2df9c583729f58509',
    ),
    'tijsverkoyen/css-to-inline-styles' => 
    array (
      'pretty_version' => '2.2.3',
      'version' => '2.2.3.0',
      'aliases' => 
      array (
      ),
      'reference' => 'b43b05cf43c1b6d849478965062b6ef73e223bb5',
    ),
    'tobscure/json-api' => 
    array (
      'pretty_version' => 'v0.3.0',
      'version' => '0.3.0.0',
      'aliases' => 
      array (
      ),
      'reference' => '663d1c1299d4363758e8e440e5849134f218f45c',
    ),
    'wikimedia/less.php' => 
    array (
      'pretty_version' => 'v3.1.0',
      'version' => '3.1.0.0',
      'aliases' => 
      array (
      ),
      'reference' => 'a486d78b9bd16b72f237fc6093aa56d69ce8bd13',
    ),
    'zendframework/zend-diactoros' => 
    array (
      'replaced' => 
      array (
        0 => '~1.8.7.0',
      ),
    ),
    'zendframework/zend-escaper' => 
    array (
      'replaced' => 
      array (
        0 => '^2.6.1',
      ),
    ),
    'zendframework/zend-httphandlerrunner' => 
    array (
      'replaced' => 
      array (
        0 => '^1.1.0',
      ),
    ),
    'zendframework/zend-stratigility' => 
    array (
      'replaced' => 
      array (
        0 => '^3.2.0',
      ),
    ),
    'zeokat/flarum-ext-seoslugs' => 
    array (
      'pretty_version' => 'v0.1.6',
      'version' => '0.1.6.0',
      'aliases' => 
      array (
      ),
      'reference' => 'c100bec2c0355be4c38494341d79a8f1eb11fe8b',
    ),
    'zerosonesfun/elint' => 
    array (
      'pretty_version' => '3.0.3',
      'version' => '3.0.3.0',
      'aliases' => 
      array (
      ),
      'reference' => '0a6cda630b63bba555e2db82f7b1cb50c8a4a97b',
    ),
  ),
);
private static $canGetVendors;
private static $installedByVendor = array();







public static function getInstalledPackages()
{
$packages = array();
foreach (self::getInstalled() as $installed) {
$packages[] = array_keys($installed['versions']);
}


if (1 === \count($packages)) {
return $packages[0];
}

return array_keys(array_flip(\call_user_func_array('array_merge', $packages)));
}









public static function isInstalled($packageName)
{
foreach (self::getInstalled() as $installed) {
if (isset($installed['versions'][$packageName])) {
return true;
}
}

return false;
}














public static function satisfies(VersionParser $parser, $packageName, $constraint)
{
$constraint = $parser->parseConstraints($constraint);
$provided = $parser->parseConstraints(self::getVersionRanges($packageName));

return $provided->matches($constraint);
}










public static function getVersionRanges($packageName)
{
foreach (self::getInstalled() as $installed) {
if (!isset($installed['versions'][$packageName])) {
continue;
}

$ranges = array();
if (isset($installed['versions'][$packageName]['pretty_version'])) {
$ranges[] = $installed['versions'][$packageName]['pretty_version'];
}
if (array_key_exists('aliases', $installed['versions'][$packageName])) {
$ranges = array_merge($ranges, $installed['versions'][$packageName]['aliases']);
}
if (array_key_exists('replaced', $installed['versions'][$packageName])) {
$ranges = array_merge($ranges, $installed['versions'][$packageName]['replaced']);
}
if (array_key_exists('provided', $installed['versions'][$packageName])) {
$ranges = array_merge($ranges, $installed['versions'][$packageName]['provided']);
}

return implode(' || ', $ranges);
}

throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}





public static function getVersion($packageName)
{
foreach (self::getInstalled() as $installed) {
if (!isset($installed['versions'][$packageName])) {
continue;
}

if (!isset($installed['versions'][$packageName]['version'])) {
return null;
}

return $installed['versions'][$packageName]['version'];
}

throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}





public static function getPrettyVersion($packageName)
{
foreach (self::getInstalled() as $installed) {
if (!isset($installed['versions'][$packageName])) {
continue;
}

if (!isset($installed['versions'][$packageName]['pretty_version'])) {
return null;
}

return $installed['versions'][$packageName]['pretty_version'];
}

throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}





public static function getReference($packageName)
{
foreach (self::getInstalled() as $installed) {
if (!isset($installed['versions'][$packageName])) {
continue;
}

if (!isset($installed['versions'][$packageName]['reference'])) {
return null;
}

return $installed['versions'][$packageName]['reference'];
}

throw new \OutOfBoundsException('Package "' . $packageName . '" is not installed');
}





public static function getRootPackage()
{
$installed = self::getInstalled();

return $installed[0]['root'];
}







public static function getRawData()
{
return self::$installed;
}



















public static function reload($data)
{
self::$installed = $data;
self::$installedByVendor = array();
}




private static function getInstalled()
{
if (null === self::$canGetVendors) {
self::$canGetVendors = method_exists('Composer\Autoload\ClassLoader', 'getRegisteredLoaders');
}

$installed = array();

if (self::$canGetVendors) {
foreach (ClassLoader::getRegisteredLoaders() as $vendorDir => $loader) {
if (isset(self::$installedByVendor[$vendorDir])) {
$installed[] = self::$installedByVendor[$vendorDir];
} elseif (is_file($vendorDir.'/composer/installed.php')) {
$installed[] = self::$installedByVendor[$vendorDir] = require $vendorDir.'/composer/installed.php';
}
}
}

$installed[] = self::$installed;

return $installed;
}
}

#!/usr/bin/env bash

# 修复 pocopico 大的一个 typo
if [ ${repo} == 'pocopico' -a ${branch} == 'develop' ]; then 
  # cd redpill-load && git reset --hard d810a64a33fdc84287ab68e2d5919763c725ebeb && cd ..
  #find redpill-load/config/DS3622xs+ -type d -name '*3622xs*' -execdir rename 's/3622xs\+/3622xsp/' '{}' +
  find redpill-load/config/DS3622xs+ -type f -name '*3622xs*' -exec rename 's/-3622xs\+/-3622xsp/' '{}' +
  sed -i 's/DS3622xs /DS3622xs+ /g; s/-3622xs+/-3622xsp/g' `find redpill-load/config/DS3622xs+ -type f -name '*config.json'`
fi

# 容错
[ -e redpill-load/config/DS1019+/7.0.1-42218/config.json ] && sed -i 's/920b53b9022ebd4675049b43c493455a1307ec97344846ca9dfd25d964b75684/b029393ea7b7cf644fb1c9f984f57c1980077562ee2e15d0ffd049c4c48098d3/g' redpill-load/config/DS1019+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1019+/7.0.1-42218/config.json ] && sed -i 's/338ba514066da01d0c1f770418916b9b96f5355d88a7b55b398d2726db591fdb/7311b04f7462847f529cf966c7b332097354692485c8157643d89441e2a81cd0/g' redpill-load/config/DS1019+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1019+/7.0.1-42218/config.json ] && sed -i 's/f17be89d59b0e59df4093df7e5d1ac1cf199f3b22413fe62e1a792c543d6172d/a8bcb6c36e8657a8723882b19ec3e76149dc67df3650f6db0af1958637e7f565/g' redpill-load/config/DS1019+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1520+/7.0.1-42218/config.json ] && sed -i 's/06947c58f25bd591f7fa3c58ad9473777481bdd7a049b42d1cb585ca01b053ee/b8864e2becd8ce5a6083db993564c8c0b982df8300a006b56695a0495a670aa3/g' redpill-load/config/DS1520+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1520+/7.0.1-42218/config.json ] && sed -i 's/74d513aaa3e30d8aa4f80e202d94a68a552e9c0472f8470e133ad29080556f55/70e93678f3932c35c5e884f950e50b36f8dc6366f96dd9a454c8d47ecbaee5de/g' redpill-load/config/DS1520+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1520+/7.0.1-42218/config.json ] && sed -i 's/f0a275587c51acdb4d58a7f0d82d70f31e54228d0fbf7575d5d425dae75d1969/7679ab11e895302425533c64e0dded211b38b8af71f2dd268c47a68bc9f6818a/g' redpill-load/config/DS1520+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1621+/7.0.1-42218/config.json ] && sed -i 's/19f56827ba8bf0397d42cd1d6f83c447f092c2c1bbb70d8a2ad3fbd427e866df/396144fdcd94d441b4ad665099395cf24a14606742bee9438745ea30bf12b9ef/g' redpill-load/config/DS1621+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1621+/7.0.1-42218/config.json ] && sed -i 's/f4648d0dd6b29ef6149b0ff46afe1fe32f81730aa79af72f37ffd3647c76f586/0ab3bf0ff027fb94863ef8822df787194f2d21079ecc66c0b0d4e46d24598855/g' redpill-load/config/DS1621+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1621+/7.0.1-42218/config.json ] && sed -i 's/73512c7bceb34cf7f7f93c2703db60496da0e27274fc45e5aefa0366c9734d6e/127a12bab3835cdf5af4e7ad2a23e78f889408302c55e5052080671cff6da5b7/g' redpill-load/config/DS1621+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1621xs+/7.0.1-42218/config.json ] && sed -i 's/5db4e5943d246b1a2414942ae19267adc94d2a6ab167ba3e2fc10b42aefded23/12bcfd44b4aaa6c3439b1404b7f07760373d816724ef672884d5187f27ccd70f/g' redpill-load/config/DS1621xs+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1621xs+/7.0.1-42218/config.json ] && sed -i 's/17607e1739c8acc9903272ebd981bccb27b51057cdcb3cc446e5c5149db452d3/3697732b2f29a4b7020f4994ff06c2d06309894ab568e264716bf7d5d02ae685/g' redpill-load/config/DS1621xs+/7.0.1-42218/config.json
[ -e redpill-load/config/DS1621xs+/7.0.1-42218/config.json ] && sed -i 's/4a3af151b313ca15f65195e63592aa1ef91351c54cc82b66dfb3457833af8e19/5727d99522a8d7e8e31cdc353e295ce4280b956391396d080d02fcde1e07c029/g' redpill-load/config/DS1621xs+/7.0.1-42218/config.json
[ -e redpill-load/config/DS2422+/7.0.1-42218/config.json ] && sed -i 's/415c54934d483a2557500bc3a2e74588a0cec1266e1f0d9a82a7d3aace002471/5a6cfbc690facdfaef9fbcc55215eac38c73ca6a85965a910af11cede5e2cd5d/g' redpill-load/config/DS2422+/7.0.1-42218/config.json
[ -e redpill-load/config/DS2422+/7.0.1-42218/config.json ] && sed -i 's/38281a90036fffcb41cd17f05a6c7e9a1d5740a78c135980fb0c3a6d0ca1485f/e083a8aec10537582ed0dd6d79bc358d9aff828b3e256996ef1e4f4bf418dd5d/g' redpill-load/config/DS2422+/7.0.1-42218/config.json
[ -e redpill-load/config/DS2422+/7.0.1-42218/config.json ] && sed -i 's/2b5b8dd90b2e6020ffccc2719d8bc16d9935421754a8c088d6b31dbca4e4ff7b/57bcadf9699252aa68dac40b5c48f362169b51fda9f77a7f1b51e3336a551f8f/g' redpill-load/config/DS2422+/7.0.1-42218/config.json
[ -e redpill-load/config/DS3615xs/7.0.1-42218/config.json ] && sed -i 's/dddd26891815ddca02d0d53c1d42e8b39058b398a4cc7b49b80c99f851cf0ef7/ae1aca3b178a00689b93e97cca680b56af3f453174b852e0047496120dee2ee3/g' redpill-load/config/DS3615xs/7.0.1-42218/config.json
[ -e redpill-load/config/DS3615xs/7.0.1-42218/config.json ] && sed -i 's/d29b695612710376734cb5c5b5ae4f2d8afc49ffd640387e1c86010f6c7d2c8a/354f0bb13c898a7b24f2942d8015f591f7acce1739e2060580c0f38c41addaf7/g' redpill-load/config/DS3615xs/7.0.1-42218/config.json
[ -e redpill-load/config/DS3615xs/7.0.1-42218/config.json ] && sed -i 's/4c90c3c7ee25b5fcc651552e80a9364d22823c863c834c5f43e3344a3a68af78/3a8c2fe60142d3eb3a7ed2381819faa1db2cda30ff163288dd0a6c85a25815c1/g' redpill-load/config/DS3615xs/7.0.1-42218/config.json
[ -e redpill-load/config/DS3617xs/7.0.1-42218/config.json ] && sed -i 's/d65ee4ed5971e38f6cdab00e1548183435b53ba49a5dca7eaed6f56be939dcd2/f7e846e2a22b62613ac5e9d6e154df0213ba4ae64a6556297af627cd1e643e5c/g' redpill-load/config/DS3617xs/7.0.1-42218/config.json
[ -e redpill-load/config/DS3617xs/7.0.1-42218/config.json ] && sed -i 's/28a75e0b680517d39374260eb981b8ca9ace8810b121a30b8036fa09cfcb77fc/8e0ab965c85b348dfc9dc17392b9cf0a117756f1d1bc4c0f0d19bb610350659d/g' redpill-load/config/DS3617xs/7.0.1-42218/config.json
[ -e redpill-load/config/DS3617xs/7.0.1-42218/config.json ] && sed -i 's/1b2e86fbf4006f6aa40dcd674ad449feed8b0b8317a71e2bb8bb986a74e08c57/eaddd97c40a35bbcf4092417364ca4376925fb3eb322cad0cf602d4c7973d147/g' redpill-load/config/DS3617xs/7.0.1-42218/config.json
[ -e redpill-load/config/DS3622xs+/7.0.1-42218/config.json ] && sed -i 's/f38329b8cdc5824a8f01fb1e377d3b1b6bd23da365142a01e2158beff5b8a424/a222d37f369d71042057ccb592f40c7c81e9b988a95d69fa166c7c2a611da99c/g' redpill-load/config/DS3622xs+/7.0.1-42218/config.json
[ -e redpill-load/config/DS3622xs+/7.0.1-42218/config.json ] && sed -i 's/06964b68e5ccdedd4363dff3986f99686d3c9cb5225e8e4c3d840a1d9cd1330b/d6059bcd7160ed1f775a9323599ac8860b60ada32f0a4f3e5ca166c15a17784e/g' redpill-load/config/DS3622xs+/7.0.1-42218/config.json
[ -e redpill-load/config/DS3622xs+/7.0.1-42218/config.json ] && sed -i 's/a95d4ab06189460f3b3d13a33e421887b5f3ea09a10535ae0d4c92beb7ff631d/11ebadba5d831ad6f31258ab317ed1f7cbfe18243413f9f81291b894b5f7a591/g' redpill-load/config/DS3622xs+/7.0.1-42218/config.json
[ -e redpill-load/config/DS918+/7.0.1-42218/config.json ] && sed -i 's/a403809ab2cd476c944fdfa18cae2c2833e4af36230fa63f0cdee31a92bebba2/a662d11999c266dfa86c54f7ba01045c6644c191124195a22d056d618790dffe/g' redpill-load/config/DS918+/7.0.1-42218/config.json
[ -e redpill-load/config/DS918+/7.0.1-42218/config.json ] && sed -i 's/338ba514066da01d0c1f770418916b9b96f5355d88a7b55b398d2726db591fdb/7311b04f7462847f529cf966c7b332097354692485c8157643d89441e2a81cd0/g' redpill-load/config/DS918+/7.0.1-42218/config.json
[ -e redpill-load/config/DS918+/7.0.1-42218/config.json ] && sed -i 's/4b7a7a271a3b2158d9193a4f0e75c59590949ad7b4e26d546f46cc2ee8504d51/d27320b536da0ac82d7959e0492180b3a25ef78a3997f65cc4ccddc426b921bd/g' redpill-load/config/DS918+/7.0.1-42218/config.json
[ -e redpill-load/config/DS920+/7.0.1-42218/config.json ] && sed -i 's/fe2a4648f76adeb65c3230632503ea36bbac64ee88b459eb9bfb5f3b8c8cebb3/b9b77846e0983f50496276bec6bcdfcfadd4c1f9f0db8ed2ca5766f131ddf97f/g' redpill-load/config/DS920+/7.0.1-42218/config.json
[ -e redpill-load/config/DS920+/7.0.1-42218/config.json ] && sed -i 's/346b68f662b50f47d3ee6c2bc9de6302e4b60436142c24ee88b620c7afd1ba06/70e93678f3932c35c5e884f950e50b36f8dc6366f96dd9a454c8d47ecbaee5de/g' redpill-load/config/DS920+/7.0.1-42218/config.json
[ -e redpill-load/config/DS920+/7.0.1-42218/config.json ] && sed -i 's/f7dd1317f24ec6b9bac839e37f66b59030218c7f97c06f73f1f54ed0f892c4aa/8607c34fff3a13c75dbc1a9c730de2b2cf649697d6244fd37047090d2e2ba897/g' redpill-load/config/DS920+/7.0.1-42218/config.json
[ -e redpill-load/config/DVA3219/7.0.1-42218/config.json ] && sed -i 's/3557df23ff6af9bbb0cf46872ba2fc09c344eb303a38e8283dbc9a46e5eae979/b3498a20aeb7c7c36deca0f4393172d4db7b51aa4fb87eaace83fe224d935e3b/g' redpill-load/config/DVA3219/7.0.1-42218/config.json
[ -e redpill-load/config/DVA3219/7.0.1-42218/config.json ] && sed -i 's/ef97f2d64f3f7f8c5e3f4e8fee613d385d7888826f56e119f1885a722c95c7cc/8b58e602317286bdd25481c4927a791507589ce0b7c29f1ad394d08b634d41a3/g' redpill-load/config/DVA3219/7.0.1-42218/config.json
[ -e redpill-load/config/DVA3219/7.0.1-42218/config.json ] && sed -i 's/6820f900bf2870660541b83f9741a0b70e05e8871bc41c006c9d688105c97f7c/5b301519fe08200e4cb368b7d23e4ce460d5412428126b9496084ceae3f6d67e/g' redpill-load/config/DVA3219/7.0.1-42218/config.json
[ -e redpill-load/config/DVA3221/7.0.1-42218/config.json ] && sed -i 's/01f101d7b310c857e54b0177068fb7250ff722dc9fa2472b1a48607ba40897ee/6722c73c51070dde2f542659d7728c497fc846256da2c9cf017177476de0bb09/g' redpill-load/config/DVA3221/7.0.1-42218/config.json
[ -e redpill-load/config/DVA3221/7.0.1-42218/config.json ] && sed -i 's/ef97f2d64f3f7f8c5e3f4e8fee613d385d7888826f56e119f1885a722c95c7cc/8b58e602317286bdd25481c4927a791507589ce0b7c29f1ad394d08b634d41a3/g' redpill-load/config/DVA3221/7.0.1-42218/config.json
[ -e redpill-load/config/DVA3221/7.0.1-42218/config.json ] && sed -i 's/0825958923a5e67d967389769cff5fb7a04a25b98a2826c4c1e8aa7b8146dc8b/86a7450cdc461049c4cefe3fe3a1f9d241ea3c484f72f5667d7cd27f2842c8d6/g' redpill-load/config/DVA3221/7.0.1-42218/config.json
[ -e redpill-load/config/FS2500/7.0.1-42218/config.json ] && sed -i 's/4d060be8afec548fdb042bc8095524f10ff200033cab74df37ae07f3de5eaa69/3fbd5defbc0fef0d152494033f3e817c330525b70e356a9e9acd2b72d9806b59/g' redpill-load/config/FS2500/7.0.1-42218/config.json
[ -e redpill-load/config/FS2500/7.0.1-42218/config.json ] && sed -i 's/f6816165a52b1f53ce44a45878fe06641da34e9478947f826a236c1a6548f8fd/e083a8aec10537582ed0dd6d79bc358d9aff828b3e256996ef1e4f4bf418dd5d/g' redpill-load/config/FS2500/7.0.1-42218/config.json
[ -e redpill-load/config/FS2500/7.0.1-42218/config.json ] && sed -i 's/cbe9099c57f23ba53415574b011580218fa55a0bdb83c4e4bba9e27100e5379d/8d66ddfa947b38c0e407d4c5efd7558b1a9392e04fd83fe9f162e1aa546f8da8/g' redpill-load/config/FS2500/7.0.1-42218/config.json
[ -e redpill-load/config/FS6400/7.0.1-42218/config.json ] && sed -i 's/0e5e15398fb50d21ac52e0fbae199d5bacebc52f04933be5825c710f9de874ea/3437cc14ba919f13e37691d31d960f3f48cd3d734c015001ad2a7679636a5e9d/g' redpill-load/config/FS6400/7.0.1-42218/config.json
[ -e redpill-load/config/FS6400/7.0.1-42218/config.json ] && sed -i 's/cbed16da4970c41e9b9c6797c57c70b12f55ab497756cb050247d1c155c8a8f6/67a5c04ba47cbef148195816412f88248b86a58e021e1c8196e31fbd375d0b50/g' redpill-load/config/FS6400/7.0.1-42218/config.json
[ -e redpill-load/config/FS6400/7.0.1-42218/config.json ] && sed -i 's/eebaf0236230956fc1a9d8ca8c8f86143da959b631cad9c311152a4e644d17a0/ec1e1ea2022ac4af7dfbf2f72b64219b0c8ef747278a0b5c37d50ac7b07195ed/g' redpill-load/config/FS6400/7.0.1-42218/config.json
[ -e redpill-load/config/RS3413xs+/7.0.1-42218/config.json ] && sed -i 's/9796536979407817ca96aef07aaabb3f03252a8e54df0f64ff7caf3c737f0da9/b5f5505a4ee0d623c562db43a0be6aba64a5bc57c6d6dcb796d80a60ea5fc7cd/g' redpill-load/config/RS3413xs+/7.0.1-42218/config.json
[ -e redpill-load/config/RS3413xs+/7.0.1-42218/config.json ] && sed -i 's/d29b695612710376734cb5c5b5ae4f2d8afc49ffd640387e1c86010f6c7d2c8a/354f0bb13c898a7b24f2942d8015f591f7acce1739e2060580c0f38c41addaf7/g' redpill-load/config/RS3413xs+/7.0.1-42218/config.json
[ -e redpill-load/config/RS3413xs+/7.0.1-42218/config.json ] && sed -i 's/bd9ceaaffbdbca676029797386262b262f101d469ecb7d8b709b59070cc6a050/ad2b7c6ffabf348a14df0558ab89bc2ac62226b33dfe5b19114f7beed11ae41f/g' redpill-load/config/RS3413xs+/7.0.1-42218/config.json
[ -e redpill-load/config/RS3618xs/7.0.1-42218/config.json ] && sed -i 's/2b7623a6781fe10e0eface1665d41dfe2e5adb033b26e50e27c3449aee5fe4b0/941886bee9a0929c6bd078c5f2c465d9599721fc885a1e3835d6b60631f419af/g' redpill-load/config/RS3618xs/7.0.1-42218/config.json
[ -e redpill-load/config/RS3618xs/7.0.1-42218/config.json ] && sed -i 's/58e6c4b8068cc7e5cc21d3bfce579669f891607f30f0dd6d58fba18fce695143/41993de949af53def17ca6190bfff503044b9ebc0beccf7a3d54ab050998e9db/g' redpill-load/config/RS3618xs/7.0.1-42218/config.json
[ -e redpill-load/config/RS3618xs/7.0.1-42218/config.json ] && sed -i 's/ded7d2d33b006b1ff554e6f59c28e52d4277c14146679cba7fdfacf8f309d14a/cd7c7ed0fba15b2d3eae70b9d6f680a8dfbe1138164e6312d98482177746f544/g' redpill-load/config/RS3618xs/7.0.1-42218/config.json
[ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/7afca3970ac7324d7431c1484d4249939bedd4c18ac34187f894c43119edf3a1/2a32266b7bcf0b2582b5afd9e39dc444e7cb40eaf4ccfdbfedf4743af821f11c/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json
[ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/b4cc62e9953f226960de98b65887e17dd6df5fa0ad28f665e0b4660dbd5f2fa8/d6059bcd7160ed1f775a9323599ac8860b60ada32f0a4f3e5ca166c15a17784e/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json
[ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/3510afe5b3dfe3662bfe054c1728c8794911da431718b533cd03d2a2c061ffd5/f2b99b4c05559376d34d30d6446c30a8b3f44f516e5a041299d03be9c7fd0095/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json

[ -d redpill-load/config/SA6400/7.1.1-42962 -a ! -f redpill-load/config/SA6400/7.1.1-42962/zImage-001-SA6400-42962-ramdisk-and-header.bsp ] && curl -L https://raw.githubusercontent.com/wjz304/redpill-load/test-dev/config/SA6400/7.1.1-42962/zImage-001-SA6400-42962-ramdisk-and-header.bsp -o redpill-load/config/SA6400/7.1.1-42962/zImage-001-SA6400-42962-ramdisk-and-header.bsp
[ -e redpill-load/config/SA6400/7.1.1-42962/config.json ] && sed -i 's/redpill-linux-v4.4.180+.ko/redpill-linux-v5.10.55+.ko/g' redpill-load/config/SA6400/7.1.1-42962/config.json

if [ ${repo} == 'pocopico' -a ${branch} == 'develop' ]; then 
  # 容错
  [ -e redpill-load/config/DS1520+/7.1.1-42962/config.json ] && sed -i 's/DSM_ds1520p_42962.pat/DSM_DS1520%2B_42962.pat/g' redpill-load/config/DS1520+/7.1.1-42962/config.json
  [ -e redpill-load/redpill-misc/recipes/universal.json ] && sed -i 's/856331415d6980d9ef03a75eae4b9c5c927d1083266e1d7038ad8c62fbc2d570/625daf8507141d055b60b9e5ffd633cde1302d68387d611ac97a98a92f820501/g' redpill-load/redpill-misc/recipes/universal.json
fi

if [ ${repo} == 'PeterSuh-Q3' -a ${branch} == 'master' ]; then 
  # 容错
  [ -e redpill-load/config/DS1520+/7.1.1-42962/config.json ] && sed -i 's/DSM_ds1520p_42962.pat/DSM_DS1520%2B_42962.pat/g' redpill-load/config/DS1520+/7.1.1-42962/config.json
fi

if [ ${repo} == 'pocopico' -a ${branch} == 'jun' ]; then 
  # 容错
  [ -e redpill-load/config/DVA3221/7.0.1-42218/config.json ] && sed -i 's/cndl.synology.cn/global.download.synology.com/g' redpill-load/config/DVA3221/7.0.1-42218/config.json
  [ -e redpill-load/config/FS6400/7.0.1-42218/config.json  ] && sed -i 's/global.synology.com/global.download.synology.com/g' redpill-load/config/FS6400/7.0.1-42218/config.json 
  [ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/global.synology.com/global.download.synology.com/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json
  [ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/a72076b1a5c148e775e9542916e2f07fe18d8676dc7396ed69355a9a0a38b36c/7afca3970ac7324d7431c1484d4249939bedd4c18ac34187f894c43119edf3a1/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json
  [ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/17607e1739c8acc9903272ebd981bccb27b51057cdcb3cc446e5c5149db452d3/b4cc62e9953f226960de98b65887e17dd6df5fa0ad28f665e0b4660dbd5f2fa8/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json
  [ -e redpill-load/config/RS4021xs+/7.0.1-42218/config.json ] && sed -i 's/3aa9d810064747fca6d0a3ab4c979bd82b49fc0d166dfe714261c2a22145cc70/3510afe5b3dfe3662bfe054c1728c8794911da431718b533cd03d2a2c061ffd5/g' redpill-load/config/RS4021xs+/7.0.1-42218/config.json
fi

if [ ${repo} == 'jumkey' -a ${branch} == 'develop' ]; then 
  # 容错
  [ -e redpill-load/config/DS923+/7.1.1-42962/config.json ] && sed -i 's|file://localhost/root/DSM_DS923%2B_42962.pat|https://global.download.synology.com/download/DSM/release/7.1.1/42962/DSM_DS923%2B_42962.pat|g' redpill-load/config/DS923+/7.1.1-42962/config.json
  [ -e redpill-load/config/DS923+/7.1.1-42962/config.json ] && sed -i 's|a2bcfae34eda13f65bc7ee453b63bab982e2db9891a680968bc24ef5035ae8d8|e33b47df446ce0bd99c5613767c9dba977915e25acfb5ccb9f5650b14459458f|g' redpill-load/config/DS923+/7.1.1-42962/config.json
  [ -e redpill-load/config/DVA1622/7.1-42661/config.json ] && sed -i 's|file://localhost/root/content.tar|https://global.download.synology.com/download/DSM/release/7.1/42661-1/DSM_DVA1622_42661.pat|g' redpill-load/config/DVA1622/7.1-42661/config.json
  [ -e redpill-load/config/DVA1622/7.1-42661/config.json ] && sed -i 's|99f60f0c2b54c0a2adbc01d79e872273488ba43296a7a74904c462bc423b7dfe|f1484cf302627072ca393293cd73e61dc9e09d479ef028b216eae7c12f7b7825|g' redpill-load/config/DVA1622/7.1-42661/config.json
  [ -e redpill-load/config/DVA1622/7.1-42661/config.json ] && sed -i 's|a31e91a62ab6f3ff986bc7fcfde0a56a292c15e17735e7b5fad573d333cf7de4|1d0e5b76e08e3483f6bf06d23b5978ec498b855bde23db1f96f343db4c43337d|g' redpill-load/config/DVA1622/7.1-42661/config.json
  [ -e redpill-load/config/DVA1622/7.1-42661/config.json ] && sed -i 's|32ee25e7a806eb481cc858edd7f1e341c85c7627ea03788f8466716432830d33|6290945ba61f652aec83725f81f5a47bd5e4cdbeb86241c33825154140e164ec|g' redpill-load/config/DVA1622/7.1-42661/config.json
fi
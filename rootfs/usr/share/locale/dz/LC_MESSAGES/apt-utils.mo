��    /      �  C           )        C  "   _     �     �     �     �     �       1   #     U  ,   d  #   �  (   �     �     �     �       %   6  '   \     �     �  #   �  "   �     �               1     C  #   `     �  "   �  5   �  !   �          )     @     R  "   p     �  &  �     �     �     �  !     #   .  �  R  �   *  J   �  �     b   �       v     �   �  �     u   �  �     9   �  �   �  �   �  �   z     5  v   =  b   �  z     �   �  �   ,  f     b   ~  �   �  �   w  w   ,  �   �  w   -  q   �  �     �   �  Z   K   �   �   �   O!  �   "  �   �"  <   Z#  ,   �#  i   �#  Y   .$  Z   �$  o  �$     S8  X   d8  M   �8  �   9  �   �9     )                              (   $             !         .      ,                              	      '                %       &                                  -         +          #       "                        *   
         /      %s has no binary override entry either
   %s has no override entry
   %s has no source override entry
   %s maintainer is %s not %s
  DeLink %s [%s]
  DeLink limit of %sB hit.
 *** Failed to link %s to %s Archive had no package field Archive has no control record Cannot get debconf version. Is debconf installed? Compress child Compressed output %s needs a compression set DB is old, attempting to upgrade %s DB was corrupted, file renamed to %s.old E:  E: Errors apply to file  Error processing contents %s Error processing directory %s Error writing header to contents file Failed to create IPC pipe to subprocess Failed to fork Failed to open %s Failed to read the override file %s Failed to read while computing MD5 Failed to readlink %s Failed to rename %s to %s Failed to resolve %s Failed to stat %s IO to subprocess/file failed Internal error, failed to create %s No selections matched Package extension list is too long Some files are missing in the package file group `%s' Source extension list is too long Tree walking failed Unable to get a cursor Unable to open %s Unable to open DB file %s: %s Unknown compression algorithm '%s' Unknown package record! Usage: apt-ftparchive [options] command
Commands: packages binarypath [overridefile [pathprefix]]
          sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

apt-ftparchive generates index files for Debian archives. It supports
many styles of generation from fully automated to functional replacements
for dpkg-scanpackages and dpkg-scansources

apt-ftparchive generates Package files from a tree of .debs. The
Package file contains the contents of all the control fields from
each package as well as the MD5 hash and filesize. An override file
is supported to force the value of Priority and Section.

Similarly apt-ftparchive generates Sources files from a tree of .dscs.
The --source-override option can be used to specify a src override file

The 'packages' and 'sources' command should be run in the root of the
tree. BinaryPath should point to the base of the recursive search and 
override file should contain the override flags. Pathprefix is
appended to the filename fields if present. Example usage from the 
Debian archive:
   apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

Options:
  -h    This help text
  --md5 Control MD5 generation
  -s=?  Source override file
  -q    Quiet
  -d=?  Select the optional caching database
  --no-delink Enable delinking debug mode
  --contents  Control contents file generation
  -c=?  Read this configuration file
  -o=?  Set an arbitrary configuration option W:  W: Unable to read directory %s
 W: Unable to stat %s
 Waited for %s but it wasn't there realloc - Failed to allocate memory Project-Id-Version: apt 1.0.5
Report-Msgid-Bugs-To: APT Development Team <deity@lists.debian.org>
PO-Revision-Date: 2006-09-19 09:49+0530
Last-Translator: Kinley Tshering <gasepkuenden2k3@hotmail.com>
Language-Team: Dzongkha <pgeyleg@dit.gov.bt>
Language: dz
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2;plural=(n!=1)
X-Poedit-Language: Dzongkha
X-Poedit-Country: Bhutan
X-Poedit-SourceCharset: utf-8
   %sལུ་ཟུང་ལྡན་མེདཔ་གཏང་ནིའི་་ཐོ་བཀོད་གང་རུང་ཡང་མིན་འདུག།
   %sལུ་ཟུར་བཞག་ཐོ་བཀོད་མེད།
   %s ལུ་འབྱུང་ཁུངས་མེདཔ་གཏང་ནིའི་ཐོ་བཀོད་འདི་མེད།
   %s ་རྒྱུན་སྐྱོང་པ་འདི་  %s ཨིན་   %s མེན།
  DeLink %s [%s]
 %sB་ཧེང་བཀལ་བཀྲམ་ནིའི་འབྲེལ་མེད་བཅད་མཚམས།
 *** %s་ལས་%sལུ་འབྲེལ་འཐུད་འབད་ནི་འཐུས་ཤོར་བྱུང་ཡོདཔ། ཡིག་མཛོད་ལུ་ཐུམ་སྒྲིལ་ཅི་ཡང་འཐུས་ཤོར་མ་བྱུང་། ཡིག་མཛོད་འདི་ལུ་ཚད་འཛིན་དྲན་ཐོ་མིན་འདུག debconf ་་འཐོན་རིམ་འདི་ལེན་མ་ཚུགས། debconf འདི་གཞི་བཙུགས་འབད་ཡི་ག་? ཆ་ལག་ཨེབ་བཙུགས་འབད། ཨེབ་བཙུགས་འབད་ཡོད་པའི་ཨའུཊི་པུཊི་%sལུ་ཨེབ་བཙུགས་ཆ་ཚན་ཅིག་དགོཔ་འདུག ཌི་བི་འདི་རྙིངམ་ཨིན་པས་  %s་ཡར་བསྐྱེད་འབད་ནིའི་དོན་ལུ་དཔའ་བཅམ་དོ། ཌི་བི་ངན་ཅན་བྱུང་ནུག་   %s.རྒསཔ་ལུ་ཡིག་སྣོད་འདི་བསྐྱར་མིང་བཏགས་ཡི། ཨི: ཨི:འཛོལ་བ་ཚུ་ཡིག་སྣོད་ལུ་འཇུག་སྤྱོད་འབད། %sའཛོལ་བ་ལས་སྦྱོར་འབད་ནིའི་ནང་དོན། སྣོད་ཐོ་%s་ལས་སྦྱོར་འབདཝ་ད་འཛོལ་བ་འཐོན་ཡི། ནང་དོན་ཡིག་སྣོད་ལུ་མགོ་ཡིག་འཛོལ་བ་འབྲི་ནིའི་མགོ་ཡིག ཡན་ལག་ལས་སྦྱོར་ལུ་ཨའི་པི་སི་རྒྱུད་དུང་གསར་བསྐྲུན་འབད་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོདཔ། ཁ་སྤེལ་འབད་ནི་ལུ་འཐུ་ཤོར་བྱུང་ཡོད། %s་ག་ཕྱེ་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོདཔ། ཟུར་བཞག་ཡིག་སྣོད་%sའདི་ལྷག་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོད། ཨེམ་ཌི་༥་གློག་རིག་རྐྱབ་པའི་སྐབས་ལྷག་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོད། %s་འབྲེལ་ལམ་ལྷག་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོདཔ། %s་ལུ་%s་བསྐྱར་མིང་བཏགས་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོད། %s་མོས་མཐུན་འབད་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོདཔ། %s་སིཊེཊི་འབད་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོདཔ། ཡན་ལག་ལས་སྦྱོར་ལུ་IO/ཡིག་སྣོད་འཐུས་ཤོར་བྱུང་ཡོད། ནང་འཁོད་འཛོལ་བ་ %s་གསར་བསྐྲུན་འབད་ནི་ལུ་འཐུས་ཤོར་བྱུང་ཡོད། སེལ་འཐུ་ཚུ་མཐུན་སྒྲིག་མིན་འདུག ཐུམ་སྒྲིལ་རྒྱ་བསྐྱེད་ཐོག་ཡིག་འདི་གནམ་མེད་ས་མེད་རིངམ་འདུག ཡིག་སྣོད་ལ་ལུ་ཅིག་ཐུམ་སྒྲིལ་ཡིག་སྣོད་སྡེ་ཚན་`%s'ནང་བརླག་སྟོར་ཞུགས་ནུག འབྱུང་ཁུངས་རྒྱ་བསྐྱེད་ཀྱི་ཐོག་ཡིག་འདི་གནམ་མེད་ས་མེད་རིང་པས། རྩ་འབྲེལ་ཕྱིར་བགྲོད་འབད་ནི་ལུ་འཐུ་ཤོར་བྱུང་ཡོདཔ། འོད་རྟགས་ལེན་མ་ཚུགས། %s་ཁ་ཕྱེ་མ་ཚུགས། %s: %s་ཌི་བི་ཡིག་སྣོད་འདི་ཁ་ཕྱེ་མ་ཚུགས།  མ་ཤེས་ཨེབ་བཙུགས་ཨཱལ་གོ་རི་དམ'%s' མ་ཤེས་པའི་ཐུམ་སྒྲིལ་གི་དྲན་ཐོ། ལག་ལེན:apt-ftparchive [options] command
བརྡ་བཀོད་ཚུ:packages binarypath [overridefile [pathprefix]]
sources srcpath [overridefile [pathprefix]]
          contents path
          release path
          generate config [groups]
          clean config

apt-ftparchive་འདི་གིས་ ཌི་བི་ཡཱན་ཡིག་མཛོད་ཚུ་གི་དོན་ལུ་ ཚིག་ཡིག་གི་ཡིག་སྣོད་ཚུ་བཟོ་བཏོན་འབདཝ་ཨིན། dpkg-scanpackages དང་ dpkg-scansources་གི་དོན་ལུ་ལས་འགན་ཚབ་མ་ཚུ་ལུ་ཆ་ཚང་སྦེ་  རང་བཞིན་གྱི་སྦེ་བཟོ་བཟོཝ་་ནང་ལས་བཟོ་བཏོན་གྱི་བཟོ་རྣམ་ཚུ་ལྷམ་པ་མ་འདྲཝ་སྦེ་ཡོད་མི་ལུ་རྒྱབ་སྐྱོར་འབདཝ་ཨིན།

apt-ftparchive་ འདི་གིས་.debs་གི་རྩ་འབྲེལ་ཅིག་ནང་ལས་ཐུམ་སྒྲིལ་གྱི་ཡིག་སྣོད་ཚུ་བཟོ་བཏོན་འབདཝ་ཨིན། ཐུམ་སྒྲིལ་
 ཡིག་སྣོད་འདི་གི་ནང་ན་ ཐུམ་སྒྲིལ་རེ་རེ་བཞིན་ནང་གི་ཚད་འཛིན་ས་སྒོ་ཚུ་ཆ་མཉམ་གི་ནང་དོན་དང་ ཨེམ་ཌི་༥་དྲྭ་རྟགས། (#)་དང་ཡིག་སྣོད་ཀྱི་ཚད་ཚུ་ཡང་ཡོདཔ་ཨིན། ཟུར་བཞག་ཡིག་སྣོད་འདི་
གཙོ་རིམ་དང་དབྱེ་ཚན་གྱི་གནས་གོང་དེ་བང་བཙོང་འབད་ནི་ལུ་རྒྱབ་སྐྱོར་འབད་ཡོདཔ་ཨིན།

འདི་དང་ཆ་འདྲཝ་སྦེ་ apt-ftparchive་ འདི་གིས་.dscs་གི་རྩ་འབྲེལ་ཅིག་ནང་ལས་འབྱུང་ཁུངས་ཡིག་སྣོད་ཚུ་བཟོ་བཏོན་འབདཝ་ཨིན།
 --source-ཟུར་བཞག་གི་གདམ་ཁ་འདི་ ཨེསི་ཨར་སི་ ཟུར་བཞག་ཡིག་སྣོད་ཅིག་གསལ་བཀོད་འབད་ནི་ལུ་ལག་ལེན་འཐབ་བཐུབ་ཨིན།

'ཐུམ་སྒྲིལ་ཚུ་'་དང་'འབྱུང་ཁུངས་་' བརྡ་བཀོད་ཚུ་རྩ་འབྲེལ་འདི་གི་་རྩ་བ་ནང་ལུ་སྦེ་གཡོག་བཀོལ་དགོཔ་ཨིན། ཟུང་ལྡན་འགྲུལ་ལམ་འདི་གིས་ལོག་རིམ་འཚོལ་ཞིབ་འདི་གི་གཞི་རྟེན་ལུ་དཔག་དགོཔ་ཨིནམ་དང་
ཟུར་བཞག་ཡིག་སྣོད་འདི་ལུ་ཟུར་བཞག་གི་ཟུར་རྟགས་འོང་དགོཔ་ཨིན། འགྲུལ་ལམ་སྔོན་ཚིག་འདི་
ཡོད་པ་ཅིན་ཡིག་སྣོད་མིང་གི་ས་སྒོ་ཚུ་ལུ་འཇུག་སྣོན་འབད་དེ་ཡོདཔ་ཨིན། དཔེར་ན་ ཌི་བི་ཡཱན་ཡིག་མཛོད་ལས་ལག་ལེན་བཟུམ:
apt-ftparchive packages dists/potato/main/binary-i386/ > \
               dists/potato/main/binary-i386/Packages

གདམ་ཁ་ཚུ:
  -h    འདི་གིས་ཚིག་ཡིག་ལུ་གྲོགས་རམ་འབདཝ་ཨིན།
  --md5 ཨེམ་ཌི་༥་ བཟོ་བཏོན་འདི་ཚད་འཛིན་འབདཝ་ཨིན།
  -s=?  འབྱུང་ཁུངས་ཟུར་བཞག་གི་ཡིག་སྣོད།
  -q    ཁུ་སིམ་སིམ།
  -d=?  གདམ་ཁ་ཅན་གྱི་འདྲ་མཛོད་གནད་སྡུད་གཞི་རྟེན་འདི་སེལ་འཐུ་འབད།
  --no-delink འབྲེལ་ལམ་མེད་སྦེ་བཟོ་་ནིའི་རྐྱེན་སེལ་ཐབས་ལམ་འདི་ལྕོགས་ཅན་བཟོ།
  --contents  ནང་དོན་གི་ཡིག་སྣོད་བཟོ་བཏོན་འདི་ཚད་འཛིན་འབད།
  -c=?  འ་ནི་རིམ་སྒྲིག་ཡིག་སྣོད་འདི་ལྷག
  -o=?  མཐུན་སྒྲིག་རིམ་སྒྲིག་གི་གདམ་ཁ་ཅིག་གཞི་སྒྲིག་འབད། ཌབ་ལུ: ཌབ་ལུ:%sསྣོད་ཐོ་འདི་ལྷག་མ་ཚུགས།
 ཌབ་ལུ་ %s སིཊེཊི་འབད་མ་ཚུགས།
 %s་གི་དོན་ལུ་བསྒུག་སྡོད་ཅི་ འདི་འབདཝ་ད་ཕར་མིན་འདུག དྲན་ཚད་སྤྲོད་ནིའི་དོན་ལུ་ རི་ཨེ་ལོཀ་ འཐུས་ཤོར་བྱུང་ཡོད། 
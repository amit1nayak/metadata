$SourceFolder = "P:\resources\youtube\6.mp4"

$ExifTool = "C:\Programming\Image-ExifTool-11.78\Image-ExifTool-11.78\exiftool.pl"

$basicMetadataFilePath = "P:\src\Metadata\mo\28e78611-8dc7-4c86-8d48-3187a0c2a659.json"
$basicMetadataFilePathExif = "P:\src\Metadata\mo\28e78611-8dc7-4c86-8d48-3187a0c2a659_exif.json"
$basicMetadataFilePathXMP = "P:\src\Metadata\mo\28e78611-8dc7-4c86-8d48-3187a0c2a659_xmp.json"
$basicMetadataFilePathDC = "P:\src\Metadata\mo\28e78611-8dc7-4c86-8d48-3187a0c2a659_dc.json"
$basicMetadataFilePathId3 = "P:\src\Metadata\mo\28e78611-8dc7-4c86-8d48-3187a0c2a659_id3.json"

# run: & "p:\src\Scripts\meta-extraction\ExtractDiffStandards.ps1" 

# exif
perl $ExifTool -ImageWidth -ImageHeight -Compression -ImageUniqueID -ImageDescription -ITCH -ISRC -IENG -IART -IART -ISRC -DateTime -ICRD -DateTimeOriginal -GPSLatituteREF -comments -UserComment -IKEY -ISBJ -IGNR -RelatedSoundFile -Copyright  -GPSLongitudeREF -GPSLatitute -GPSLongitude -GPSAltitude -GPSAltitudeRef -charset utf8 -j -json $SourceFolder > $basicMetadataFilePathExif

# xmp
perl $ExifTool -Identifier -album -artist -composer -CreateDate -ModifyDate -genre -Rating -DerivedFrom -History -Ingredients -Certificate -UsageTerms -WebStatement -videoFrameSize -audioCompressor -duration -audioSampleRate -frameRate -trackNumber -charset utf8 -j -json $SourceFolder > $basicMetadataFilePathXMP

# dc
perl $ExifTool -contributor -coverage -creator -date -description -format -identifier -language -publisher -relation -rights -source -subject -title -type -charset utf8 -j -json $SourceFolder > $basicMetadataFilePathDC	

# id3 
perl $ExifTool -RecordingTime -ReleaseTime -TaggingTime -EncodedBy -Lyricist -InvolvedPeople -MusicianCredits -Conductor -InterpretedBy -Picture -Popularimeter -Album -Genre -Copyright -EncodingTime -FileType -FileType -Grouping -Title -Subtitle -Language -Length -Mood -Artist -Band -Publisher -charset utf8 -j -json $SourceFolder > $basicMetadataFilePathId3	

# orginal
perl $ExifTool  -charset utf8 -j -json $SourceFolder > $basicMetadataFilePath

# Deadlock Resource Collector v1.0

# Deadlock install location
$deadlockPath = "G:\SteamLibrary\steamapps\common\Deadlock\"

# Create folder with the current date
$currDate = Get-Date -Format "yyyy-MM-dd"
$artifactSavePath = "patch_" + $currdate
echo "Creating folder $artifactSavePath"
# Use $null to hide the output from terminal (it's ugly)
$null = New-Item -Path "$artifactSavePath" -ItemType Directory

# citadel localization resources
$citadelLocPath = "game\citadel\resource\localization\"

echo "Collecting localization files"
# collect localization files
cp ($deadlockPath + $citadelLocPath + "citadel_attributes\citadel_attributes_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_gc\citadel_gc_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_gc_hero_names\citadel_gc_hero_names_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_gc_mod_names\citadel_gc_mod_names_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_generated_vo\citadel_generated_vo_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_heroes\citadel_heroes_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_main\citadel_main_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_mods\citadel_mods_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_patch_notes\citadel_patch_notes_english.txt") $artifactSavePath
cp ($deadlockPath + $citadelLocPath + "citadel_vdata\accolades\accolades_english.txt") $artifactSavePath

echo "Resource collection complete!"
echo "Output Directory: $artifactSavePath"
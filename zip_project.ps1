Add-Type -AssemblyName System.IO.Compression.FileSystem
$sourceDirectory = "C:\Users\SRUTHI\Desktop\aiac-project"
$archiveFileName = "C:\Users\SRUTHI\Desktop\aiac-project.zip"
if (Test-Path $archiveFileName) { Remove-Item $archiveFileName }
$zip = [System.IO.Compression.ZipFile]::Open($archiveFileName, 'Create')
Get-ChildItem -Path $sourceDirectory -Recurse -File | Where-Object { $_.FullName -notmatch '\\node_modules\\' -and $_.FullName -notmatch '\\\.git\\' } | ForEach-Object {
    $relativePath = $_.FullName.Substring($sourceDirectory.Length + 1)
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, $relativePath)
}
$zip.Dispose()
Write-Output "Zip file created successfully at $archiveFileName"

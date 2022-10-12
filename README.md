# xpath-bash-script
 script bash to exec Xpath command


## Installation

download the script to your file system

## Usage

in a bash cmd windows:
```bash
./script-xpath.sh file.xpath file2.xml
```
file.xpath (can be a .txt file) is the file witch contains xpath commands. you can write comment by starting the line with "##"
write your command line by line without quotes
you can have empty lines, they will be returned as is

file2.xml is the xml file where the Xpath commands are executed

if the files are in different folders you can add path before files



if it doesn't work make sure that your are in a a bash cmd in the correct folder and use the following command before retry
```bash
chmod +x script-xpath.sh
```

## Contributing

Pull request are welcome




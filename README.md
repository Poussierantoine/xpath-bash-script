# xpath-bash-script
 script bash to exec Xpath command


## Installation

Download the script to your file system

## Usage

In a bash cmd windows:
```bash
./script-xpath.sh file.xpath file2.xml
```
*file.xpath* (can be a .txt file) is the file witch contains xpath commands.  
You can write comment by starting the line with "##"  
Write your command line by line without quotes  
You can have empty lines, they will be returned as is

*file2.xml* is the xml file where the Xpath commands are executed

If the files are in different folders you can add path before files



If it doesn't work make sure that your are in a a bash cmd in the correct folder and use the following command before retry
```bash
chmod +x script-xpath.sh
```

## Contributing

Pull request are welcome




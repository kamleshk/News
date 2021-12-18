# News
This project is demo project for newyork time apis news feed. Generally this app shows news of 30 days 
## Installation

Install News-project with Xcode

```bash
	1. download file from github
	2. unarchive file and double click News folder
	3. double click `News.xcodepro`
```
		
## Run Locally

Clone the project using 

```bash
	git clone https://github.com/kamleshk/News.git
```
Runing code from project file 
```bash
	1. download file from github
	2. unarchive file and double click News folder
	3. double click `News.xcodepro`
	4. select any simulator
	5. tap on play icon on left corner of Xcode
```

Opening code using Terminal

```bash
	Go to the project directory using
	

	cd ~/News
	open *.xcodeproj



	Above command will launched project in Xcode.
	Click on play icon on top left of xcode

```



## API Reference

#### Get all items


```https
	GET https://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=sample-key
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api-key` | `string` | **Required**. ZEvwoBqEpEhNA3qABBFfqK0tjEpaxn8y |



``


More help:- 
https://developer.nytimes.com


## Running Tests

To run tests, run the following command

```bash
         **** test run ****
	1. go to test navigator
	2. tap on dimond icon which apper just next to target
	
```
```bash
	 **** code coverage ****
	
	1. Enable code covrage option in xcode (check in edit schema)
	2. Tap on report navigator
	3. option will come  coverage
	4. tap on covarage 
	5. right hand it will show all test coverage
	
```

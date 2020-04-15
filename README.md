# swot-simple

![Latest](https://github.com/hearthmates/swot-simple/workflows/Latest/badge.svg)     Swot Database Last Updated: `2020-04-15`

Simple & fast JavaScript implementation of [Swot](https://github.com/JetBrains/swot)

* compiles swot data into a single json file, so bootup is fast
* passes all of Swot's tests.
* fast

## Install

    npm install hearthmates/swot-simple

## Build 
Swot-Simple works right out of the box. However, you may want to manually update or rebuild the `swot-data.json` file, which contains all the university domain mappings we need. For this, you'll need to run `npm run build` from the swot-simple directory. From your node project directory for example:

    npm --prefix ./node_modules/@hearthmates/swot-simple/ run build

For your convenience, the build will also produce a browser-compatible bundle called `swot-simple.json`, just drop it into your html and you're done.

    <script src="simple-swot.js"></script>

## Methods

### `isAcademic(email)`

Check an email for whether it is from an educational domain or not.


### Parameters

| parameter | type   | description          |
| --------- | ------ | -------------------- |
| `email`   | String | a full email address |


### Example

```js
swot.isAcademic('me@gmail.com'); // false
swot.isAcademic('lee@harvard.edu'); // true
```


**Returns** `boolean`, whether the email is educational


### `getInstitutionName(email)`

Check an email for whether it is from an educational domain or not,
and if it is a known educational institution, return its name.


### Parameters

| parameter | type   | description          |
| --------- | ------ | -------------------- |
| `email`   | String | a full email address |


### Example

```js
swot.getInstitutionName('lreilly@cs.strath.ac.uk');
// "University of Strathclyde"
```


**Returns** `boolean,String`, false, if the email is not educational. otherwise, a string with the institution name for the domain.


# Link Plugin for [DocPad](http://docpad.org)

[![PayPayl donate button](http://img.shields.io/paypal/donate.png?color=yellow)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=HRXZXEADXLYT8 "Donate once-off to this project using Paypal")
[![Flattr donate button](http://img.shields.io/flattr/donate.png?color=yellow)](https://flattr.com/submit/auto?user_id=ole.ersoy&url=https://github.com/oleersoy/docpad-plugin-link.git&title=docpad-plugin-link&language=coffeescript&tags=github&category=software)

## Summary

Take the document's `id` and generate the corresponding HTML link.

## Purpose

Prevents the breaking of links when a document is moved to a different directory, 
or gets renamed. 
Also keeps links <abbr title="Don't Repeat Yourself">DRY</abbr>, 
since the link title and text is pulled from the document's meta data.

## Install

```
npm install --save docpad-plugin-link
```

## Install for testing

```
git clone https://github.com/oleersoy/docpad-plugin-link.git
cd docpad-plugin-link
npm install
make compile
```

## Test

```
make test
```

## Configuration

Override the following defaults when necessary:

```coffeescript
# ...
{
	templateData:
		site:
			url: 'http://localhost:9778/base'
}
# ...
```

## Examples

Run the tests to see the below executed.

|Document Location				|Document ID		|Document title							| Call															| Returned	|
| ---							| ---				| ---									| ---															| ---
| `root_document.md.eco`		| 1					| Root Meta Data Title for 1			| `@link(1)`													| `<%- @link(1)%>`	|
| `root_document.md.eco`		| 1					| Root Meta Data Title for 1			| `@link(1, {title: "Custom Title 1"})`							| `<%- @link(1, {title: "Custom Title 1"})%>`	|
| `root_document.md.eco`		| 1					| Root Meta Data Title for 1			| `@link(1, {text: "Custom Text 1"})`							| `<%- @link(1, {text: "Custom Text 1"})%>`	|
| `root_document.md.eco`		| 1					| Root Meta Data Title for 1			| `@link(1, {title: "Custom Title 1", text: " Custom Text 1"})`	| `<%- @link(1, {title: "Custom Title 1", text: "Custom Text 1"})%>`|
| `sub/sub_document.md.eco`		| 2					| Sub Meta Data Title for 2				| `@link(2)`													| `<%- @link(2)%>`	|
| `sub/sub_document.md.eco`		| 2					| Sub Meta Data Title for 2				| `@link(2, {title: "Custom Title 2"})`							| `<%- @link(2, {title: "Custom Title 2"})%>`	|
| `sub/sub_document.md.eco`		| 2					| Sub Meta Data Title for 2				| `@link(2, {text: "Custom Text 2"})`							| `<%- @link(2, {text: "Custom Text 2"})%>`	|
| `sub/sub_document.md.eco`		| 2					| Sub Meta Data Title for 2				| `@link(2, {title: "Custom Title 2", text: " Custom Text 2"})`	| `<%- @link(2, {title: "Custom Title 2", text: "Custom Text 2"})%>`	|

## License
See [License.md](License.md)
<br/>Copyright © 2013+ Ole Ersoy

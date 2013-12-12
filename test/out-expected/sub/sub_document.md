# @document.url = /sub/sub_document.md
# @site.url = http://localhost:9778/base

<a href='http://localhost:9778/base/root_document.md' title='Root Meta Data Title for 1'>Root Meta Data Title for 1</a>
<a href='http://localhost:9778/base/root_document.md' title='Root Meta Data Title for 1'>Custom Text 1</a>
<a href='http://localhost:9778/base/root_document.md' title='Custom Title 1'>Root Meta Data Title for 1</a>
<a href='http://localhost:9778/base/root_document.md' title='Custom Title 1'>Custom Text 1</a>
<a href='http://localhost:9778/base/sub/sub_document.md' title='Sub Meta Data Title for 2'>Sub Meta Data Title for 2</a>
<a href='http://localhost:9778/base/sub/sub_document.md' title='Sub Meta Data Title for 2'>Custom Text 2</a>
<a href='http://localhost:9778/base/sub/sub_document.md' title='Custom Title 2'>Sub Meta Data Title for 2</a>
<a href='http://localhost:9778/base/sub/sub_document.md' title='Custom Title 2'>Custom Text 2</a>

|Documents Location				|Document ID				|Document title							| Call															| Returned	|
| ---							| ---						| ---									| ---															| ---
| root_document.md.eco			| 1							| Root Meta Data Title for 1			| @link(1)														| `<a href='http://localhost:9778/base/root_document.md' title='Root Meta Data Title for 1'>Root Meta Data Title for 1</a>`|
| root_document.md.eco			| 1							| Root Meta Data Title for 1			| @link(1, {title: "Custom Title 1"})							| `<a href='http://localhost:9778/base/root_document.md' title='Custom Title 1'>Root Meta Data Title for 1</a>`|
| root_document.md.eco			| 1							| Root Meta Data Title for 1			| @link(1, {text: "Custom Text 1"})								| `<a href='http://localhost:9778/base/root_document.md' title='Root Meta Data Title for 1'>Custom Text 1</a>`|
| root_document.md.eco			| 1							| Root Meta Data Title for 1			| @link(1, {title: "Custom Title 1", text: " Custom Text 1"})	| `<a href='http://localhost:9778/base/root_document.md' title='Custom Title 1'>Custom Text 1</a>`|
| sub/sub_document.md.eco		| 2							| Sub Meta Data Title for 2				| @link(2)														| `<a href='http://localhost:9778/base/sub/sub_document.md' title='Sub Meta Data Title for 2'>Sub Meta Data Title for 2</a>`|
| sub/sub_document.md.eco		| 2							| Sub Meta Data Title for 2				| @link(2, {title: "Custom Title 2"})							| `<a href='http://localhost:9778/base/sub/sub_document.md' title='Custom Title 2'>Sub Meta Data Title for 2</a>`|
| sub/sub_document.md.eco		| 2							| Sub Meta Data Title for 2				| @link(2, {text: "Custom Text 2"})								| `<a href='http://localhost:9778/base/sub/sub_document.md' title='Sub Meta Data Title for 2'>Custom Text 2</a>`|
| sub/sub_document.md.eco		| 2							| Sub Meta Data Title for 2				| @link(2, {title: "Custom Title 2", text: " Custom Text 2"})	| `<a href='http://localhost:9778/base/sub/sub_document.md' title='Custom Title 2'>Custom Text 2</a>`|
Command Line Options
	for node command
модули для терминала
	TTY
		modeule tty //const tty = require('tty');
			class tty.ReadStream - наследник net.Socket, - по умолчанию process.stdin - объект этого класса
			class tty.WriteStream - наследник net.Socket, - по умолчанию process.stdout, process.stderr - объект этого класса
	Readline
		module readline // const readline = require('readline');
			... для чтения строки за строкой
	REPL
		module repl // const repl = require('repl');
			... для создания интерактивной командной строки

Globals
	Javascript itself
		Standard
			Value properties
				Infinity
				NaN
				undefined
				null literal
			Function properties
				eval()
				isFinite()
				isNaN()
				parseFloat()
				parseInt()
				decodeURI()
				decodeURIComponent()
				encodeURI()
				encodeURIComponent()
			Fundamental objects
				Object
				Function
				Boolean
				Symbol
				Error
					EvalError
					InternalError
					RangeError
					ReferenceError
					SyntaxError
					TypeError
					URIError
			Numbers and dates
				Number
				Math
				Date
			Text processing
				String
				RegExp
			JSON
		Array
			[element0, element1, ..., elementN]
			new Array(element0, element1[, ...[, elementN]])
			new Array(arrayLength)
			
			Array.isArray()
			Array.from()
			Array.of()
			Array.prototype.length
			
			Array.prototype.fill()			(value[, start = 0[, end = this.length]])
			Array.prototype.splice()		(start, deleteCount[, item1[, item2[, ...]]])
			Array.prototype.pop()			()
			Array.prototype.push()			(element1, ..., elementN)
			Array.prototype.shift()			()
			Array.prototype.unshift()		([element1[, ...[, elementN]]])
			Array.prototype.sort()			([compareFunction])
			Array.prototype.reverse()		()
			Array.prototype.copyWithin()	(target[, start[, end]])
			Accessor methods
				Array.prototype.slice()
				Array.prototype.join()
				Array.prototype.concat()
				Array.prototype.indexOf()
				Array.prototype.lastIndexOf()
				Array.prototype.includes() 
				Array.prototype.toSource() 
				Array.prototype.toString()
				Array.prototype.toLocaleString()
			Iteration methods
				Array.prototype.forEach()
				Array.prototype.entries()
				Array.prototype.every()
				Array.prototype.some()
				Array.prototype.find()
				Array.prototype.findIndex()
				Array.prototype.keys()
				Array.prototype.filter()
				Array.prototype.map()
				Array.prototype.reduce()
				Array.prototype.reduceRight()
				Array.prototype.values()
				Array.prototype[@@iterator]()
		Raw data
			ArrayBuffer
				new ArrayBuffer(length)
				ArrayBuffer.isView(arg)
				ArrayBuffer.prototype.byteLength Read only
				ArrayBuffer.prototype.slice()
			DataView
				new DataView(buffer [, byteOffset [, byteLength]])
				DataView.prototype.buffer Read only
				DataView.prototype.byteLength Read only
				DataView.prototype.byteOffset Read only
				
				DataView.prototype.getInt8()
				DataView.prototype.getUint8()
				DataView.prototype.getInt16()
				DataView.prototype.getUint16()
				DataView.prototype.getInt32()
				DataView.prototype.getUint32()
				DataView.prototype.getFloat32()
				DataView.prototype.getFloat64()
				DataView.prototype.setInt8()
				DataView.prototype.setUint8()
				DataView.prototype.setInt16()
				DataView.prototype.setUint16()
				DataView.prototype.setInt32()
				DataView.prototype.setUint32()
				DataView.prototype.setFloat32()
				DataView.prototype.setFloat64()
			Int8Array
			Uint8Array
			Uint8ClampedArray
			Int16Array
			Uint16Array
			Int32Array
			Uint32Array
			Float32Array
			Float64Array
			TypedArray (one of Int8Array Uint8Array Uint8ClampedArray Int16Array Uint16Array Int32Array Uint32Array Float32Array Float64Array)
				new TypedArray(buffer [, byteOffset [, length]]);

				new TypedArray(length);
				new TypedArray(typedArray);
				new TypedArray(object); === TypedArray.from()
				TypedArray.BYTES_PER_ELEMENT
				TypedArray.length ===3
				TypedArray.name
				TypedArray.from()
				TypedArray.of()
				
				TypedArray.prototype.buffer Read only
				TypedArray.prototype.byteLength Read only
				TypedArray.prototype.byteOffset Read only
				TypedArray.prototype.length Read only
				
				TypedArray.prototype.subarray()
				TypedArray.prototype.set()

				TypedArray.prototype.fill()
				TypedArray.prototype.reverse()
				TypedArray.prototype.sort()
				TypedArray.prototype.copyWithin()
				Accessor methods
					TypedArray.prototype.slice()
					TypedArray.prototype.join()
					TypedArray.prototype.indexOf()
					TypedArray.prototype.lastIndexOf()
					TypedArray.prototype.includes() 
					TypedArray.prototype.toString()
					TypedArray.prototype.toLocaleString()
				Iteration methods
					TypedArray.prototype.forEach()
					TypedArray.prototype.entries()
					TypedArray.prototype.every()
					TypedArray.prototype.some()
					TypedArray.prototype.find()
					TypedArray.prototype.findIndex()
					TypedArray.prototype.keys()
					TypedArray.prototype.filter()
					TypedArray.prototype.map()
					TypedArray.prototype.reduce()
					TypedArray.prototype.reduceRight()
					TypedArray.prototype.values()
					TypedArray.prototype[@@iterator]()
		Control abstraction objects
			Promise
			Generator
			GeneratorFunction
		Keyed collections
			Map
			Set
			WeakMap
			WeakSet
		Reflection
			Reflect
			Proxy
		Internationalization
			Intl
			Intl.Collator
			Intl.DateTimeFormat
			Intl.NumberFormat
		Other
			arguments
	Class: Buffer
	__dirname	local to each module
	__filename	local to each module
	
	// var something - local to each module
	global
	module
	exports = module.exports
	require()
	require.cache
	require.extensions
	require.resolve()
	
	console
	process
	setImmediate(callback[, arg][, ...])
	setInterval(callback, delay[, arg][, ...])
	setTimeout(callback, delay[, arg][, ...])
	clearImmediate(immediateObject)
	clearInterval(intervalObject)
	clearTimeout(timeoutObject)

Modules
Assertion Testing
Errors
Debugger

Console
	global object console (by class Console)
Events
Buffer
Stream
OS
Path
File System

Utilities


Child Processes
Cluster

UDP/Datagram
URL
DNS
Domain
Net
HTTP
HTTPS

Punycode
Query Strings
String Decoder
Timers

Process
V8
VM
C/C++ Addons

ZLIB
Crypto
TLS/SSL

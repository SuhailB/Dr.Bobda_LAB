/******************************************************************************
Copyright 2017 Gnarly Grey LLC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
******************************************************************************/

 // 'mail' 64x64
const unsigned char mailBM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xf0, 0x00, 
	0x00, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x00, 
	0x00, 0x0f, 0x80, 0x00, 0x00, 0x01, 0xf0, 0x00, 0x00, 0x0d, 0xc0, 0x00, 0x00, 0x03, 0xb0, 0x00, 
	0x00, 0x0c, 0xe0, 0x00, 0x00, 0x07, 0x30, 0x00, 0x00, 0x0c, 0x70, 0x00, 0x00, 0x0e, 0x30, 0x00, 
	0x00, 0x0c, 0x38, 0x00, 0x00, 0x1c, 0x30, 0x00, 0x00, 0x0c, 0x1c, 0x00, 0x00, 0x38, 0x30, 0x00, 
	0x00, 0x0c, 0x0e, 0x00, 0x00, 0x70, 0x30, 0x00, 0x00, 0x0c, 0x07, 0x00, 0x00, 0xe0, 0x30, 0x00, 
	0x00, 0x0c, 0x03, 0x80, 0x01, 0xc0, 0x30, 0x00, 0x00, 0x0c, 0x01, 0xc0, 0x03, 0x80, 0x30, 0x00, 
	0x00, 0x0c, 0x00, 0xe0, 0x07, 0x00, 0x30, 0x00, 0x00, 0x0c, 0x00, 0x70, 0x0e, 0x00, 0x30, 0x00, 
	0x00, 0x0c, 0x00, 0x78, 0x1e, 0x00, 0x30, 0x00, 0x00, 0x0c, 0x00, 0xfc, 0x3f, 0x00, 0x30, 0x00, 
	0x00, 0x0c, 0x01, 0xce, 0x73, 0x80, 0x30, 0x00, 0x00, 0x0c, 0x03, 0x87, 0xe1, 0xc0, 0x30, 0x00, 
	0x00, 0x0c, 0x07, 0x03, 0xc0, 0xe0, 0x30, 0x00, 0x00, 0x0c, 0x0e, 0x00, 0x00, 0x70, 0x30, 0x00, 
	0x00, 0x0c, 0x1c, 0x00, 0x00, 0x38, 0x30, 0x00, 0x00, 0x0c, 0x38, 0x00, 0x00, 0x1c, 0x30, 0x00, 
	0x00, 0x0c, 0x70, 0x00, 0x00, 0x0e, 0x30, 0x00, 0x00, 0x0c, 0xe0, 0x00, 0x00, 0x07, 0x30, 0x00, 
	0x00, 0x0d, 0xc0, 0x00, 0x00, 0x03, 0xb0, 0x00, 0x00, 0x0f, 0x80, 0x00, 0x00, 0x01, 0xf0, 0x00, 
	0x00, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xf0, 0x00, 
	0x00, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

 // 'msg' 64x64
const unsigned char msgBM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0x07, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xf8, 0x1f, 0xf8, 0x00, 0x00, 
	0x00, 0x00, 0x7f, 0x00, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x00, 0x3f, 0x00, 0x00, 
	0x00, 0x03, 0xf0, 0x00, 0x00, 0x0f, 0xc0, 0x00, 0x00, 0x07, 0xc0, 0x00, 0x00, 0x03, 0xe0, 0x00, 
	0x00, 0x0f, 0x80, 0x00, 0x00, 0x01, 0xf0, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x00, 
	0x00, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x3c, 0x00, 
	0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00, 0x1e, 0x00, 
	0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x70, 0x1f, 0xff, 0xff, 0xf8, 0x0e, 0x00, 
	0x00, 0xf0, 0x1f, 0xff, 0xff, 0xf8, 0x0f, 0x00, 0x00, 0xe0, 0x0f, 0xff, 0xff, 0xf0, 0x07, 0x00, 
	0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 
	0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 
	0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 
	0x00, 0xf0, 0x0f, 0xff, 0xff, 0xf0, 0x0f, 0x00, 0x00, 0x70, 0x1f, 0xff, 0xff, 0xf8, 0x0e, 0x00, 
	0x00, 0x78, 0x0f, 0xff, 0xff, 0xf0, 0x1e, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x00, 
	0x00, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x3c, 0x00, 0x00, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 
	0x00, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x0f, 0x80, 0x00, 0x00, 0x00, 0xf0, 0x00, 
	0x00, 0x07, 0xc0, 0x00, 0x00, 0x03, 0xe0, 0x00, 0x00, 0x03, 0xe0, 0x00, 0x00, 0x07, 0xc0, 0x00, 
	0x00, 0x01, 0xf8, 0x00, 0x00, 0x1f, 0x80, 0x00, 0x00, 0x00, 0x7e, 0x00, 0x00, 0x3e, 0x00, 0x00, 
	0x00, 0x00, 0x3f, 0xe0, 0x00, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xc0, 0x78, 0x00, 0x00, 
	0x00, 0x00, 0x03, 0xff, 0xe0, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xe1, 0xe0, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xc3, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x87, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x0f, 0x9f, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0x7e, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x3f, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xf0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x7f, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

 // 'walk' 64x64
const unsigned char walkBM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x83, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0x01, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x01, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x0e, 0x01, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x01, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x0e, 0x01, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x01, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0x83, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x01, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfc, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x1f, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x7f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xf0, 0x3c, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x03, 0xc0, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x80, 0x1c, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x0f, 0x00, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1e, 0x00, 0x1e, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x7c, 0x30, 0x1f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0xf0, 0x1f, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0xe1, 0xf0, 0x1f, 0x80, 0x00, 0x00, 0x00, 0x00, 0xe3, 0xf0, 0x1b, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0xe7, 0xf0, 0x39, 0xc0, 0x00, 0x00, 0x00, 0x00, 0xcf, 0x60, 0x39, 0xe0, 0x00, 0x00, 
	0x00, 0x01, 0xce, 0xe0, 0x38, 0xfc, 0x00, 0x00, 0x00, 0x01, 0xce, 0xe0, 0x3c, 0x7f, 0x00, 0x00, 
	0x00, 0x01, 0xcc, 0xe0, 0x7e, 0x1f, 0xc0, 0x00, 0x00, 0x01, 0xdc, 0xe0, 0x7f, 0x83, 0xf0, 0x00, 
	0x00, 0x01, 0x9c, 0xc0, 0x77, 0xf0, 0xf0, 0x00, 0x00, 0x03, 0x9c, 0xc0, 0x71, 0xfc, 0x38, 0x00, 
	0x00, 0x03, 0x9c, 0xc0, 0x60, 0x7f, 0xf8, 0x00, 0x00, 0x03, 0x99, 0xe0, 0xe0, 0x0f, 0xf0, 0x00, 
	0x00, 0x03, 0xb9, 0xe0, 0xe0, 0x03, 0xe0, 0x00, 0x00, 0x03, 0xf9, 0xf0, 0x70, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0xf1, 0xf0, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe3, 0xf8, 0x38, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x03, 0xb8, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x9c, 0x1c, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x03, 0x9e, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x0e, 0x0e, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x07, 0x0f, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x1f, 0x87, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0x06, 0x1f, 0x83, 0x80, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x1d, 0xc1, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x0e, 0x39, 0xe1, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x38, 0xe0, 0xe0, 0x00, 0x00, 
	0x00, 0x00, 0x3c, 0x70, 0x70, 0x70, 0x00, 0x00, 0x00, 0x00, 0x38, 0x70, 0x78, 0x70, 0x00, 0x00, 
	0x00, 0x00, 0x70, 0xe0, 0x38, 0x38, 0x00, 0x00, 0x00, 0x00, 0xf1, 0xe0, 0x1c, 0x3c, 0x00, 0x00, 
	0x00, 0x00, 0xe1, 0xc0, 0x1c, 0x1c, 0x00, 0x00, 0x00, 0x01, 0xc3, 0x80, 0x0e, 0x0e, 0x00, 0x00, 
	0x00, 0x03, 0xc7, 0x00, 0x07, 0x0e, 0x00, 0x00, 0x00, 0x03, 0x8f, 0x00, 0x07, 0x07, 0x00, 0x00, 
	0x00, 0x07, 0x0e, 0x00, 0x03, 0x87, 0x00, 0x00, 0x00, 0x07, 0x1c, 0x00, 0x03, 0xc3, 0x00, 0x00, 
	0x00, 0x07, 0x38, 0x00, 0x01, 0xe7, 0x00, 0x00, 0x00, 0x07, 0xf8, 0x00, 0x00, 0xff, 0x00, 0x00, 
	0x00, 0x03, 0xf0, 0x00, 0x00, 0x7e, 0x00, 0x00, 0x00, 0x01, 0xc0, 0x00, 0x00, 0x3c, 0x00, 0x00
};

 // 'call' 64x64
const unsigned char callBM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3c, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x7e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x03, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x7f, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xf0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xfc, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x1f, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x07, 0xff, 0x80, 0x78, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xe0, 0xfc, 0x00, 0x00, 
	0x00, 0x00, 0x01, 0xff, 0xf9, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xff, 0xc0, 0x00, 
	0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0x80, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xfe, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x3f, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xe0, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

 // 'call' 128x128
const unsigned char call2BM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x07, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x1f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x3f, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x7f, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0x80, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0xc0, 0x00, 0x1f, 0xc0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xff, 0xf0, 0x00, 0x3f, 0xe0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0xf8, 0x00, 0x7f, 0xf0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xfe, 0x00, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xff, 0x01, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xff, 0xe3, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xff, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xff, 0xfe, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

 // 'loc' 64x64
const unsigned char locBM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x1f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x07, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x1f, 0xff, 0xff, 0xf8, 0x00, 0x00, 
	0x00, 0x00, 0x3f, 0xff, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0xfe, 0x00, 0x00, 
	0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0xff, 0xff, 0x80, 0x00, 
	0x00, 0x03, 0xff, 0xf0, 0x0f, 0xff, 0xc0, 0x00, 0x00, 0x07, 0xff, 0x80, 0x01, 0xff, 0xe0, 0x00, 
	0x00, 0x0f, 0xfe, 0x00, 0x00, 0x7f, 0xf0, 0x00, 0x00, 0x1f, 0xfc, 0x00, 0x00, 0x3f, 0xf8, 0x00, 
	0x00, 0x1f, 0xf8, 0x00, 0x00, 0x1f, 0xf8, 0x00, 0x00, 0x3f, 0xf0, 0x00, 0x00, 0x0f, 0xfc, 0x00, 
	0x00, 0x3f, 0xe0, 0x00, 0x00, 0x07, 0xfc, 0x00, 0x00, 0x3f, 0xc0, 0x00, 0x00, 0x03, 0xfc, 0x00, 
	0x00, 0x7f, 0xc0, 0x07, 0xe0, 0x03, 0xfe, 0x00, 0x00, 0x7f, 0x80, 0x1f, 0xf8, 0x01, 0xfe, 0x00, 
	0x00, 0x7f, 0x80, 0x3f, 0xfc, 0x01, 0xfe, 0x00, 0x00, 0xff, 0x80, 0x7f, 0xfe, 0x01, 0xff, 0x00, 
	0x00, 0xff, 0x00, 0x7f, 0xfe, 0x00, 0xff, 0x00, 0x00, 0xff, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 
	0x00, 0xff, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 0x00, 0xff, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 
	0x00, 0xff, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 0x00, 0xff, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 
	0x00, 0xff, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 0x00, 0xff, 0x00, 0x7f, 0xfe, 0x00, 0xff, 0x00, 
	0x00, 0xff, 0x80, 0x7f, 0xfe, 0x01, 0xff, 0x00, 0x00, 0x7f, 0x80, 0x3f, 0xfc, 0x01, 0xfe, 0x00, 
	0x00, 0x7f, 0x80, 0x1f, 0xf8, 0x01, 0xfe, 0x00, 0x00, 0x7f, 0xc0, 0x07, 0xe0, 0x03, 0xfe, 0x00, 
	0x00, 0x7f, 0xc0, 0x00, 0x00, 0x03, 0xfe, 0x00, 0x00, 0x3f, 0xe0, 0x00, 0x00, 0x07, 0xfc, 0x00, 
	0x00, 0x3f, 0xf0, 0x00, 0x00, 0x0f, 0xfc, 0x00, 0x00, 0x1f, 0xf8, 0x00, 0x00, 0x1f, 0xf8, 0x00, 
	0x00, 0x1f, 0xfc, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x1f, 0xfe, 0x00, 0x00, 0x7f, 0xf8, 0x00, 
	0x00, 0x0f, 0xff, 0x80, 0x01, 0xff, 0xf0, 0x00, 0x00, 0x0f, 0xff, 0xf0, 0x0f, 0xff, 0xf0, 0x00, 
	0x00, 0x07, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 0x00, 0x07, 0xff, 0xff, 0xff, 0xff, 0xe0, 0x00, 
	0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x03, 0xff, 0xff, 0xff, 0xff, 0xc0, 0x00, 
	0x00, 0x01, 0xff, 0xff, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 
	0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x7f, 0xff, 0xff, 0xfe, 0x00, 0x00, 
	0x00, 0x00, 0x3f, 0xff, 0xff, 0xfc, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xff, 0xff, 0xfc, 0x00, 0x00, 
	0x00, 0x00, 0x1f, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xf0, 0x00, 0x00, 
	0x00, 0x00, 0x0f, 0xff, 0xff, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x07, 0xff, 0xff, 0xe0, 0x00, 0x00, 
	0x00, 0x00, 0x03, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x01, 0xff, 0xff, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x7f, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xfc, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x1f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x07, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 0x00, 0x00, 0x00
};

 // 'timer' 64x64
const unsigned char timerBM [] PROGMEM = {
	0x00, 0x00, 0x00, 0x0f, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x1f, 0x00, 
	0x00, 0x00, 0x03, 0xff, 0xff, 0x80, 0x3f, 0x80, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xe0, 0x7f, 0xc0, 
	0x00, 0x00, 0x3f, 0xff, 0xff, 0xf8, 0xff, 0xe0, 0x00, 0x00, 0xff, 0xc0, 0x07, 0xff, 0xff, 0xe0, 
	0x00, 0x01, 0xfe, 0x00, 0x00, 0xff, 0xff, 0xf0, 0x00, 0x03, 0xf8, 0x00, 0x00, 0x3f, 0xff, 0xf0, 
	0x00, 0x07, 0xe0, 0x00, 0x00, 0x0f, 0xff, 0xe0, 0x00, 0x0f, 0x80, 0x03, 0x80, 0x03, 0xff, 0xc0, 
	0x00, 0x1f, 0x00, 0x03, 0x80, 0x01, 0xff, 0x80, 0x00, 0x3e, 0x00, 0x03, 0x80, 0x00, 0xff, 0x00, 
	0x00, 0x7c, 0x00, 0x03, 0x80, 0x00, 0x7e, 0x00, 0x00, 0xf8, 0x00, 0x03, 0x80, 0x00, 0x3e, 0x00, 
	0x00, 0xf0, 0x00, 0x03, 0x80, 0x00, 0x1e, 0x00, 0x01, 0xf0, 0x00, 0x03, 0x80, 0x00, 0x1f, 0x00, 
	0x01, 0xe0, 0x00, 0x03, 0x80, 0x00, 0x0f, 0x00, 0x03, 0xe0, 0x00, 0x03, 0x80, 0x00, 0x0f, 0x80, 
	0x03, 0xc0, 0x00, 0x03, 0x80, 0x00, 0x07, 0x80, 0x03, 0xc0, 0x00, 0x03, 0x80, 0x00, 0x07, 0xc0, 
	0x07, 0x80, 0x00, 0x03, 0x80, 0x00, 0x03, 0xc0, 0x07, 0x80, 0x00, 0x03, 0x80, 0x00, 0x03, 0xc0, 
	0x07, 0x80, 0x00, 0x03, 0x80, 0x00, 0x03, 0xc0, 0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 
	0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 
	0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 
	0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 0x0f, 0x00, 0x00, 0x03, 0x80, 0x00, 0x01, 0xe0, 
	0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xe0, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xe0, 
	0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xe0, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xe0, 
	0x07, 0x80, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 0x07, 0x80, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 
	0x07, 0x80, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 0x03, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x07, 0xc0, 
	0x03, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x07, 0x80, 0x03, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x80, 
	0x01, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x01, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x1f, 0x00, 
	0x00, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x1e, 0x00, 0x00, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x3e, 0x00, 
	0x00, 0x7c, 0x00, 0x00, 0x00, 0x00, 0x7c, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00, 0x00, 0xf8, 0x00, 
	0x00, 0x1f, 0x00, 0x00, 0x00, 0x01, 0xf0, 0x00, 0x00, 0x0f, 0x80, 0x00, 0x00, 0x03, 0xe0, 0x00, 
	0x00, 0x07, 0xe0, 0x00, 0x00, 0x0f, 0xc0, 0x00, 0x00, 0x03, 0xf8, 0x00, 0x00, 0x3f, 0x80, 0x00, 
	0x00, 0x01, 0xfe, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0x00, 0xff, 0xc0, 0x07, 0xfe, 0x00, 0x00, 
	0x00, 0x00, 0x3f, 0xff, 0xff, 0xf8, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0xff, 0xe0, 0x00, 0x00, 
	0x00, 0x00, 0x01, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3f, 0xf8, 0x00, 0x00, 0x00
};

//
//  SpotifyApplicationKey.m
//  Spotifycast
//
//  Created by Rob Skillington on 5/08/13.
//  Copyright (c) 2013 Pine Street Apps. All rights reserved.
//

#import "SpotifyApplicationKey.h"

static const uint8_t g_appkey[] = {
	0x01, 0x5E, 0x19, 0xD3, 0xE5, 0x95, 0xBA, 0x02, 0xD4, 0x75, 0x27, 0x07, 0xEA, 0x23, 0x47, 0x3B,
	0x58, 0xA4, 0xB8, 0xAD, 0x6E, 0x82, 0xCA, 0x7B, 0x21, 0xC5, 0xA5, 0x4C, 0xF8, 0xD5, 0x01, 0xFE,
	0x36, 0xFE, 0x64, 0x11, 0x61, 0x37, 0x95, 0x83, 0xDC, 0x13, 0xCB, 0xBB, 0x18, 0xB9, 0xDE, 0xBD,
	0x93, 0x83, 0x07, 0x51, 0xC2, 0xDA, 0xB2, 0x0D, 0x9A, 0x91, 0xC4, 0x7E, 0x28, 0xFE, 0x89, 0x5A,
	0x53, 0xA7, 0xF8, 0xAF, 0x16, 0x06, 0xFA, 0xC8, 0xF4, 0xAA, 0x62, 0xA4, 0x75, 0x04, 0xDE, 0x15,
	0x00, 0x9C, 0x98, 0xEC, 0x09, 0x23, 0x06, 0x94, 0x15, 0xD1, 0xB8, 0xB0, 0xBE, 0x8E, 0x8D, 0x18,
	0x3B, 0x00, 0x8A, 0x06, 0x69, 0xE4, 0x74, 0x96, 0x88, 0xA4, 0xB1, 0x47, 0x71, 0x3C, 0xBA, 0x77,
	0x02, 0x02, 0x74, 0xBB, 0xB9, 0xA2, 0xBA, 0x05, 0xDA, 0x24, 0x1B, 0xCF, 0x7B, 0xF8, 0xCD, 0x0A,
	0x55, 0x3C, 0x94, 0xB3, 0xC3, 0x3A, 0x5B, 0x9D, 0xE2, 0x28, 0x7B, 0xE5, 0x7D, 0x4B, 0x03, 0xD1,
	0x32, 0xB3, 0x6C, 0x92, 0xFB, 0xAA, 0x02, 0xB2, 0x4C, 0x29, 0xA4, 0xB3, 0x0C, 0xD1, 0xF6, 0x96,
	0x7D, 0x44, 0xDD, 0x68, 0x19, 0xC2, 0x53, 0xFE, 0xB3, 0x37, 0x3E, 0x17, 0x33, 0xF3, 0x50, 0xC6,
	0xE2, 0x93, 0x26, 0xB3, 0xF7, 0x70, 0x2B, 0xE5, 0x3D, 0x61, 0xE6, 0xE5, 0x3F, 0xC3, 0xA1, 0x4A,
	0x69, 0x43, 0xF0, 0xFE, 0xB5, 0x8A, 0x1A, 0xE4, 0xF6, 0xDB, 0x2C, 0x4A, 0x0B, 0x8D, 0x56, 0x0D,
	0x19, 0x90, 0x82, 0xA7, 0xFF, 0xF3, 0x4E, 0xD2, 0x07, 0x22, 0x1D, 0x4E, 0x1B, 0x27, 0xD1, 0x64,
	0x28, 0x11, 0xF9, 0x80, 0x3F, 0x99, 0xC6, 0xF1, 0x27, 0xE3, 0xBD, 0xF6, 0x1F, 0x73, 0x22, 0x98,
	0x2F, 0xEE, 0x2C, 0xF9, 0xC3, 0x14, 0xA2, 0x0E, 0x20, 0x7A, 0xD2, 0xBE, 0x3B, 0x6F, 0xA7, 0x29,
	0x3D, 0xFA, 0x46, 0x9B, 0xB3, 0x54, 0xFF, 0x0A, 0xD2, 0xF5, 0x81, 0xC4, 0xFF, 0xF3, 0x53, 0x11,
	0xC7, 0x57, 0x6A, 0xD2, 0xF9, 0x8E, 0x66, 0x10, 0x80, 0x9B, 0x2E, 0xBF, 0x99, 0x73, 0x2D, 0xFA,
	0x61, 0xF9, 0x33, 0x6E, 0x2B, 0x42, 0x05, 0x26, 0x9D, 0xB0, 0x88, 0x2E, 0x71, 0x13, 0xA8, 0x42,
	0x58, 0x11, 0xFE, 0xAC, 0xEF, 0x30, 0x82, 0x58, 0x8A, 0x1A, 0x78, 0xA7, 0x88, 0xF0, 0x03, 0xCB,
	0x1B,
};
const size_t g_appkey_size = sizeof(g_appkey);

@implementation SpotifyApplicationKey

+ (NSData *)key {
    return [NSData dataWithBytes:&g_appkey length:g_appkey_size];;
}

@end
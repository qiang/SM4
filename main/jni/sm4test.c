/*
 * SM4/SMS4 algorithm test programme
 * 2012-4-21
 */

#include <string.h>
#include <stdio.h>
#include "sm4.h"

int main()
{
	unsigned char key[16] = {0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xef,0xfe,0xdc,0xba,0x98,0x76,0x54,0x32,0x10};
	unsigned char input[16] = {0x01,0x23,0x45,0x67,0x89,0xab,0xcd,0xef,0xfe,0xdc,0xba,0x98,0x76,0x54,0x32,0x10};
	unsigned char output[16];
	
    SM4_KEY sm_key;


	//加密
	SM4_set_key(key,&sm_key);
	SM4_encrypt(input, output, &sm_key);

	int i;
	for(i=0;i<16;i++)
		printf("%02x ", output[i]);
	printf("\n");

	//解密
	SM4_decrypt(output, output, &sm_key);
	for(i=0;i<16;i++)
		printf("%02x ", output[i]);
	printf("\n");
	
    return 0;
}

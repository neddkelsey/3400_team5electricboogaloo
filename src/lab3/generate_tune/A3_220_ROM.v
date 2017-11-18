//=======================================================
// ECE3400 Fall 2017
// Lab 3: Template ROM module
//
// Top-level skeleton from Terasic
// Modified by Claire Chen for ECE3400 Fall 2017
//=======================================================

module A3_220_ROM(	
	input [9:0] addr,
	input clk,
	output reg [7:0] q
);

    //=======================================================
    //  REG/WIRE declarations
    //=======================================================
	 reg [7:0] sin[568:0];
	 
	 initial begin
		sin[0]  <= 8'b10000000;
		sin[1]  <= 8'b10000001;
		sin[2]  <= 8'b10000010;
		sin[3]  <= 8'b10000100;
		sin[4]  <= 8'b10000101;
		sin[5]  <= 8'b10000111;
		sin[6]  <= 8'b10001000;
		sin[7]  <= 8'b10001001;
		sin[8]  <= 8'b10001011;
		sin[9]  <= 8'b10001100;
		sin[10] <= 8'b10001110;
		sin[11] <= 8'b10001111;
		sin[12] <= 8'b10010000;
		sin[13] <= 8'b10010010;
		sin[14] <= 8'b10010011;
		sin[15] <= 8'b10010101;
		sin[16] <= 8'b10010110;
		sin[17] <= 8'b10010111;
		sin[18] <= 8'b10011001;
		sin[19] <= 8'b10011010;
		sin[20] <= 8'b10011011;
		sin[21] <= 8'b10011101;
		sin[22] <= 8'b10011110;
		sin[23] <= 8'b10100000;
		sin[24] <= 8'b10100001;
		sin[25] <= 8'b10100010;
		sin[26] <= 8'b10100100;
		sin[27] <= 8'b10100101;
		sin[28] <= 8'b10100110;
		sin[29] <= 8'b10101000;
		sin[30] <= 8'b10101001;
		sin[31] <= 8'b10101010;
		sin[32] <= 8'b10101100;
		sin[33] <= 8'b10101101;
		sin[34] <= 8'b10101110;
		sin[35] <= 8'b10110000;
		sin[36] <= 8'b10110001;
		sin[37] <= 8'b10110010;
		sin[38] <= 8'b10110100;
		sin[39] <= 8'b10110101;
		sin[40] <= 8'b10110110;
		sin[41] <= 8'b10110111;
		sin[42] <= 8'b10111001;
		sin[43] <= 8'b10111010;
		sin[44] <= 8'b10111011;
		sin[45] <= 8'b10111100;
		sin[46] <= 8'b10111110;
		sin[47] <= 8'b10111111;
		sin[48] <= 8'b11000000;
		sin[49] <= 8'b11000001;
		sin[50] <= 8'b11000010;
		sin[51] <= 8'b11000100;
		sin[52] <= 8'b11000101;
		sin[53] <= 8'b11000110;
		sin[54] <= 8'b11000111;
		sin[55] <= 8'b11001000;
		sin[56] <= 8'b11001010;
		sin[57] <= 8'b11001011;
		sin[58] <= 8'b11001100;
		sin[59] <= 8'b11001101;
		sin[60] <= 8'b11001110;
		sin[61] <= 8'b11001111;
		sin[62] <= 8'b11010000;
		sin[63] <= 8'b11010001;
		sin[64] <= 8'b11010010;
		sin[65] <= 8'b11010011;
		sin[66] <= 8'b11010101;
		sin[67] <= 8'b11010110;
		sin[68] <= 8'b11010111;
		sin[69] <= 8'b11011000;
		sin[70] <= 8'b11011001;
		sin[71] <= 8'b11011010;
		sin[72] <= 8'b11011011;
		sin[73] <= 8'b11011100;
		sin[74] <= 8'b11011101;
		sin[75] <= 8'b11011110;
		sin[76] <= 8'b11011110;
		sin[77] <= 8'b11011111;
		sin[78] <= 8'b11100000;
		sin[79] <= 8'b11100001;
		sin[80] <= 8'b11100010;
		sin[81] <= 8'b11100011;
		sin[82] <= 8'b11100100;
		sin[83] <= 8'b11100101;
		sin[84] <= 8'b11100110;
		sin[85] <= 8'b11100110;
		sin[86] <= 8'b11100111;
		sin[87] <= 8'b11101000;
		sin[88] <= 8'b11101001;
		sin[89] <= 8'b11101010;
		sin[90] <= 8'b11101010;
		sin[91] <= 8'b11101011;
		sin[92] <= 8'b11101100;
		sin[93] <= 8'b11101101;
		sin[94] <= 8'b11101101;
		sin[95] <= 8'b11101110;
		sin[96] <= 8'b11101111;
		sin[97] <= 8'b11110000;
		sin[98] <= 8'b11110000;
		sin[99] <= 8'b11110001;
		sin[100] <= 8'b11110001;
		sin[101] <= 8'b11110010;
		sin[102] <= 8'b11110011;
		sin[103] <= 8'b11110011;
		sin[104] <= 8'b11110100;
		sin[105] <= 8'b11110100;
		sin[106] <= 8'b11110101;
		sin[107] <= 8'b11110110;
		sin[108] <= 8'b11110110;
		sin[109] <= 8'b11110111;
		sin[110] <= 8'b11110111;
		sin[111] <= 8'b11111000;
		sin[112] <= 8'b11111000;
		sin[113] <= 8'b11111000;
		sin[114] <= 8'b11111001;
		sin[115] <= 8'b11111001;
		sin[116] <= 8'b11111010;
		sin[117] <= 8'b11111010;
		sin[118] <= 8'b11111011;
		sin[119] <= 8'b11111011;
		sin[120] <= 8'b11111011;
		sin[121] <= 8'b11111100;
		sin[122] <= 8'b11111100;
		sin[123] <= 8'b11111100;
		sin[124] <= 8'b11111100;
		sin[125] <= 8'b11111101;
		sin[126] <= 8'b11111101;
		sin[127] <= 8'b11111101;
		sin[128] <= 8'b11111101;
		sin[129] <= 8'b11111110;
		sin[130] <= 8'b11111110;
		sin[131] <= 8'b11111110;
		sin[132] <= 8'b11111110;
		sin[133] <= 8'b11111110;
		sin[134] <= 8'b11111110;
		sin[135] <= 8'b11111111;
		sin[136] <= 8'b11111111;
		sin[137] <= 8'b11111111;
		sin[138] <= 8'b11111111;
		sin[139] <= 8'b11111111;
		sin[140] <= 8'b11111111;
		sin[141] <= 8'b11111111;
		sin[142] <= 8'b11111111;
		sin[143] <= 8'b11111111;
		sin[144] <= 8'b11111111;
		sin[145] <= 8'b11111111;
		sin[146] <= 8'b11111111;
		sin[147] <= 8'b11111111;
		sin[148] <= 8'b11111111;
		sin[149] <= 8'b11111111;
		sin[150] <= 8'b11111111;
		sin[151] <= 8'b11111110;
		sin[152] <= 8'b11111110;
		sin[153] <= 8'b11111110;
		sin[154] <= 8'b11111110;
		sin[155] <= 8'b11111110;
		sin[156] <= 8'b11111101;
		sin[157] <= 8'b11111101;
		sin[158] <= 8'b11111101;
		sin[159] <= 8'b11111101;
		sin[160] <= 8'b11111100;
		sin[161] <= 8'b11111100;
		sin[162] <= 8'b11111100;
		sin[163] <= 8'b11111100;
		sin[164] <= 8'b11111011;
		sin[165] <= 8'b11111011;
		sin[166] <= 8'b11111011;
		sin[167] <= 8'b11111010;
		sin[168] <= 8'b11111010;
		sin[169] <= 8'b11111001;
		sin[170] <= 8'b11111001;
		sin[171] <= 8'b11111001;
		sin[172] <= 8'b11111000;
		sin[173] <= 8'b11111000;
		sin[174] <= 8'b11110111;
		sin[175] <= 8'b11110111;
		sin[176] <= 8'b11110110;
		sin[177] <= 8'b11110110;
		sin[178] <= 8'b11110101;
		sin[179] <= 8'b11110101;
		sin[180] <= 8'b11110100;
		sin[181] <= 8'b11110011;
		sin[182] <= 8'b11110011;
		sin[183] <= 8'b11110010;
		sin[184] <= 8'b11110010;
		sin[185] <= 8'b11110001;
		sin[186] <= 8'b11110000;
		sin[187] <= 8'b11110000;
		sin[188] <= 8'b11101111;
		sin[189] <= 8'b11101110;
		sin[190] <= 8'b11101101;
		sin[191] <= 8'b11101101;
		sin[192] <= 8'b11101100;
		sin[193] <= 8'b11101011;
		sin[194] <= 8'b11101011;
		sin[195] <= 8'b11101010;
		sin[196] <= 8'b11101001;
		sin[197] <= 8'b11101000;
		sin[198] <= 8'b11100111;
		sin[199] <= 8'b11100111;
		sin[200] <= 8'b11100110;
		sin[201] <= 8'b11100101;
		sin[202] <= 8'b11100100;
		sin[203] <= 8'b11100011;
		sin[204] <= 8'b11100010;
		sin[205] <= 8'b11100001;
		sin[206] <= 8'b11100000;
		sin[207] <= 8'b11011111;
		sin[208] <= 8'b11011111;
		sin[209] <= 8'b11011110;
		sin[210] <= 8'b11011101;
		sin[211] <= 8'b11011100;
		sin[212] <= 8'b11011011;
		sin[213] <= 8'b11011010;
		sin[214] <= 8'b11011001;
		sin[215] <= 8'b11011000;
		sin[216] <= 8'b11010111;
		sin[217] <= 8'b11010110;
		sin[218] <= 8'b11010101;
		sin[219] <= 8'b11010100;
		sin[220] <= 8'b11010010;
		sin[221] <= 8'b11010001;
		sin[222] <= 8'b11010000;
		sin[223] <= 8'b11001111;
		sin[224] <= 8'b11001110;
		sin[225] <= 8'b11001101;
		sin[226] <= 8'b11001100;
		sin[227] <= 8'b11001011;
		sin[228] <= 8'b11001010;
		sin[229] <= 8'b11001000;
		sin[230] <= 8'b11000111;
		sin[231] <= 8'b11000110;
		sin[232] <= 8'b11000101;
		sin[233] <= 8'b11000100;
		sin[234] <= 8'b11000011;
		sin[235] <= 8'b11000001;
		sin[236] <= 8'b11000000;
		sin[237] <= 8'b10111111;
		sin[238] <= 8'b10111110;
		sin[239] <= 8'b10111100;
		sin[240] <= 8'b10111011;
		sin[241] <= 8'b10111010;
		sin[242] <= 8'b10111001;
		sin[243] <= 8'b10110111;
		sin[244] <= 8'b10110110;
		sin[245] <= 8'b10110101;
		sin[246] <= 8'b10110100;
		sin[247] <= 8'b10110010;
		sin[248] <= 8'b10110001;
		sin[249] <= 8'b10110000;
		sin[250] <= 8'b10101110;
		sin[251] <= 8'b10101101;
		sin[252] <= 8'b10101100;
		sin[253] <= 8'b10101010;
		sin[254] <= 8'b10101001;
		sin[255] <= 8'b10101000;
		sin[256] <= 8'b10100110;
		sin[257] <= 8'b10100101;
		sin[258] <= 8'b10100100;
		sin[259] <= 8'b10100010;
		sin[260] <= 8'b10100001;
		sin[261] <= 8'b10100000;
		sin[262] <= 8'b10011110;
		sin[263] <= 8'b10011101;
		sin[264] <= 8'b10011100;
		sin[265] <= 8'b10011010;
		sin[266] <= 8'b10011001;
		sin[267] <= 8'b10010111;
		sin[268] <= 8'b10010110;
		sin[269] <= 8'b10010101;
		sin[270] <= 8'b10010011;
		sin[271] <= 8'b10010010;
		sin[272] <= 8'b10010000;
		sin[273] <= 8'b10001111;
		sin[274] <= 8'b10001110;
		sin[275] <= 8'b10001100;
		sin[276] <= 8'b10001011;
		sin[277] <= 8'b10001001;
		sin[278] <= 8'b10001000;
		sin[279] <= 8'b10000111;
		sin[280] <= 8'b10000101;
		sin[281] <= 8'b10000100;
		sin[282] <= 8'b10000010;
		sin[283] <= 8'b10000001;
		sin[284] <= 8'b10000000;
		sin[285] <= 8'b01111110;
		sin[286] <= 8'b01111101;
		sin[287] <= 8'b01111011;
		sin[288] <= 8'b01111010;
		sin[289] <= 8'b01111001;
		sin[290] <= 8'b01110111;
		sin[291] <= 8'b01110110;
		sin[292] <= 8'b01110100;
		sin[293] <= 8'b01110011;
		sin[294] <= 8'b01110010;
		sin[295] <= 8'b01110000;
		sin[296] <= 8'b01101111;
		sin[297] <= 8'b01101101;
		sin[298] <= 8'b01101100;
		sin[299] <= 8'b01101011;
		sin[300] <= 8'b01101001;
		sin[301] <= 8'b01101000;
		sin[302] <= 8'b01100110;
		sin[303] <= 8'b01100101;
		sin[304] <= 8'b01100100;
		sin[305] <= 8'b01100010;
		sin[306] <= 8'b01100001;
		sin[307] <= 8'b01100000;
		sin[308] <= 8'b01011110;
		sin[309] <= 8'b01011101;
		sin[310] <= 8'b01011011;
		sin[311] <= 8'b01011010;
		sin[312] <= 8'b01011001;
		sin[313] <= 8'b01010111;
		sin[314] <= 8'b01010110;
		sin[315] <= 8'b01010101;
		sin[316] <= 8'b01010011;
		sin[317] <= 8'b01010010;
		sin[318] <= 8'b01010001;
		sin[319] <= 8'b01001111;
		sin[320] <= 8'b01001110;
		sin[321] <= 8'b01001101;
		sin[322] <= 8'b01001100;
		sin[323] <= 8'b01001010;
		sin[324] <= 8'b01001001;
		sin[325] <= 8'b01001000;
		sin[326] <= 8'b01000111;
		sin[327] <= 8'b01000101;
		sin[328] <= 8'b01000100;
		sin[329] <= 8'b01000011;
		sin[330] <= 8'b01000010;
		sin[331] <= 8'b01000000;
		sin[332] <= 8'b00111111;
		sin[333] <= 8'b00111110;
		sin[334] <= 8'b00111101;
		sin[335] <= 8'b00111011;
		sin[336] <= 8'b00111010;
		sin[337] <= 8'b00111001;
		sin[338] <= 8'b00111000;
		sin[339] <= 8'b00110111;
		sin[340] <= 8'b00110110;
		sin[341] <= 8'b00110100;
		sin[342] <= 8'b00110011;
		sin[343] <= 8'b00110010;
		sin[344] <= 8'b00110001;
		sin[345] <= 8'b00110000;
		sin[346] <= 8'b00101111;
		sin[347] <= 8'b00101110;
		sin[348] <= 8'b00101101;
		sin[349] <= 8'b00101100;
		sin[350] <= 8'b00101011;
		sin[351] <= 8'b00101010;
		sin[352] <= 8'b00101001;
		sin[353] <= 8'b00100111;
		sin[354] <= 8'b00100110;
		sin[355] <= 8'b00100101;
		sin[356] <= 8'b00100100;
		sin[357] <= 8'b00100011;
		sin[358] <= 8'b00100011;
		sin[359] <= 8'b00100010;
		sin[360] <= 8'b00100001;
		sin[361] <= 8'b00100000;
		sin[362] <= 8'b00011111;
		sin[363] <= 8'b00011110;
		sin[364] <= 8'b00011101;
		sin[365] <= 8'b00011100;
		sin[366] <= 8'b00011011;
		sin[367] <= 8'b00011010;
		sin[368] <= 8'b00011001;
		sin[369] <= 8'b00011001;
		sin[370] <= 8'b00011000;
		sin[371] <= 8'b00010111;
		sin[372] <= 8'b00010110;
		sin[373] <= 8'b00010101;
		sin[374] <= 8'b00010101;
		sin[375] <= 8'b00010100;
		sin[376] <= 8'b00010011;
		sin[377] <= 8'b00010010;
		sin[378] <= 8'b00010010;
		sin[379] <= 8'b00010001;
		sin[380] <= 8'b00010000;
		sin[381] <= 8'b00010000;
		sin[382] <= 8'b00001111;
		sin[383] <= 8'b00001110;
		sin[384] <= 8'b00001110;
		sin[385] <= 8'b00001101;
		sin[386] <= 8'b00001100;
		sin[387] <= 8'b00001100;
		sin[388] <= 8'b00001011;
		sin[389] <= 8'b00001011;
		sin[390] <= 8'b00001010;
		sin[391] <= 8'b00001010;
		sin[392] <= 8'b00001001;
		sin[393] <= 8'b00001000;
		sin[394] <= 8'b00001000;
		sin[395] <= 8'b00000111;
		sin[396] <= 8'b00000111;
		sin[397] <= 8'b00000111;
		sin[398] <= 8'b00000110;
		sin[399] <= 8'b00000110;
		sin[400] <= 8'b00000101;
		sin[401] <= 8'b00000101;
		sin[402] <= 8'b00000101;
		sin[403] <= 8'b00000100;
		sin[404] <= 8'b00000100;
		sin[405] <= 8'b00000011;
		sin[406] <= 8'b00000011;
		sin[407] <= 8'b00000011;
		sin[408] <= 8'b00000011;
		sin[409] <= 8'b00000010;
		sin[410] <= 8'b00000010;
		sin[411] <= 8'b00000010;
		sin[412] <= 8'b00000010;
		sin[413] <= 8'b00000001;
		sin[414] <= 8'b00000001;
		sin[415] <= 8'b00000001;
		sin[416] <= 8'b00000001;
		sin[417] <= 8'b00000001;
		sin[418] <= 8'b00000001;
		sin[419] <= 8'b00000000;
		sin[420] <= 8'b00000000;
		sin[421] <= 8'b00000000;
		sin[422] <= 8'b00000000;
		sin[423] <= 8'b00000000;
		sin[424] <= 8'b00000000;
		sin[425] <= 8'b00000000;
		sin[426] <= 8'b00000000;
		sin[427] <= 8'b00000000;
		sin[428] <= 8'b00000000;
		sin[429] <= 8'b00000000;
		sin[430] <= 8'b00000000;
		sin[431] <= 8'b00000000;
		sin[432] <= 8'b00000000;
		sin[433] <= 8'b00000000;
		sin[434] <= 8'b00000000;
		sin[435] <= 8'b00000001;
		sin[436] <= 8'b00000001;
		sin[437] <= 8'b00000001;
		sin[438] <= 8'b00000001;
		sin[439] <= 8'b00000001;
		sin[440] <= 8'b00000001;
		sin[441] <= 8'b00000010;
		sin[442] <= 8'b00000010;
		sin[443] <= 8'b00000010;
		sin[444] <= 8'b00000010;
		sin[445] <= 8'b00000011;
		sin[446] <= 8'b00000011;
		sin[447] <= 8'b00000011;
		sin[448] <= 8'b00000100;
		sin[449] <= 8'b00000100;
		sin[450] <= 8'b00000100;
		sin[451] <= 8'b00000101;
		sin[452] <= 8'b00000101;
		sin[453] <= 8'b00000110;
		sin[454] <= 8'b00000110;
		sin[455] <= 8'b00000110;
		sin[456] <= 8'b00000111;
		sin[457] <= 8'b00000111;
		sin[458] <= 8'b00001000;
		sin[459] <= 8'b00001000;
		sin[460] <= 8'b00001001;
		sin[461] <= 8'b00001001;
		sin[462] <= 8'b00001010;
		sin[463] <= 8'b00001010;
		sin[464] <= 8'b00001011;
		sin[465] <= 8'b00001100;
		sin[466] <= 8'b00001100;
		sin[467] <= 8'b00001101;
		sin[468] <= 8'b00001101;
		sin[469] <= 8'b00001110;
		sin[470] <= 8'b00001111;
		sin[471] <= 8'b00001111;
		sin[472] <= 8'b00010000;
		sin[473] <= 8'b00010001;
		sin[474] <= 8'b00010001;
		sin[475] <= 8'b00010010;
		sin[476] <= 8'b00010011;
		sin[477] <= 8'b00010100;
		sin[478] <= 8'b00010100;
		sin[479] <= 8'b00010101;
		sin[480] <= 8'b00010110;
		sin[481] <= 8'b00010111;
		sin[482] <= 8'b00011000;
		sin[483] <= 8'b00011000;
		sin[484] <= 8'b00011001;
		sin[485] <= 8'b00011010;
		sin[486] <= 8'b00011011;
		sin[487] <= 8'b00011100;
		sin[488] <= 8'b00011101;
		sin[489] <= 8'b00011110;
		sin[490] <= 8'b00011110;
		sin[491] <= 8'b00011111;
		sin[492] <= 8'b00100000;
		sin[493] <= 8'b00100001;
		sin[494] <= 8'b00100010;
		sin[495] <= 8'b00100011;
		sin[496] <= 8'b00100100;
		sin[497] <= 8'b00100101;
		sin[498] <= 8'b00100110;
		sin[499] <= 8'b00100111;
		sin[500] <= 8'b00101000;
		sin[501] <= 8'b00101001;
		sin[502] <= 8'b00101010;
		sin[503] <= 8'b00101011;
		sin[504] <= 8'b00101100;
		sin[505] <= 8'b00101101;
		sin[506] <= 8'b00101111;
		sin[507] <= 8'b00110000;
		sin[508] <= 8'b00110001;
		sin[509] <= 8'b00110010;
		sin[510] <= 8'b00110011;
		sin[511] <= 8'b00110100;
		sin[512] <= 8'b00110101;
		sin[513] <= 8'b00110110;
		sin[514] <= 8'b00111000;
		sin[515] <= 8'b00111001;
		sin[516] <= 8'b00111010;
		sin[517] <= 8'b00111011;
		sin[518] <= 8'b00111100;
		sin[519] <= 8'b00111110;
		sin[520] <= 8'b00111111;
		sin[521] <= 8'b01000000;
		sin[522] <= 8'b01000001;
		sin[523] <= 8'b01000010;
		sin[524] <= 8'b01000100;
		sin[525] <= 8'b01000101;
		sin[526] <= 8'b01000110;
		sin[527] <= 8'b01000111;
		sin[528] <= 8'b01001001;
		sin[529] <= 8'b01001010;
		sin[530] <= 8'b01001011;
		sin[531] <= 8'b01001101;
		sin[532] <= 8'b01001110;
		sin[533] <= 8'b01001111;
		sin[534] <= 8'b01010000;
		sin[535] <= 8'b01010010;
		sin[536] <= 8'b01010011;
		sin[537] <= 8'b01010100;
		sin[538] <= 8'b01010110;
		sin[539] <= 8'b01010111;
		sin[540] <= 8'b01011000;
		sin[541] <= 8'b01011010;
		sin[542] <= 8'b01011011;
		sin[543] <= 8'b01011100;
		sin[544] <= 8'b01011110;
		sin[545] <= 8'b01011111;
		sin[546] <= 8'b01100001;
		sin[547] <= 8'b01100010;
		sin[548] <= 8'b01100011;
		sin[549] <= 8'b01100101;
		sin[550] <= 8'b01100110;
		sin[551] <= 8'b01100111;
		sin[552] <= 8'b01101001;
		sin[553] <= 8'b01101010;
		sin[554] <= 8'b01101100;
		sin[555] <= 8'b01101101;
		sin[556] <= 8'b01101110;
		sin[557] <= 8'b01110000;
		sin[558] <= 8'b01110001;
		sin[559] <= 8'b01110011;
		sin[560] <= 8'b01110100;
		sin[561] <= 8'b01110101;
		sin[562] <= 8'b01110111;
		sin[563] <= 8'b01111000;
		sin[564] <= 8'b01111010;
		sin[565] <= 8'b01111011;
		sin[566] <= 8'b01111100;
		sin[567] <= 8'b01111110;
		sin[568] <= 8'b01111111;
	 end
	 
    //=======================================================
    //  Structural coding
    //=======================================================
	 always @(posedge clk) begin
		q <= sin[addr];
	 end
	 
endmodule
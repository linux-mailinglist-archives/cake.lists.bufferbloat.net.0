Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E818B657D
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 187823CBE0;
	Mon, 29 Apr 2024 18:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429134;
	bh=FLfdz4c9QSiYUV4A1PHuNXCF7jFEVcrYyMpvkN02U7o=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nqGP90QKwYUHmtxHOjo2XI0l7eMeNDWfCD+ymI2nRs+NcPy9f2YhAkgCnUozinGDY
	 almL7bN5KaSgkGJ0xt7Rs5tIRANmHEi7do6W2Q3HW3OXANuOvETQSch23+ev+72WzF
	 gRfNcwmT5F0pNRspLtvJ9/nzjpxspBfeG95xq1U0wVVS1lMBekNGKor60Z992+BiQj
	 0fSrVH1QyZ2Cr2UVHVuxwnTe4ZqjUkwQsR7V/ljSdWUVHLrhChSNzBj4aSUHfB5xJe
	 Gx5i18ClVnIpFAbvg4nWgPmP9Qm1H7daPPPiEGarGdoD14ocsGug4VmLI42Nx2oU/V
	 hBsrKNBkG0DYA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A9FB03B2A4;
 Fri,  6 Jan 2023 15:38:33 -0500 (EST)
Received: from mail.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 by bobcat.rjmcmahon.com (Postfix) with ESMTPA id BA3091B25F;
 Fri,  6 Jan 2023 12:38:32 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com BA3091B25F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
 s=bobcat; t=1673037512;
 bh=324EykeBygiYxRRKUp4XBPVCE4U8QtdSqk5InPzvAKY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ryZWTDy6qOfDh6RbtV67heNpoHWXEUN/zDkGX5vOCd2oOKIJ3ry5Tlp2bjd/nZvJC
 qbwBKRj3UkWMEb4r3y015Pjv2c8k92jv/XGq+yBALl2UaMWCjTlCnrWaZBidRJixfp
 ZyZNWdRMUilg4LKxk7kIQqn9aRVuuF1+Yepd9IKQ=
MIME-Version: 1.0
Date: Fri, 06 Jan 2023 12:38:32 -0800
To: "MORTON JR., AL" <acmorton@att.com>
In-Reply-To: <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
Message-ID: <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
X-Sender: rjmcmahon@rjmcmahon.com
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Rpm] [LibreQoS] the grinch meets cloudflare's christmas
	present
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: rjmcmahon via Cake <cake@lists.bufferbloat.net>
Reply-To: rjmcmahon <rjmcmahon@rjmcmahon.com>
Cc: Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 IETF IPPM WG <ippm@ietf.org>, libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U29tZSB0aG91Z2h0cyBhcmUgbm90IHRvIHVzZSBVRFAgZm9yIHRlc3RpbmcgaGVyZS4gQWxzbywg
dGhlc2Ugc3BlZWQgCnRlc3RzIGhhdmUgbGl0dGxlIHRvIG5vIGluZm9ybWF0aW9uIGZvciBuZXR3
b3JrIGVuZ2luZWVycyBhYm91dCB3aGF0J3MgCmdvaW5nIG9uLiBJcGVyZiAyIG1heSBiZXR0ZXIg
YXNzaXN0IG5ldHdvcmsgZW5naW5lZXJzIGJ1dCB0aGVuIEknbSAKYmlhc2VkIDspCgpSdW5uaW5n
IGlwZXJmIDIgaHR0cHM6Ly9zb3VyY2Vmb3JnZS5uZXQvcHJvamVjdHMvaXBlcmYyLyB3aXRoIAot
LXRyaXAtdGltZXMuIFRob3VnaCB0aGUgc2FtcGxpbmcgYW5kIGNlbnRyYWwgbGltaXQgdGhlb3Jl
bSBhdmVyYWdpbmcgaXMgCmhpZGluZyB0aGUgcmVhbCBkaXN0cmlidXRpb25zICh1c2UgLS1oaXN0
b2dyYW1zIHRvIGdldCB0aG9zZSkKCkJlbG93IGFyZSA0IHBhcmFsbGVsIFRDUCBzdHJlYW1zIGZy
b20gbXkgaG9tZSB0byBvbmUgb2YgbXkgc2VydmVycyBpbiAKdGhlIGNsb3VkLiBGaXJzdCB3aGVy
ZSBUQ1AgaXMgbGltaXRlZCBwZXIgQ0NBLiBTZWNvbmQgaXMgc291cmNlIHNpZGUgCndyaXRlIHJh
dGUgbGltaXRpbmcuIFRoaW5ncyB0byBub3RlOgoKbykgY29ubmVjdCB0aW1lcyBmb3IgYm90aCBh
dCAxMC0xNSBtcwpvKSBtdWx0aXBsZSBUQ1AgcmV0cmllcyBvbiBhIGZldyByaXRlcyAtIG9uZSBj
YXNlIGlzIDQgd2l0aCA1IHdyaXRlcy4gClNvdXJjZSBzaWRlIHBhY2luZyBlbGltaW5hdGVzIHJl
dHJpZXMKbykgRmFpcm5lc3Mgd2l0aCBDQ0EgaXNuJ3QgZ3JlYXQgYnV0IHF1aXRlIGdvb2Qgd2l0
aCBzb3VyY2Ugc2lkZSB3cml0ZSAKcGFjaW5nCm8pIFF1ZXVlIGRlcHRoIHdpdGggQ0NBIGlzIGFi
b3V0IDE1MCBLYnl0ZXMgYWJvdXQgMTAwSyBieXRlIHdpdGggc291cmNlIApzaWRlIHBhY2luZwpv
KSBtaW4gd3JpdGUgdG8gcmVhZCBpcyBhYm91dCA4MCBtcyBmb3IgYm90aApvKSBtYXggaXMgMjIw
IG1zIHZzIDk3IG1zCm8pIHN0ZGV2IGZvciBDQ0Egd3JpdGUvcmVhZCBpcyAzMCBtcyB2cyAzIG1z
Cm8pIFRDUCBSVFQgaXMgMjBtcyB3L0NDQSBhbmQgOTAgbXMgd2l0aCBzc3AgLSBzZWVtcyBvZGQg
aGVyZSBhcyAKVENQX1FVSUNBQ0sgYW5kIFRDUF9OT0RFTEFZIGFyZSBib3RoIGVuYWJsZWQuCgpb
IENUXSBmaW5hbCBjb25uZWN0IHRpbWVzIChtaW4vYXZnL21heC9zdGRldikgPSAKMTAuMzI2LzEz
LjUyMi8xNC45ODYvMjE1MC4zMjkgbXMgKHRvdC9lcnIpID0gNC8wCltyam1jbWFob25Acnl6ZW4z
OTUwIGlwZXJmMi1jb2RlXSQgaXBlcmYgLWMgKioqIC0taGlkZS1pcHMgLWUgCi0tdHJpcC10aW1l
cyAtaSAxIC1QIDQgLXQgMTAgLXcgNG0gLS10Y3AtcXVpY2thY2sgLU4KLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkNsaWVudCBjb25u
ZWN0aW5nIHRvICgqKmhpZGRlbioqKSwgVENQIHBvcnQgNTAwMSB3aXRoIHBpZCAxMDc2NzggKDQg
CmZsb3dzKQpXcml0ZSBidWZmZXIgc2l6ZTogMTMxMDcyIEJ5dGUKVE9TIHNldCB0byAweDAgYW5k
IG5vZGVsYXkgKE5hZ2xlIG9mZikKVENQIHdpbmRvdyBzaXplOiA3LjYzIE1CeXRlIChXQVJOSU5H
OiByZXF1ZXN0ZWQgMy44MSBNQnl0ZSkKRXZlbnQgYmFzZWQgd3JpdGVzIChwZW5kaW5nIHF1ZXVl
IHdhdGVybWFyayBhdCAxNjM4NCBieXRlcykKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClsgIDFdIGxvY2FsICouKi4qLjg1JWVucDRz
MCBwb3J0IDQyNDgwIGNvbm5lY3RlZCB3aXRoICouKi4qLjEyMyBwb3J0IAo1MDAxIChwcmVmZXRj
aD0xNjM4NCkgKHRyaXAtdGltZXMpIChzb2NrPTMpIChxYWNrKSAKKGljd25kL21zcy9pcnR0PTE0
LzE0NDgvMTA1MzQpIChjdD0xMC42MyBtcykgb24gMjAyMy0wMS0wNiAxMjoxNzo1NiAKKFBTVCkK
WyAgNF0gbG9jYWwgKi4qLiouODUlZW5wNHMwIHBvcnQgNDI0ODggY29ubmVjdGVkIHdpdGggKi4q
LiouMTIzIHBvcnQgCjUwMDEgKHByZWZldGNoPTE2Mzg0KSAodHJpcC10aW1lcykgKHNvY2s9NSkg
KHFhY2spIAooaWN3bmQvbXNzL2lydHQ9MTQvMTQ0OC8xNDAyMykgKGN0PTE0LjA4IG1zKSBvbiAy
MDIzLTAxLTA2IDEyOjE3OjU2IAooUFNUKQpbICAzXSBsb2NhbCAqLiouKi44NSVlbnA0czAgcG9y
dCA0MjUwMiBjb25uZWN0ZWQgd2l0aCAqLiouKi4xMjMgcG9ydCAKNTAwMSAocHJlZmV0Y2g9MTYz
ODQpICh0cmlwLXRpbWVzKSAoc29jaz02KSAocWFjaykgCihpY3duZC9tc3MvaXJ0dD0xNC8xNDQ4
LzE0NjQyKSAoY3Q9MTQuNzAgbXMpIG9uIDIwMjMtMDEtMDYgMTI6MTc6NTYgCihQU1QpClsgIDJd
IGxvY2FsICouKi4qLjg1JWVucDRzMCBwb3J0IDQyNDg0IGNvbm5lY3RlZCB3aXRoICouKi4qLjEy
MyBwb3J0IAo1MDAxIChwcmVmZXRjaD0xNjM4NCkgKHRyaXAtdGltZXMpIChzb2NrPTQpIChxYWNr
KSAKKGljd25kL21zcy9pcnR0PTE0LzE0NDgvMTQ3MjgpIChjdD0xNC43OSBtcykgb24gMjAyMy0w
MS0wNiAxMjoxNzo1NiAKKFBTVCkKWyBJRF0gSW50ZXJ2YWwgICAgICAgIFRyYW5zZmVyICAgIEJh
bmR3aWR0aCAgICAgICBXcml0ZS9FcnIgIFJ0cnkgICAgIApDd25kL1JUVCh2YXIpICAgICAgICBO
ZXRQd3IKLi4uClsgIDRdIDQuMDAtNS4wMCBzZWMgIDEuMzggTUJ5dGVzICAxMS41IE1iaXRzL3Nl
YyAgMTEvMCAgICAgICAgIDMgICAgICAgCjI5Sy8yMTA4OCgxMTQyKSB1cyAgNjguMzcKWyAgMl0g
NC4wMC01LjAwIHNlYyAgMS42MiBNQnl0ZXMgIDEzLjYgTWJpdHMvc2VjICAxMy8wICAgICAgICAg
MiAgICAgICAKMzFLLzE5Mjg0KDYxMikgdXMgIDg4LjM2ClsgIDFdIDQuMDAtNS4wMCBzZWMgICA4
OTYgS0J5dGVzICA3LjM0IE1iaXRzL3NlYyAgNy8wICAgICAgICAgNSAgICAgICAKMTZLLzE4OTk2
KDY1OCkgdXMgIDQ4LjMwClsgIDNdIDQuMDAtNS4wMCBzZWMgIDEuMDAgTUJ5dGVzICA4LjM5IE1i
aXRzL3NlYyAgOC8wICAgICAgICAgNSAgICAgICAKMThLLzE4MTMzKDIwOCkgdXMgIDU3LjgzCltT
VU1dIDQuMDAtNS4wMCBzZWMgIDQuODggTUJ5dGVzICA0MC45IE1iaXRzL3NlYyAgMzkvMCAgICAg
ICAgMTUKWyAgNF0gNS4wMC02LjAwIHNlYyAgMS4yNSBNQnl0ZXMgIDEwLjUgTWJpdHMvc2VjICAx
MC8wICAgICAgICAgNCAgICAgICAKMjlLLzE0NzE3KDQ4OSkgdXMgIDg5LjA2ClsgIDFdIDUuMDAt
Ni4wMCBzZWMgIDEuMDAgTUJ5dGVzICA4LjM5IE1iaXRzL3NlYyAgOC8wICAgICAgICAgNCAgICAg
ICAKMTZLLzE1ODc0KDQwOCkgdXMgIDY2LjA2ClsgIDNdIDUuMDAtNi4wMCBzZWMgIDEuMTIgTUJ5
dGVzICA5LjQ0IE1iaXRzL3NlYyAgOS8wICAgICAgICAgNCAgICAgICAKMTZLLzE1ODI2KDM4Mikg
dXMgIDc0LjU0ClsgIDJdIDUuMDAtNi4wMCBzZWMgIDEuNTAgTUJ5dGVzICAxMi42IE1iaXRzL3Nl
YyAgMTIvMCAgICAgICAgIDYgICAgICAgIAo5Sy8xNDg3OCg1NTcpIHVzICAxMDYKW1NVTV0gNS4w
MC02LjAwIHNlYyAgNC44OCBNQnl0ZXMgIDQwLjkgTWJpdHMvc2VjICAzOS8wICAgICAgICAxOApb
ICA0XSA2LjAwLTcuMDAgc2VjICAxLjc1IE1CeXRlcyAgMTQuNyBNYml0cy9zZWMgIDE0LzAgICAg
ICAgICA0ICAgICAgIAoyNUsvMTU0NzIoNDk2KSB1cyAgMTE5ClsgIDJdIDYuMDAtNy4wMCBzZWMg
IDEuMDAgTUJ5dGVzICA4LjM5IE1iaXRzL3NlYyAgOC8wICAgICAgICAgMiAgICAgICAKMjZLLzE2
NDE3KDQyNykgdXMgIDYzLjg3ClsgIDFdIDYuMDAtNy4wMCBzZWMgIDEuMjUgTUJ5dGVzICAxMC41
IE1iaXRzL3NlYyAgMTAvMCAgICAgICAgIDUgICAgICAgCjE2Sy8xNjI2OCg2NzkpIHVzICA4MC41
NwpbICAzXSA2LjAwLTcuMDAgc2VjICAxLjAwIE1CeXRlcyAgOC4zOSBNYml0cy9zZWMgIDgvMCAg
ICAgICAgIDYgICAgICAgCjE1Sy8xNjYyOSg3OTkpIHVzICA2My4wNgpbU1VNXSA2LjAwLTcuMDAg
c2VjICA1LjAwIE1CeXRlcyAgNDEuOSBNYml0cy9zZWMgIDQwLzAgICAgICAgIDE3ClsgIDRdIDcu
MDAtOC4wMCBzZWMgIDEuNzUgTUJ5dGVzICAxNC43IE1iaXRzL3NlYyAgMTQvMCAgICAgICAgIDQg
ICAgICAgCjIySy8xMzk4Nig1MTkpIHVzICAxMzEKWyAgMV0gNy4wMC04LjAwIHNlYyAgMS4xMiBN
Qnl0ZXMgIDkuNDQgTWJpdHMvc2VjICA5LzAgICAgICAgICA0ICAgICAgIAoxNksvMTI2NzkoMzc3
KSB1cyAgOTMuMDQKWyAgM10gNy4wMC04LjAwIHNlYyAgIDg5NiBLQnl0ZXMgIDcuMzQgTWJpdHMv
c2VjICA3LzAgICAgICAgICA1ICAgICAgIAoxNEsvMTI5NzEoMzY3KSB1cyAgNzAuNzQKWyAgMl0g
Ny4wMC04LjAwIHNlYyAgMS4xMiBNQnl0ZXMgIDkuNDQgTWJpdHMvc2VjICA5LzAgICAgICAgICA2
ICAgICAgIAoxNUsvMTQ3NDAoNzc5KSB1cyAgODAuMDMKW1NVTV0gNy4wMC04LjAwIHNlYyAgNC44
OCBNQnl0ZXMgIDQwLjkgTWJpdHMvc2VjICAzOS8wICAgICAgICAxOQoKW3Jvb3RAYm9iY2F0IGlw
ZXJmMi1jb2RlXSMgaXBlcmYgLXMgLWkgMSAtZSAtLWhpZGUtaXBzIC13IDRtCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpTZXJ2ZXIg
bGlzdGVuaW5nIG9uIFRDUCBwb3J0IDUwMDEgd2l0aCBwaWQgMjMzNjE1ClJlYWQgYnVmZmVyIHNp
emU6ICAxMjggS0J5dGUgKERpc3QgYmluIHdpZHRoPTE2LjAgS0J5dGUpClRDUCB3aW5kb3cgc2l6
ZTogNy42MyBNQnl0ZSAoV0FSTklORzogcmVxdWVzdGVkIDMuODEgTUJ5dGUpCi0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpbICAxXSBs
b2NhbCAqLiouKi4xMjMlZXRoMCBwb3J0IDUwMDEgY29ubmVjdGVkIHdpdGggKi4qLiouMTcxIHBv
cnQgNDI0ODAgCih0cmlwLXRpbWVzKSAoc29jaz00KSAocGVlciAyLjEuOS1tYXN0ZXIpIChxYWNr
KSAKKGljd25kL21zcy9pcnR0PTE0LzE0NDgvMTE2MzYpIG9uIDIwMjMtMDEtMDYgMTI6MTc6NTYg
KFBTVCkKWyAgMl0gbG9jYWwgKi4qLiouMTIzJWV0aDAgcG9ydCA1MDAxIGNvbm5lY3RlZCB3aXRo
ICouKi4qLjE3MSBwb3J0IDQyNTAyIAoodHJpcC10aW1lcykgKHNvY2s9NSkgKHBlZXIgMi4xLjkt
bWFzdGVyKSAocWFjaykgCihpY3duZC9tc3MvaXJ0dD0xNC8xNDQ4LzExODk4KSBvbiAyMDIzLTAx
LTA2IDEyOjE3OjU2IChQU1QpClsgIDNdIGxvY2FsICouKi4qLjEyMyVldGgwIHBvcnQgNTAwMSBj
b25uZWN0ZWQgd2l0aCAqLiouKi4xNzEgcG9ydCA0MjQ4NCAKKHRyaXAtdGltZXMpIChzb2NrPTYp
IChwZWVyIDIuMS45LW1hc3RlcikgKHFhY2spIAooaWN3bmQvbXNzL2lydHQ9MTQvMTQ0OC8xMTkz
OCkgb24gMjAyMy0wMS0wNiAxMjoxNzo1NiAoUFNUKQpbICA0XSBsb2NhbCAqLiouKi4xMjMlZXRo
MCBwb3J0IDUwMDEgY29ubmVjdGVkIHdpdGggKi4qLiouMTcxIHBvcnQgNDI0ODggCih0cmlwLXRp
bWVzKSAoc29jaz03KSAocGVlciAyLjEuOS1tYXN0ZXIpIChxYWNrKSAKKGljd25kL21zcy9pcnR0
PTE0LzE0NDgvMTE5MTkpIG9uIDIwMjMtMDEtMDYgMTI6MTc6NTYgKFBTVCkKWyBJRF0gSW50ZXJ2
YWwgICAgICAgIFRyYW5zZmVyICAgIEJhbmR3aWR0aCAgICBCdXJzdCBMYXRlbmN5IAphdmcvbWlu
L21heC9zdGRldiAoY250L3NpemUpIGluUCBOZXRQd3IgIFJlYWRzPURpc3QKLi4uClsgIDJdIDQu
MDAtNS4wMCBzZWMgIDEuMDYgTUJ5dGVzICA4Ljg2IE1iaXRzL3NlYyAgCjEyOS44MTkvOTAuMzkx
LzE4Ni4wNzUvMzEuMzQ2IG1zICg5LzEyMzA4MCkgIDE1NCBLQnl0ZSA4LjUzMjgwMyAgCjQ2Nz00
NjE6NjowOjA6MDowOjA6MApbICAzXSA0LjAwLTUuMDAgc2VjICAxLjUyIE1CeXRlcyAgMTIuOCBN
Yml0cy9zZWMgIAoxMDMuNTUyLzgyLjY1My8xNjkuMjc0LzI4LjM4MiBtcyAoMTIvMTMyODU0KSAg
MTQ5IEtCeXRlIDE1LjQwICAKNjQ2PTY0MzoxOjI6MDowOjA6MDowClsgIDRdIDQuMDAtNS4wMCBz
ZWMgIDEuMzkgTUJ5dGVzICAxMS42IE1iaXRzL3NlYyAgCjEwNy41MDMvNjYuODQzLzE0My4wMzgv
MjQuMjY5IG1zICgxMS8xMzIyOTQpICAxNDkgS0J5dGUgMTMuNTQgIAo2MTk9NjE3OjE6MTowOjA6
MDowOjAKWyAgMV0gNC4wMC01LjAwIHNlYyAgIDk4OCBLQnl0ZXMgIDguMTAgTWJpdHMvc2VjICAK
MTQxLjM4OS8xMTkuOTYxLzE3OC43ODUvMTguODEyIG1zICg3LzE0NDU5MykgIDE3MCBLQnl0ZSA3
LjE1ODY0MSAgCjQwOT00MDQ6NTowOjA6MDowOjA6MApbU1VNXSA0LjAwLTUuMDAgc2VjICA0Ljkz
IE1CeXRlcyAgNDEuNCBNYml0cy9zZWMgIAoyMTQxPTIxMjU6MTM6MzowOjA6MDowOjAKWyAgNF0g
NS4wMC02LjAwIHNlYyAgMS4yOSBNQnl0ZXMgIDEwLjggTWJpdHMvc2VjICAKMTE4Ljk0My84Ni4y
NTMvMTc2LjEyOC8zMS4yNDggbXMgKDEwLzEzNTA5OCkgIDE2NCBLQnl0ZSAxMS4zNiAgCjUxMT01
MDY6MjozOjA6MDowOjA6MApbICAyXSA1LjAwLTYuMDAgc2VjICAxLjA5IE1CeXRlcyAgOS4xNyBN
Yml0cy9zZWMgIAoxMzkuODIxLzEwMi40MTgvMjE4Ljg3NS80MC40MjIgbXMgKDkvMTI3NDI0KSAg
MTQ4IEtCeXRlIDguMjAyMDQ5ICAKNDg3PTQ4NDoyOjE6MDowOjA6MDowClsgIDNdIDUuMDAtNi4w
MCBzZWMgIDEuNTEgTUJ5dGVzICAxMi42IE1iaXRzL3NlYyAgCjEwMi4xNDYvNzcuMDg1LzE0MC44
OTMvMTguNDQxIG1zICgxMy8xMjE1MjApICAxNTEgS0J5dGUgMTUuNDcgIAo2NDA9NjM2OjE6Mzow
OjA6MDowOjAKWyAgMV0gNS4wMC02LjAwIHNlYyAgIDk4MSBLQnl0ZXMgIDguMDQgTWJpdHMvc2Vj
ICAKMTYxLjkwMS8xMDUuNTgyLzIxOS45MzEvMzYuMjYwIG1zICg4LzEyNTYxNCkgIDEzNCBLQnl0
ZSA2LjIwNjk0NCAgCjQxNT00MTM6MjowOjA6MDowOjA6MApbU1VNXSA1LjAwLTYuMDAgc2VjICA0
Ljg1IE1CeXRlcyAgNDAuNyBNYml0cy9zZWMgIAoyMDUzPTIwMzk6Nzo3OjA6MDowOjA6MApbICA0
XSA2LjAwLTcuMDAgc2VjICAxLjc0IE1CeXRlcyAgMTQuNiBNYml0cy9zZWMgIAo4OC44NDYvNzQu
Mjk3LzEwMS44NTkvNy4xMTggbXMgKDE0LzEzMDUyNikgIDE1NiBLQnl0ZSAyMC41NyAgCjcxMT03
MDc6MzoxOjA6MDowOjA6MApbICAxXSA2LjAwLTcuMDAgc2VjICAxLjIyIE1CeXRlcyAgMTAuMiBN
Yml0cy9zZWMgIAoxMjAuNjM5LzEwMC4yNTcvMTU3LjU2Ny8yMS43NzAgbXMgKDEwLzEyNzU2OCkg
IDE1NyBLQnl0ZSAxMC41NyAgCjQ5ND00ODg6NToxOjA6MDowOjA6MApbICAyXSA2LjAwLTcuMDAg
c2VjICAxMDE1IEtCeXRlcyAgOC4zMiBNYml0cy9zZWMgIAoxNDQuNjMyLzEyNC4zNjgvMTcxLjM0
OS8xNi41OTcgbXMgKDgvMTI5OTU4KSAgMTQzIEtCeXRlIDcuMTg4MzIxICAKNDA4PTQwMzo1OjA6
MDowOjA6MDowClsgIDNdIDYuMDAtNy4wMCBzZWMgIDEuMDIgTUJ5dGVzICA4LjYwIE1iaXRzL3Nl
YyAgCjE0My41MTYvMTAyLjMyMi8xNzMuMDAxLzI0LjA4OSBtcyAoOC8xMzQzMDIpICAxNDYgS0J5
dGUgNy40ODYzNTkgIAo0ODQ9NDgwOjQ6MDowOjA6MDowOjAKW1NVTV0gNi4wMC03LjAwIHNlYyAg
NC45OCBNQnl0ZXMgIDQxLjcgTWJpdHMvc2VjICAKMjA5Nz0yMDc4OjE3OjI6MDowOjA6MDowClsg
IDRdIDcuMDAtOC4wMCBzZWMgIDEuNzcgTUJ5dGVzICAxNC45IE1iaXRzL3NlYyAgCjg1LjQwNi82
NS43OTcvMTAzLjQxOC8xMi42MDkgbXMgKDE0LzEzMjU5NSkgIDE1MyBLQnl0ZSAyMS43NCAgCjY5
Mj02ODc6MjozOjA6MDowOjA6MApbICAyXSA3LjAwLTguMDAgc2VjICAgOTU3IEtCeXRlcyAgNy44
NCBNYml0cy9zZWMgIAoxNTMuOTM2LzEzMS40NTIvMTkxLjQ2NC8xOS4zNjEgbXMgKDcvMTQwMDQy
KSAgMTYwIEtCeXRlIDYuMzY4MTk5ICAKNDI5PTQyNTo0OjA6MDowOjA6MDowClsgIDFdIDcuMDAt
OC4wMCBzZWMgIDEuMTMgTUJ5dGVzICA5LjQ0IE1iaXRzL3NlYyAgCjEzMS4xNDYvMTA5LjczNy8x
NjYuNzc0LzIyLjAzNSBtcyAoOS8xMzExMjQpICAxNDYgS0J5dGUgOC45OTg1MjggIAo1MjA9NTE2
OjQ6MDowOjA6MDowOjAKWyAgM10gNy4wMC04LjAwIHNlYyAgMS4xMyBNQnl0ZXMgIDkuNTEgTWJp
dHMvc2VjICAKMTI2LjUxMi84OC40MDQvMjIwLjE3NS80Mi4yMzcgbXMgKDkvMTMyMDg5KSAgMTcy
IEtCeXRlIDkuMzk2Nzg0ICAKNTI3PTUyNDoxOjI6MDowOjA6MDowCltTVU1dIDcuMDAtOC4wMCBz
ZWMgIDQuOTYgTUJ5dGVzICA0MS42IE1iaXRzL3NlYyAgCjIxNjg9MjE1MjoxMTo1OjA6MDowOjA6
MAoKV2l0aCBzb3VyY2Ugc2lkZSByYXRlIGxpbWl0aW5nIHRvIDkgbWIvcyBwZXIgc3RyZWFtLgoK
W3JqbWNtYWhvbkByeXplbjM5NTAgaXBlcmYyLWNvZGVdJCBpcGVyZiAtYyAqKiogLS1oaWRlLWlw
cyAtZSAKLS10cmlwLXRpbWVzIC1pIDEgLVAgNCAtdCAxMCAtdyA0bSAtLXRjcC1xdWlja2FjayAt
TiAtYiA5bQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KQ2xpZW50IGNvbm5lY3RpbmcgdG8gKCoqaGlkZGVuKiopLCBUQ1AgcG9ydCA1
MDAxIHdpdGggcGlkIDEwODg4NCAoNCAKZmxvd3MpCldyaXRlIGJ1ZmZlciBzaXplOiAxMzEwNzIg
Qnl0ZQpUT1Mgc2V0IHRvIDB4MCBhbmQgbm9kZWxheSAoTmFnbGUgb2ZmKQpUQ1Agd2luZG93IHNp
emU6IDcuNjMgTUJ5dGUgKFdBUk5JTkc6IHJlcXVlc3RlZCAzLjgxIE1CeXRlKQpFdmVudCBiYXNl
ZCB3cml0ZXMgKHBlbmRpbmcgcXVldWUgd2F0ZXJtYXJrIGF0IDE2Mzg0IGJ5dGVzKQotLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KWyAg
MV0gbG9jYWwgKi4qLiouODUlZW5wNHMwIHBvcnQgNDY0NDggY29ubmVjdGVkIHdpdGggKi4qLiou
MTIzIHBvcnQgCjUwMDEgKHByZWZldGNoPTE2Mzg0KSAodHJpcC10aW1lcykgKHNvY2s9MykgKHFh
Y2spIAooaWN3bmQvbXNzL2lydHQ9MTQvMTQ0OC8xMDY2NikgKGN0PTEwLjcwIG1zKSBvbiAyMDIz
LTAxLTA2IDEyOjI3OjQ1IAooUFNUKQpbICAzXSBsb2NhbCAqLiouKi44NSVlbnA0czAgcG9ydCA0
NjQ2MCBjb25uZWN0ZWQgd2l0aCAqLiouKi4xMjMgcG9ydCAKNTAwMSAocHJlZmV0Y2g9MTYzODQp
ICh0cmlwLXRpbWVzKSAoc29jaz02KSAocWFjaykgCihpY3duZC9tc3MvaXJ0dD0xNC8xNDQ4LzE2
NDk5KSAoY3Q9MTYuNTQgbXMpIG9uIDIwMjMtMDEtMDYgMTI6Mjc6NDUgCihQU1QpClsgIDJdIGxv
Y2FsICouKi4qLjg1JWVucDRzMCBwb3J0IDQ2NDU0IGNvbm5lY3RlZCB3aXRoICouKi4qLjEyMyBw
b3J0IAo1MDAxIChwcmVmZXRjaD0xNjM4NCkgKHRyaXAtdGltZXMpIChzb2NrPTQpIChxYWNrKSAK
KGljd25kL21zcy9pcnR0PTE0LzE0NDgvMTY1ODApIChjdD0xNi44NiBtcykgb24gMjAyMy0wMS0w
NiAxMjoyNzo0NSAKKFBTVCkKWyAgNF0gbG9jYWwgKi4qLiouODUlZW5wNHMwIHBvcnQgNDY0NTgg
Y29ubmVjdGVkIHdpdGggKi4qLiouMTIzIHBvcnQgCjUwMDEgKHByZWZldGNoPTE2Mzg0KSAodHJp
cC10aW1lcykgKHNvY2s9NSkgKHFhY2spIAooaWN3bmQvbXNzL2lydHQ9MTQvMTQ0OC8xNjgwMikg
KGN0PTE2LjgzIG1zKSBvbiAyMDIzLTAxLTA2IDEyOjI3OjQ1IAooUFNUKQpbIElEXSBJbnRlcnZh
bCAgICAgICAgVHJhbnNmZXIgICAgQmFuZHdpZHRoICAgICAgIFdyaXRlL0VyciAgUnRyeSAgICAg
CkN3bmQvUlRUKHZhcikgICAgICAgIE5ldFB3cgouLi4KWyAgMl0gNC4wMC01LjAwIHNlYyAgMS4w
MCBNQnl0ZXMgIDguMzkgTWJpdHMvc2VjICA4LzAgICAgICAgICAwICAgICAgCjEzNEsvODgwNTUo
MTIzMjkpIHVzICAxMS45MQpbICA0XSA0LjAwLTUuMDAgc2VjICAxLjAwIE1CeXRlcyAgOC4zOSBN
Yml0cy9zZWMgIDgvMCAgICAgICAgIDAgICAgICAKMTMySy83NDg2NygxMTc1NSkgdXMgIDE0LjAx
ClsgIDFdIDQuMDAtNS4wMCBzZWMgIDEuMDAgTUJ5dGVzICA4LjM5IE1iaXRzL3NlYyAgOC8wICAg
ICAgICAgMCAgICAgIAoxMzRLLzg5MTAxKDEzMTM0KSB1cyAgMTEuNzcKWyAgM10gNC4wMC01LjAw
IHNlYyAgMS4wMCBNQnl0ZXMgIDguMzkgTWJpdHMvc2VjICA4LzAgICAgICAgICAwICAgICAgCjEz
MUsvOTE0NTEoMTE5MzgpIHVzICAxMS40NwpbU1VNXSA0LjAwLTUuMDAgc2VjICA0LjAwIE1CeXRl
cyAgMzMuNiBNYml0cy9zZWMgIDMyLzAgICAgICAgICAwClsgIDJdIDUuMDAtNi4wMCBzZWMgIDEu
MTIgTUJ5dGVzICA5LjQ0IE1iaXRzL3NlYyAgOS8wICAgICAgICAgMCAgICAgIAoxMzRLLzg1MTM1
KDE0NTgwKSB1cyAgMTMuODYKWyAgNF0gNS4wMC02LjAwIHNlYyAgMS4xMiBNQnl0ZXMgIDkuNDQg
TWJpdHMvc2VjICA5LzAgICAgICAgICAwICAgICAgCjEzMksvODUxMjQoMTU2NTQpIHVzICAxMy44
NgpbICAxXSA1LjAwLTYuMDAgc2VjICAxLjEyIE1CeXRlcyAgOS40NCBNYml0cy9zZWMgIDkvMCAg
ICAgICAgIDAgICAgICAKMTM0Sy85MTMzNigxMTMzNSkgdXMgIDEyLjkyClsgIDNdIDUuMDAtNi4w
MCBzZWMgIDEuMTIgTUJ5dGVzICA5LjQ0IE1iaXRzL3NlYyAgOS8wICAgICAgICAgMCAgICAgIAox
MzFLLzg5MTg1KDEzNDk5KSB1cyAgMTMuMjMKW1NVTV0gNS4wMC02LjAwIHNlYyAgNC41MCBNQnl0
ZXMgIDM3LjcgTWJpdHMvc2VjICAzNi8wICAgICAgICAgMApbICAyXSA2LjAwLTcuMDAgc2VjICAx
LjEyIE1CeXRlcyAgOS40NCBNYml0cy9zZWMgIDkvMCAgICAgICAgIDAgICAgICAKMTM0Sy84NTY4
NygxMzQ4OSkgdXMgIDEzLjc3ClsgIDRdIDYuMDAtNy4wMCBzZWMgIDEuMTIgTUJ5dGVzICA5LjQ0
IE1iaXRzL3NlYyAgOS8wICAgICAgICAgMCAgICAgIAoxMzJLLzgyODAzKDEzMDAxKSB1cyAgMTQu
MjUKWyAgMV0gNi4wMC03LjAwIHNlYyAgMS4xMiBNQnl0ZXMgIDkuNDQgTWJpdHMvc2VjICA5LzAg
ICAgICAgICAwICAgICAgCjEzNEsvODY4NjkoMTUxODYpIHVzICAxMy41OApbICAzXSA2LjAwLTcu
MDAgc2VjICAxLjEyIE1CeXRlcyAgOS40NCBNYml0cy9zZWMgIDkvMCAgICAgICAgIDAgICAgICAK
MTMxSy85MTQ0NygxMjUxNSkgdXMgIDEyLjkwCltTVU1dIDYuMDAtNy4wMCBzZWMgIDQuNTAgTUJ5
dGVzICAzNy43IE1iaXRzL3NlYyAgMzYvMCAgICAgICAgIDAKWyAgMl0gNy4wMC04LjAwIHNlYyAg
MS4wMCBNQnl0ZXMgIDguMzkgTWJpdHMvc2VjICA4LzAgICAgICAgICAwICAgICAgCjEzNEsvODE4
MTQoMTMxNjgpIHVzICAxMi44MgpbICA0XSA3LjAwLTguMDAgc2VjICAxLjAwIE1CeXRlcyAgOC4z
OSBNYml0cy9zZWMgIDgvMCAgICAgICAgIDAgICAgICAKMTMySy84OTAwOCgxMzI4MykgdXMgIDEx
Ljc4ClsgIDFdIDcuMDAtOC4wMCBzZWMgIDEuMDAgTUJ5dGVzICA4LjM5IE1iaXRzL3NlYyAgOC8w
ICAgICAgICAgMCAgICAgIAoxMzRLLzg5NDk0KDEyMTUxKSB1cyAgMTEuNzIKWyAgM10gNy4wMC04
LjAwIHNlYyAgMS4wMCBNQnl0ZXMgIDguMzkgTWJpdHMvc2VjICA4LzAgICAgICAgICAwICAgICAg
CjEzMUsvOTEwODMoMTI3OTcpIHVzICAxMS41MQpbU1VNXSA3LjAwLTguMDAgc2VjICA0LjAwIE1C
eXRlcyAgMzMuNiBNYml0cy9zZWMgIDMyLzAgICAgICAgICAwCgpbcm9vdEBib2JjYXQgaXBlcmYy
LWNvZGVdIyBpcGVyZiAtcyAtaSAxIC1lIC0taGlkZS1pcHMgLXcgNG0KLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNlcnZlciBsaXN0
ZW5pbmcgb24gVENQIHBvcnQgNTAwMSB3aXRoIHBpZCAyMzM5ODEKUmVhZCBidWZmZXIgc2l6ZTog
IDEyOCBLQnl0ZSAoRGlzdCBiaW4gd2lkdGg9MTYuMCBLQnl0ZSkKVENQIHdpbmRvdyBzaXplOiA3
LjYzIE1CeXRlIChXQVJOSU5HOiByZXF1ZXN0ZWQgMy44MSBNQnl0ZSkKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClsgIDFdIGxvY2Fs
ICouKi4qLjEyMyVldGgwIHBvcnQgNTAwMSBjb25uZWN0ZWQgd2l0aCAqLiouKi4xNzEgcG9ydCA0
NjQ0OCAKKHRyaXAtdGltZXMpIChzb2NrPTQpIChwZWVyIDIuMS45LW1hc3RlcikgKHFhY2spIAoo
aWN3bmQvbXNzL2lydHQ9MTQvMTQ0OC8xMTk4Nykgb24gMjAyMy0wMS0wNiAxMjoyNzo0NSAoUFNU
KQpbICAyXSBsb2NhbCAqLiouKi4xMjMlZXRoMCBwb3J0IDUwMDEgY29ubmVjdGVkIHdpdGggKi4q
LiouMTcxIHBvcnQgNDY0NTQgCih0cmlwLXRpbWVzKSAoc29jaz01KSAocGVlciAyLjEuOS1tYXN0
ZXIpIChxYWNrKSAKKGljd25kL21zcy9pcnR0PTE0LzE0NDgvMTExMzIpIG9uIDIwMjMtMDEtMDYg
MTI6Mjc6NDUgKFBTVCkKWyAgM10gbG9jYWwgKi4qLiouMTIzJWV0aDAgcG9ydCA1MDAxIGNvbm5l
Y3RlZCB3aXRoICouKi4qLjE3MSBwb3J0IDQ2NDYwIAoodHJpcC10aW1lcykgKHNvY2s9NikgKHBl
ZXIgMi4xLjktbWFzdGVyKSAocWFjaykgCihpY3duZC9tc3MvaXJ0dD0xNC8xNDQ4LzExMDk3KSBv
biAyMDIzLTAxLTA2IDEyOjI3OjQ1IChQU1QpClsgIDRdIGxvY2FsICouKi4qLjEyMyVldGgwIHBv
cnQgNTAwMSBjb25uZWN0ZWQgd2l0aCAqLiouKi4xNzEgcG9ydCA0NjQ1OCAKKHRyaXAtdGltZXMp
IChzb2NrPTcpIChwZWVyIDIuMS45LW1hc3RlcikgKHFhY2spIAooaWN3bmQvbXNzL2lydHQ9MTQv
MTQ0OC8xNzgyMykgb24gMjAyMy0wMS0wNiAxMjoyNzo0NSAoUFNUKQpbIElEXSBJbnRlcnZhbCAg
ICAgICAgVHJhbnNmZXIgICAgQmFuZHdpZHRoICAgIEJ1cnN0IExhdGVuY3kgCmF2Zy9taW4vbWF4
L3N0ZGV2IChjbnQvc2l6ZSkgaW5QIE5ldFB3ciAgUmVhZHM9RGlzdApbICA0XSAwLjAwLTEuMDAg
c2VjICAxLjA5IE1CeXRlcyAgOS4xNSBNYml0cy9zZWMgIAo5My4zODMvOTAuMTAzLzk1LjY2MS8y
LjIzMiBtcyAoOC8xNDMwMjgpICAxMjggS0J5dGUgMTIuMjUgIAo0NTE9NDUxOjA6MDowOjA6MDow
OjAKWyAgM10gMC4wMC0xLjAwIHNlYyAgMS4wOCBNQnl0ZXMgIDkuMDYgTWJpdHMvc2VjICAKOTYu
ODM0Lzk1LjIyOS8xMDIuNjQ1LzIuNDQyIG1zICg4LzE0MTU4MCkgIDEzMSBLQnl0ZSAxMS43MCAg
CjQ3Mj00NzI6MDowOjA6MDowOjA6MApbICAxXSAwLjAwLTEuMDAgc2VjICAxLjEwIE1CeXRlcyAg
OS4xOSBNYml0cy9zZWMgIAo5NS4xODMvOTIuNjIzLzk3LjU3OS8xLjQzMSBtcyAoOC8xNDM1NzEp
ICAxMzEgS0J5dGUgMTIuMDcgIAo0OTU9NDk1OjA6MDowOjA6MDowOjAKWyAgMl0gMC4wMC0xLjAw
IHNlYyAgMS4wOSBNQnl0ZXMgIDkuMTUgTWJpdHMvc2VjICAKODkuMzE3Lzg0Ljg2NS85NC45MDYv
My42NzQgbXMgKDgvMTQzMDI4KSAgMTIyIEtCeXRlIDEyLjgxICAKNDg5PTQ4OTowOjA6MDowOjA6
MDowClsgSURdIEludGVydmFsICAgICAgICBUcmFuc2ZlciAgICBCYW5kd2lkdGggICAgICAgUmVh
ZHM9RGlzdApbU1VNXSAwLjAwLTEuMDAgc2VjICA0LjM2IE1CeXRlcyAgMzYuNiBNYml0cy9zZWMg
IAoxOTA3PTE5MDc6MDowOjA6MDowOjA6MApbICA0XSAxLjAwLTIuMDAgc2VjICAxLjA3IE1CeXRl
cyAgOC45NSBNYml0cy9zZWMgIAo5Mi42NDkvODkuOTg3Lzk1LjAzNi8xLjgyOCBtcyAoOS8xMjQz
MTQpIDk2LjUgS0J5dGUgMTIuMDggIAo0OTI9NDkyOjA6MDowOjA6MDowOjAKWyAgM10gMS4wMC0y
LjAwIHNlYyAgMS4wNiBNQnl0ZXMgIDguOTMgTWJpdHMvc2VjICAKOTYuMzA1Lzk1LjY0Ny85Ni43
OTQvMC40MzIgbXMgKDkvMTIzOTkyKSAgMTAwIEtCeXRlIDExLjU5ICAKNDgwPTQ4MDowOjA6MDow
OjA6MDowClsgIDFdIDEuMDAtMi4wMCBzZWMgIDEuMDYgTUJ5dGVzICA4Ljg5IE1iaXRzL3NlYyAg
CjkyLjU3OC85MC44NjYvOTQuMTQ1LzEuMzcxIG1zICg5LzEyMzUxMCkgOTUuOCBLQnl0ZSAxMi4w
MSAgCjUxMz01MTM6MDowOjA6MDowOjA6MApbICAyXSAxLjAwLTIuMDAgc2VjICAxLjA3IE1CeXRl
cyAgOC45NiBNYml0cy9zZWMgIAo5MC43NjcvODcuOTg0Lzk0LjM1Mi8xLjk0NCBtcyAoOS8xMjQ0
NzUpIDk0LjcgS0J5dGUgMTIuMzQgIAo0ODk9NDg5OjA6MDowOjA6MDowOjAKW1NVTV0gMS4wMC0y
LjAwIHNlYyAgNC4yNiBNQnl0ZXMgIDM1LjcgTWJpdHMvc2VjICAKMTk3ND0xOTc0OjA6MDowOjA6
MDowOjAKWyAgNF0gMi4wMC0zLjAwIHNlYyAgMS4wOSBNQnl0ZXMgIDkuMTMgTWJpdHMvc2VjICAK
OTMuOTc3LzkxLjc5NS85Ni41NjEvMS42OTMgbXMgKDgvMTQyNjU2KSAgMTEyIEtCeXRlIDEyLjE0
ICAKNDk3PTQ5NzowOjA6MDowOjA6MDowClsgIDNdIDIuMDAtMy4wMCBzZWMgIDEuMDggTUJ5dGVz
ICA5LjA0IE1iaXRzL3NlYyAgCjk2LjU0NC85NS44MTUvOTcuNzk4LzAuNjkzIG1zICg4LzE0MTIw
OCkgIDExNCBLQnl0ZSAxMS43MCAgCjUwMz01MDM6MDowOjA6MDowOjA6MApbICAxXSAyLjAwLTMu
MDAgc2VjICAxLjA3IE1CeXRlcyAgOS4wMSBNYml0cy9zZWMgIAo5My45NzAvOTEuMTkzLzk2LjMy
NS8xLjc5NiBtcyAoOC8xNDA4NDYpICAxMTEgS0J5dGUgMTEuOTkgIAo1MDk9NTA5OjA6MDowOjA6
MDowOjAKWyAgMl0gMi4wMC0zLjAwIHNlYyAgMS4wOCBNQnl0ZXMgIDkuMTAgTWJpdHMvc2VjICAK
OTIuODQzLzkwLjIxNi85Ni4zNTUvMi4wNDAgbXMgKDgvMTQyMTEzKSAgMTExIEtCeXRlIDEyLjI1
ICAKNTA5PTUwOTowOjA6MDowOjA6MDowCltTVU1dIDIuMDAtMy4wMCBzZWMgIDQuMzIgTUJ5dGVz
ICAzNi4zIE1iaXRzL3NlYyAgCjIwMTg9MjAxODowOjA6MDowOjA6MDowClsgIDRdIDMuMDAtNC4w
MCBzZWMgIDEuMDYgTUJ5dGVzICA4Ljg2IE1iaXRzL3NlYyAgCjkzLjIyMi84OS4wNjMvOTYuMTA0
LzIuMzQ2IG1zICg5LzEyMzAyNykgOTYuMSBLQnl0ZSAxMS44OCAgCjQ4Nz00ODc6MDowOjA6MDow
OjA6MApbICAzXSAzLjAwLTQuMDAgc2VjICAxLjA3IE1CeXRlcyAgOC45NyBNYml0cy9zZWMgIAo5
Ni4yNzcvOTUuMDUxLzk3LjIzMC8wLjc2NyBtcyAoOS8xMjQ2MzYpICAxMDEgS0J5dGUgMTEuNjUg
IAo0ODk9NDg5OjA6MDowOjA6MDowOjAKWyAgMV0gMy4wMC00LjAwIHNlYyAgMS4wOCBNQnl0ZXMg
IDkuMDIgTWJpdHMvc2VjICAKOTMuODk5Lzg4LjczMi85Ni45NzIvMi43MzcgbXMgKDkvMTI1Mjgw
KSA5OC42IEtCeXRlIDEyLjAxICAKNDkzPTQ5MzowOjA6MDowOjA6MDowClsgIDJdIDMuMDAtNC4w
MCBzZWMgIDEuMDcgTUJ5dGVzICA4Ljk3IE1iaXRzL3NlYyAgCjkyLjQ5MC84OS44NjIvOTUuMjY1
LzEuNzk2IG1zICg5LzEyNDYzNikgOTYuNiBLQnl0ZSAxMi4xMyAgCjQ5Mz00OTM6MDowOjA6MDow
OjA6MApbU1VNXSAzLjAwLTQuMDAgc2VjICA0LjI3IE1CeXRlcyAgMzUuOCBNYml0cy9zZWMgIAox
OTYyPTE5NjI6MDowOjA6MDowOjA6MApbICA0XSA0LjAwLTUuMDAgc2VjICAxLjA3IE1CeXRlcyAg
OS4wMCBNYml0cy9zZWMgIAo5Mi40MzEvODEuODg4Lzk2LjIyMS80LjUyNCBtcyAoOS8xMjQ5NTgp
IDk2LjggS0J5dGUgMTIuMTcgIAo0OTg9NDk4OjA6MDowOjA6MDowOjAKWyAgMV0gNC4wMC01LjAw
IHNlYyAgMS4wNyBNQnl0ZXMgIDguOTcgTWJpdHMvc2VjICAKOTUuMDE4LzkzLjQ0NS85Ni4yMDAv
MC45NTcgbXMgKDkvMTI0NjM2KSA5OS4zIEtCeXRlIDExLjgxICAKNDkwPTQ5MDowOjA6MDowOjA6
MDowClsgIDJdIDQuMDAtNS4wMCBzZWMgIDEuMDYgTUJ5dGVzICA4LjkwIE1iaXRzL3NlYyAgCjkz
Ljg3NC84Ni40ODUvOTUuNjcyLzIuODEwIG1zICg5LzEyMzY3MSkgOTcuMyBLQnl0ZSAxMS44NiAg
CjQ4MT00ODE6MDowOjA6MDowOjA6MApbICAzXSA0LjAwLTUuMDAgc2VjICAxLjA4IE1CeXRlcyAg
OS4wOSBNYml0cy9zZWMgIAo5NS43MzcvOTMuODgxLzk3LjE5Ny8wLjk3MiBtcyAoOS8xMjYyNDUp
ICAxMDEgS0J5dGUgMTEuODcgIAo0ODQ9NDg0OjA6MDowOjA6MDowOjAKW1NVTV0gNC4wMC01LjAw
IHNlYyAgNC4yOSBNQnl0ZXMgIDM2LjAgTWJpdHMvc2VjICAKMTk1Mz0xOTUzOjA6MDowOjA6MDow
OjAKWyAgNF0gNS4wMC02LjAwIHNlYyAgMS4wOSBNQnl0ZXMgIDkuMTMgTWJpdHMvc2VjICAKOTIu
OTA4Lzg2Ljg0NC85NS45OTQvMy4wMTIgbXMgKDgvMTQyNjU2KSAgMTExIEtCeXRlIDEyLjI4ICAK
NDY3PTQ2NzowOjA6MDowOjA6MDowClsgIDNdIDUuMDAtNi4wMCBzZWMgIDEuMDcgTUJ5dGVzICA4
Ljk0IE1iaXRzL3NlYyAgCjk2LjU5My85NS4zNDMvOTcuNjYwLzAuODc2IG1zICg4LzEzOTc2MCkg
IDExMyBLQnl0ZSAxMS41OCAgCjQ3OD00Nzg6MDowOjA6MDowOjA6MApbICAxXSA1LjAwLTYuMDAg
c2VjICAxLjA4IE1CeXRlcyAgOS4wMyBNYml0cy9zZWMgIAo5NS4wMjEvOTEuNDIxLzk3LjE2Ny8x
Ljg5MyBtcyAoOC8xNDEwMjcpICAxMTIgS0J5dGUgMTEuODcgIAo0OTE9NDkxOjA6MDowOjA6MDow
OjAKWyAgMl0gNS4wMC02LjAwIHNlYyAgMS4wOCBNQnl0ZXMgIDkuMDYgTWJpdHMvc2VjICAKOTIu
MTYyLzgyLjcyMC85Ny42OTIvNS4wNjAgbXMgKDgvMTQxNTcwKSAgMTA5IEtCeXRlIDEyLjI5ICAK
NDg4PTQ4ODowOjA6MDowOjA6MDowCltTVU1dIDUuMDAtNi4wMCBzZWMgIDQuMzEgTUJ5dGVzICAz
Ni4yIE1iaXRzL3NlYyAgCjE5MjQ9MTkyNDowOjA6MDowOjA6MDowClsgIDRdIDYuMDAtNy4wMCBz
ZWMgIDEuMDQgTUJ5dGVzICA4LjcwIE1iaXRzL3NlYyAgCjkyLjc5My84NS4zNDMvOTYuOTY3LzMu
NTUyIG1zICg5LzEyMDc3NSkgOTMuOSBLQnl0ZSAxMS43MSAgCjQ4NT00ODU6MDowOjA6MDowOjA6
MApbICAyXSA2LjAwLTcuMDAgc2VjICAxLjA1IE1CeXRlcyAgOC43OSBNYml0cy9zZWMgIAo5MS42
NzkvODQuNDc5Lzk2Ljc2MC8zLjk3NSBtcyAoOS8xMjIwNjIpIDkzLjggS0J5dGUgMTEuOTggIAo0
NzI9NDcyOjA6MDowOjA6MDowOjAKWyAgM10gNi4wMC03LjAwIHNlYyAgMS4wNiBNQnl0ZXMgIDgu
ODggTWJpdHMvc2VjICAKOTYuOTgyLzk1LjkzMy85OC4zNzEvMC42ODAgbXMgKDkvMTIzMzQ5KSAg
MTAwIEtCeXRlIDExLjQ1ICAKNDc3PTQ3NzowOjA6MDowOjA6MDowClsgIDFdIDYuMDAtNy4wMCBz
ZWMgIDEuMDUgTUJ5dGVzICA4LjgwIE1iaXRzL3NlYyAgCjk0LjM0Mi85MS42NjAvOTYuMDI1LzEu
NjYwIG1zICg5LzEyMjIyMykgOTYuNyBLQnl0ZSAxMS42NiAgCjQ5ND00OTQ6MDowOjA6MDowOjA6
MApbU1VNXSA2LjAwLTcuMDAgc2VjICA0LjE5IE1CeXRlcyAgMzUuMiBNYml0cy9zZWMgIAoxOTI4
PTE5Mjg6MDowOjA6MDowOjA6MApbICA0XSA3LjAwLTguMDAgc2VjICAxLjEwIE1CeXRlcyAgOS4y
NSBNYml0cy9zZWMgIAo5Mi41MTUvODguMTgyLzk2LjM1MS8yLjUzOCBtcyAoOC8xNDQ0NjYpICAx
MTIgS0J5dGUgMTIuNDkgIAo1MTA9NTEwOjA6MDowOjA6MDowOjAKWyAgM10gNy4wMC04LjAwIHNl
YyAgMS4wOSBNQnl0ZXMgIDkuMTMgTWJpdHMvc2VjICAKOTYuNTgwLzk1LjczNy85OC45NzcvMS4w
OTggbXMgKDgvMTQyNjU2KSAgMTE1IEtCeXRlIDExLjgyICAKNDgwPTQ4MDowOjA6MDowOjA6MDow
ClsgIDFdIDcuMDAtOC4wMCBzZWMgIDEuMTAgTUJ5dGVzICA5LjIxIE1iaXRzL3NlYyAgCjk1LjI2
OS85MS43MTkvOTcuNTE0LzIuMTI2IG1zICg4LzE0MzkyMykgIDExNSBLQnl0ZSAxMi4wOSAgCjUx
NT01MTU6MDowOjA6MDowOjA6MApbICAyXSA3LjAwLTguMDAgc2VjICAxLjExIE1CeXRlcyAgOS4y
OSBNYml0cy9zZWMgIAo5MC4wNzMvODQuNzAwLzk2LjE3Ni80LjMyNCBtcyAoOC8xNDUxOTApICAx
MTAgS0J5dGUgMTIuOTAgIAo1MDg9NTA4OjA6MDowOjA6MDowOjAKW1NVTV0gNy4wMC04LjAwIHNl
YyAgNC40MCBNQnl0ZXMgIDM2LjkgTWJpdHMvc2VjICAKMjAxMz0yMDEzOjA6MDowOjA6MDowOjAK
CkJvYgoKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiAKPj4gRnJvbTogTGlicmVRb1Mg
PGxpYnJlcW9zLWJvdW5jZXNAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiBPbiBCZWhhbGYgT2YKPiBE
YXZlIFRhaHQKPiAKPj4gdmlhIExpYnJlUW9TCj4gCj4+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFy
eSA0LCAyMDIzIDEyOjI2IFBNCj4gCj4+IFN1YmplY3Q6IFtMaWJyZVFvU10gdGhlIGdyaW5jaCBt
ZWV0cyBjbG91ZGZsYXJlJ3MgY2hyaXN0bWFzIHByZXNlbnQKPiAKPj4gCj4gCj4+IFBsZWFzZSB0
cnkgdGhlIG5ldywgdGhlIHNoaW55LCB0aGUgcmVhbGx5IHdvbmRlcmZ1bCB0ZXN0IGhlcmU6Cj4g
Cj4+IAo+IGh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovL3NwZWVkLmNsb3VkZmxh
cmUuY29tL19fOyEhQmhkVCFpWmNGSjhXVlU5Uwo+IFsxXQo+IAo+PiAKPiA5eno1dDQ1Nm94a2ZP
YnJDNVhiOWo1QUc4VU8zRHFENXg0R0FKa2F3WnIwaUd3RVV0RjBfMDlVOG1DRG5Ba3JKOVFFTUhH
YkNNS1Z3JAo+IFsxXQo+IAo+PiAKPiAKPj4gSSB3b3VsZCByZWFsbHkgYXBwcmVjaWF0ZSBzb21l
IGluZGVwZW5kZW50IHZlcmlmaWNhdGlvbiBvZgo+IAo+PiBtZWFzdXJlbWVudHMgdXNpbmcgdGhp
cyB0b29sLiBJbiBteSBicmllZiBleHBlcmltZW50cyBpdCBhcHBlYXJzIC0KPiBhcwo+IAo+PiBh
bGwgdGhlIGNvbW1lcmNpYWwgdG9vbHMgdG8gZGF0ZSAtIHRvIGRyYW1hdGljYWxseSB1bmRlcnN0
YXRlIHRoZQo+IAo+PiBidWZmZXJibG9hdCwgb24gbXkgTFRFLCAoYW5kIG15IHN0YXJsaW5rIHRl
cm1pbmFsIGlzIG91dCBiZWluZwo+IAo+PiBoYWNrZWReSF5IXkheSF5IXkh3b3JrZWQgb24sIHNv
IEkgY2FuJ3QgbWVhc3VyZSB0aGF0KQo+IAo+IFthY21dCj4gCj4gSGkgRGF2ZSwgSSBtYWRlIHNv
bWUgdGltZSB0byB0ZXN0ICJjbG91ZGZsYXJlJ3MgY2hyaXN0bWFzIHByZXNlbnQiCj4geWVzdGVy
ZGF5Lgo+IAo+IEknbSBvbiBET0NTSVMgMy4xIHNlcnZpY2Ugd2l0aCAxR2JwcyBEb3duLiBUaGUg
VXBzdHJlYW0gaGFzIGEgInR1cmJvIgo+IG1vZGUgd2l0aCA0MC01ME1icHMgZm9yIHRoZSBmaXJz
dCB+MyBzZWMsIHRoZW4gc3RlYWR5LXN0YXRlIGFib3V0Cj4gMjNNYnBzLgo+IAo+IFdoZW4gSSBz
YXcgdGhlIH42MjBNYnBzIERvd25zdHJlYW0gbWVhc3VyZW1lbnQsIEkgd2FzIHJlYWR5IHRvCj4g
Y29tcGxhaW4gdGhhdCBldmVuIHRoZSBJUC1MYXllciBDYXBhY2l0eSB3YXMgZ3Jvc3NseSB1bmRl
cmVzdGltYXRlZC4KPiBJbiBhZGRpdGlvbiwgdGhlIExhdGVuY3kgbWVhc3VyZW1lbnRzIHNlZW0g
dmVyeSBsb3cgKGFzIHlvdSBhc3NlcnRlZCksCj4gYWx0aG91Z2ggdGhlIGNsb3VkIHNlcnZlciB3
YXMg4oCcbmVhcmJ54oCdLgo+IAo+IEhvd2V2ZXIsIEkgZm91bmQgdGhhdCBPb2tsYSBhbmQgdGhl
IElTUC1wcm92aWRlZCBtZWFzdXJlbWVudCB3ZXJlIGFsc28KPiByZXBvcnRpbmcgfjYwME1icHMh
IFNvIHRoZSBjbG91ZGZsYXJlIERvd25zdHJlYW0gY2FwYWNpdHkgKG9yCj4gdGhyb3VnaHB1dD8p
IG1lYXN1cmVtZW50IHdhcyBjb25zaXN0ZW50IHdpdGggb3RoZXJzLiBPdXIgVURQU1Qgc2VydmVy
Cj4gd2FzIHVucmVhY2hhYmxlLCBvdGhlcndpc2UgSSB3b3VsZCBoYXZlIGFkZGVkIHRoYXQgbWVh
c3VyZW1lbnQsIHRvby4KPiAKPiBUaGUgVXBzdHJlYW0gbWVhc3VyZW1lbnQgZ3JhcGggc2VlbXMg
dG8gaWxsdXN0cmF0ZSB0aGUg4oCcdHVyYm/igJ0KPiBtb2RlLCB3aXRoIHRoZSBkaXAgYWZ0ZXIg
YXR0YWluaW5nIDQ0LjVNYnBzLgo+IAo+IFVEUFNUIHNhdHVyYXRlcyB0aGUgdXBsaW5rIGFuZCB3
ZSBtZWFzdXJlIHRoZSBmdWxsIDI1MG1zIG9mIHRoZQo+IFVwc3RyZWFtIGJ1ZmZlci4gQ2xvdWRm
bGFyZeKAmXMgbGF0ZW5jeSBtZWFzdXJlbWVudHMgZG9u4oCZdCBldmVuIGNvbWUKPiBjbG9zZS4K
PiAKPiBBbAo+IAo+IAo+IAo+IExpbmtzOgo+IC0tLS0tLQo+IFsxXSAKPiBodHRwczovL3VybGRl
ZmVuc2UuY29tL3YzL19faHR0cHM6L3NwZWVkLmNsb3VkZmxhcmUuY29tL19fOyEhQmhkVCFpWmNG
SjhXVlU5Uzl6ejV0NDU2b3hrZk9ickM1WGI5ajVBRzhVTzNEcUQ1eDRHQUprYXdacjBpR3dFVXRG
MF8wOVU4bUNEbkFrcko5UUVNSEdiQ01LVnckCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBScG0gbWFpbGluZyBsaXN0Cj4gUnBtQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL3JwbQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8633BD838
	for <lists+cake@lfdr.de>; Tue,  6 Jul 2021 16:28:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E8C5A3CB52;
	Tue,  6 Jul 2021 10:28:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625581722;
	bh=Ix2qpVplh0c2H3fpNbv/1QKVFmtedc9MElFPVg3JRvU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=COFN2u8+aeHp6jBYrcGslkVax0nv39W250nlRRxcZcL2Q9KNSU/Ab45vB1Xl25b62
	 bIe4LEG7T1y4JLVibPqW1n1UHLbADq/TwSWR9y1EnXXXGzBVmULjoZpzOfjgUDqm3E
	 2+jALMsQkQC6ghXalElVf3EUkbFArLMHUZQwDyyLzlfwp1fY+RZRKoGOwcsJgqRc5b
	 +ucYQow5n0LIBBxMv+n1EKYQh3kFNCC+8Fh5V7aYNKyzafepY014Ik7X1pFeAQroVj
	 PxApUIpAjXgN4qt6aigWmHm7jOVLLtZ/2SmeUNHroT43ubHtjtDX5c+KzdnhEIpYzf
	 /ngZ12nrdMaGA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 46B123CB37;
 Tue,  6 Jul 2021 09:46:42 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.119])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 685861C006C;
 Tue,  6 Jul 2021 13:46:40 +0000 (UTC)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 B8DCF7C0075; Tue,  6 Jul 2021 13:46:39 +0000 (UTC)
Received: from [192.168.254.6] (unknown [50.34.183.227])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id A466F13C2B1;
 Tue,  6 Jul 2021 06:46:38 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com A466F13C2B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1625579199;
 bh=KhX4By2bUyTKPRt0U+oVUwpQKn/dRtzXmsu3dWsa6Ng=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=N9Ox7M57oUhJvznnSVT9Si8QNi7yqMQGSC8KGLNuPLhxH9bM0K+DH3RaUIt+Oh6Pb
 UWl3I2+gCpWydmpflMOoeFTuqYa/EsoFR+llgVwWGoIoqnIkgNSEaGssboIcX+Trg9
 OCa9lQFuDIj//52aYhckDBE6OkiUoswmLGMBqIBQ=
To: Bob McMahon <bob.mcmahon@broadcom.com>, Dave Taht <dave.taht@gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
Date: Tue, 6 Jul 2021 06:46:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
Content-Language: en-MW
X-MDID: 1625579200-7yLXwK7TMDS4
X-Mailman-Approved-At: Tue, 06 Jul 2021 10:28:42 -0400
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
 Internet Quality workshop CFP for the internet architecture board
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG8sCgpJIGFtIGludGVyZXN0ZWQgdG8gaGVhciB3aXNoIGxpc3RzIGZvciBuZXR3b3JrIHRl
c3RpbmcgZmVhdHVyZXMuICBXZSBtYWtlIHRlc3QgZXF1aXBtZW50LCBzdXBwb3J0aW5nIGxvdHMK
b2Ygd2lmaSBzdGF0aW9ucyBhbmQgYSBkaXN0cmlidXRlZCBhcmNoaXRlY3R1cmUsIHdpdGggYnVp
bHQtaW4gdWRwLCB0Y3AsIGlwdjYsIGh0dHAsIC4uLiBwcm90b2NvbHMsCmFuZCBvcGVuIHRvIGNy
ZWF0aW5nL2ltcHJvdmluZyBzb21lIG9mIG91ciBhdXRvbWF0ZWQgdGVzdHMuCgpJIGtub3cgRGF2
ZSBoYXMgc29tZSB0ZXN0IHNjcmlwdHMgYWxyZWFkeSwgc28gSSdtIG5vdCBuZWNlc3NhcmlseSBs
b29raW5nIHRvIHJlaW1wbGVtZW50IHRoYXQsCmJ1dCBtb3JlIGZpc2hpbmcgZm9yIG90aGVyL25l
dyBpZGVhcy4KClRoYW5rcywKQmVuCgpPbiA3LzIvMjEgNDoyOCBQTSwgQm9iIE1jTWFob24gd3Jv
dGU6Cj4gSSB0aGluayB3ZSBuZWVkIHRoZSBsYW5ndWFnZcKgb2YgbWF0aCBoZXJlLiBJdCBzZWVt
cyBsaWtlIHRoZSBuZXR3b3JrIHBvd2VyIG1ldHJpYywgaW50cm9kdWNlZCBieSBLbGVpbnJvY2sg
YW5kwqBKYWZmZSBpbiB0aGUgbGF0ZSA3MHMsIGlzIHNvbWV0aGluZyB1c2VmdWwuIAo+IEVmZmVj
dGl2ZSBlbmQvZW5kIHF1ZXVlIGRlcHRocyBwZXIgTGl0dGxlJ3MgbGF3IGFsc28gc2VlbXMgdXNl
ZnVsLiBCb3RoIGFyZSBhdmFpbGFibGUgaW4gaXBlcmYgMiBmcm9tIGEgdGVzdCBwZXJzcGVjdGl2
ZS4gUmVwdXJwb3NpbmcgdGVzdCB0ZWNobmlxdWVzIHRvIGFjdHVhbCAKPiB0cmFmZmljIGNvdWxk
IGJlIHVzZWZ1bC4gSGVuY2XCoHRoZSBxdWVzdGlvbiBhcm91bmQgd2hhdCBleGFjdCB0ZWxlbWV0
cnkgaXMgdXNlZnVsIHRvIGFwcHMgbWFraW5nIHNvY2tldCB3cml0ZSgpIGFuZCByZWFkKCkgY2Fs
bHMuCj4gCj4gQm9iCj4gCj4gT24gRnJpLCBKdWwgMiwgMjAyMSBhdCAxMDowNyBBTSBEYXZlIFRh
aHQgPGRhdmUudGFodEBnbWFpbC5jb20gPG1haWx0bzpkYXZlLnRhaHRAZ21haWwuY29tPj4gd3Jv
dGU6Cj4gCj4gICAgIEluIHRlcm1zIG9mIHRyeWluZyB0byBmaW5kICJRdWFsaXR5IiBJIGhhdmUg
dHJpZWQgdG8gZW5jb3VyYWdlIGZvbGsgdG8KPiAgICAgYm90aCByZWFkICJ6ZW4gYW5kIHRoZSBh
cnQgb2YgbW90b3JjeWNsZSBtYWludGVuYW5jZSJbMF0sIGFuZCBEZW1pbmcncwo+ICAgICB3b3Jr
IG9uICJ0b3RhbCBxdWFsaXR5IG1hbmFnZW1lbnQiLgo+IAo+ICAgICBNeSBvd24gc2xpY2UgYXQg
dGhpcyBuZXR3b3JrLCBjb21wdXRlciBhbmQgbGlmZXN0eWxlICJpc3N1ZSIgaXMgYWltaW5nCj4g
ICAgIGZvciAiaW1wZXJjZXB0aWJsZSBsYXRlbmN5IiBpbiBhbGwgdGhpbmdzLiBbMV0uIFRoZXJl
J3MgYSBsb3Qgb2YKPiAgICAgZmFsbG91dCBmcm9tIHRoYXQgaW4gdGVybXMgb2Ygbm90IGp1c3Qg
YWRkcmVzc2luZyBxdWV1aW5nIGRlbGF5LCBidXQKPiAgICAgY2FjaGluZywgcHJlZmV0Y2hpbmcs
IGFuZCBsZWFybmluZyBtb3JlIGFib3V0IHdoYXQgYSB1c2VyIHJlYWxseSBuZWVkcwo+ICAgICAo
YXMgb3Bwb3NlZCB0byB3YW50cykgdG8ga25vdyB2aWEgaW50ZWxsaWdlbnQgYWdlbnRzLgo+IAo+
ICAgICBbMF0gSWYgeW91IHdhbnQgdG8gZ2V0IGRlcHJlc3NlZCwgcmVhZCBQaXJzaWcncyBzdWNj
ZXNzb3IgdG8gInplbi4uLiIsCj4gICAgIGxpbGEsIHdoaWNoIGlzIGluIHBhcnQgYWJvdXQgd2hh
dCBoYXBwZW5zIHdoZW4gYW4gZW5naW5lZXIgaGl0cyBhbgo+ICAgICBpbnNvbHVibGUgcHJvYmxl
bS4KPiAgICAgWzFdIGh0dHBzOi8vd3d3LmludGVybmV0c29jaWV0eS5vcmcvZXZlbnRzL2xhdGVu
Y3kyMDEzLyA8aHR0cHM6Ly93d3cuaW50ZXJuZXRzb2NpZXR5Lm9yZy9ldmVudHMvbGF0ZW5jeTIw
MTMvPgo+IAo+IAo+IAo+ICAgICBPbiBUaHUsIEp1bCAxLCAyMDIxIGF0IDY6MTYgUE0gRGF2aWQg
UC4gUmVlZCA8ZHByZWVkQGRlZXBwbHVtLmNvbSA8bWFpbHRvOmRwcmVlZEBkZWVwcGx1bS5jb20+
PiB3cm90ZToKPiAgICAgID4KPiAgICAgID4gV2VsbCwgbmljZSB0aGF0IHRoZSBmb2xrcyBkb2lu
ZyB0aGUgY29uZmVyZW5jZcKgIGFyZSB3aWxsaW5nIHRvIGNvbnNpZGVyIHRoYXQgcXVhbGl0eSBv
ZiB1c2VyIGV4cGVyaWVuY2UgaGFzIGxpdHRsZSB0byBkbyB3aXRoIHNpZ25hbGxpbmcgcmF0ZSBh
dCB0aGUKPiAgICAgcGh5c2ljYWwgbGF5ZXIgb3IgdGhyb3VnaHB1dCBvZiBGVFAgdHJhbnNmZXJz
Lgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPiBCdXQgaG9uZXN0bHksIHRoZSBm
YWN0IHRoYXQgdGhleSBjYWxsIHRoZSBwcm9ibGVtICJuZXR3b3JrIHF1YWxpdHkiIHN1Z2dlc3Rz
IHRoYXQgdGhleSBSRUFMTFksIFJFQUxMWSBkb24ndCB1bmRlcnN0YW5kIHRoZSBJbnRlcm5ldCBp
c24ndCB0aGUgaGFyZHdhcmUgb3IKPiAgICAgdGhlIHJvdXRlcnMgb3IgZXZlbiB0aGUgcm91dGlu
ZyBhbGdvcml0aG1zICp0byBpdHMgdXNlcnMqLgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPgo+
ICAgICAgPiBCeSBpZ25vcmluZyB0aGUgZGl2ZXJzaXR5IG9mIGFwcGxpY2F0aW9ucyBub3cgYW5k
IGluIHRoZSBmdXR1cmUsIGFuZCB0aGUgZmFjdCB0aGF0IHdlIERPTidUIEtOT1cgd2hhdCB3aWxs
IGJlIGNvbWluZyB1cCwgdGhpcyBjb25mZXJlbmNlIHdpbGwgbGlrZWx5IGZhbGwKPiAgICAgaW50
byB0aGUgdXN1YWwgdHJhcCB0aGF0IG5ldC1oZWFkcyBmYWxsIGludG8gLSBvcHRpbWl6aW5nIGZv
ciBzb21lIGltYWdpbmFyeSByZWFsaXR5IHRoYXQgZG9lc24ndCBleGlzdCwgYW5kIGluIGZhY3Qg
d2lsbCBwcm9iYWJseSBuZXZlciBiZSB3aGF0IHVzZXJzCj4gICAgIGFjdHVhbGx5IHdpbGwgZG8g
Z2l2ZW4gdGhlIGNoYW5jZS4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4gSSBz
YXcgdGhpcyBpc3N1ZSBpbiAxOTc2IGluIHRoZSBncm91cCBkZXZlbG9waW5nIHRoZSBvcmlnaW5h
bCBJbnRlcm5ldCBwcm90b2NvbHMgLSBhIGRlc2lyZSB0byBwdXQgKmludG8gdGhlIG5ldHdvcmsq
IHNwZWNpYWwgdHJpY2tzIHRvIG9wdGltaXplIEFTUjMzCj4gICAgIGxvZ2lucyB0byByZW1vdGUg
Y29tcHV0ZXJzIGZyb20gdGVybWluYWwgY29uY2VudHJhdG9ycyAoYWthIHJlbW90ZSBsb2dpbiks
IGJ1bGsgZmlsZSB0cmFuc2ZlcnMgYmV0d2VlbiBmaWxlIHN5c3RlbXMgb24gZGlmZmVyZW50IHRp
bWUtc2hhcmluZyBzeXN0ZW1zLCBhbmQKPiAgICAgInNlc3Npb25zIiAodmlydHVhbCBjaXJjdWl0
cykgdGhhdCByZXF1aXJlZCBsb2dpbnMuIEFuZCB0aGVuIHRyeWluZyB0byBleHBsb2l0IHVuZGVy
bHlpbmcgIm11bHRpY2FzdCIgYnkgYnVpbGRpbmcgaXQgaW50byB0aGUgSVAgbGF5ZXIsIGJlY2F1
c2Ugc29tZW9uZQo+ICAgICB0aG91Z2h0IHRoYXQgVFYgYnJvYWRjYXN0IHdvdWxkIGJlIHRoZSBk
b21pbmFudCBhcHBsaWNhdGlvbi4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4g
RnJhbmtseSwgdG8gdGhpbmsgb2YgInF1YWxpdHkiIGFzIHNvbWV0aGluZyB0aGF0IGNhbiBiZSAi
cHJvdmlkZWQiIGJ5ICJ0aGUgbmV0d29yayIgbWlzc2VzIHRoZSBlbnRpcmUgcG9pbnQgb2YgImVu
ZC10by1lbmQgYXJndW1lbnQgaW4gc3lzdGVtIGRlc2lnbiIuCj4gICAgIFF1YWxpdHkgaXMgbm90
IGEgcHJvcGVydHkgZGVmaW5lZCBvciBjcmVhdGVkIGJ5IFRoZSBOZXR3b3JrLiBJZiB5b3Ugd2Fu
dCB0byB0YWxrIGFib3V0IFF1YWxpdHksIHlvdSBuZWVkIHRvIHRhbGsgYWJvdXQgdXNlcnMgLSBh
bGwgdGhlIHVzZXJzIGF0IGFsbCB0aW1lcywKPiAgICAgbm93IGFuZCBpbnRvIHRoZSBmdXR1cmUs
IGFuZCB0aGF0J3Mgc29tZXRoaW5nIHlvdSBjYW4ndCBkbyBpZiB5b3UgZG9uJ3QgYm90aGVyIHRv
IGluY2x1ZGUgY3VycmVudCBhbmQgZnV0dXJlIHVzZXJzIHRhbGtpbmcgYWJvdXQgd2hhdCB0aGV5
IG1pZ2h0IGV4cGVjdCB0bwo+ICAgICBleHBlcmllbmNlIHRoYXQgdGhleSBkb24ndCBleHBlcmll
bmNlLgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPiBUaGVyZSB3YXMgbXVjaCBm
aWdodGluZyBiYWNrIGluIDE5NzYgdGhhdCBiYXNpY2FsbHkgaW52b2x2ZWQgIm5ldHdvcmsgZXhw
ZXJ0cyIgc2F5aW5nIHRoYXQgdGhlIG5ldHdvcmsgd2FzIHRoZSBwbGFjZSB0byAic29sdmUiIHN1
Y2ggaXNzdWVzIGFzIHF1YWxpdHksCj4gICAgIHNvIGFwcGxpY2F0aW9ucyBjb3VsZCBhdm9pZCBo
YXZpbmcgdG8gc29sdmUgc3VjaCBpc3N1ZXMuCj4gICAgICA+Cj4gICAgICA+Cj4gICAgICA+Cj4g
ICAgICA+IFdoYXQgc29tZSBvZiB1cyBtYW5hZ2VkIHRvIGRvIHdhcyB0byBhcmd1ZSB0aGF0IHlv
dSBjYW4ndCAic29sdmUiIHN1Y2ggaXNzdWVzLiBBbGwgeW91IGNhbiBkbyBpcyBwcm92aWRlIGEg
ZnJhbWV3b3JrIHRoYXQgZW5hYmxlcyBkaWZmZXJlbnQgdXNlcyB0bwo+ICAgICAqY29vcGVyYXRl
KiBpbiBzb21lIHdheS4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4gV2hpY2gg
aXMgd2h5IHRoZSBJbnRlcm5ldCBkcm9wcyBwYWNrZXRzIHJhdGhlciB0aGFuIHF1ZXVlaW5nIHRo
ZW0sIGFuZCB3aHkgZGlmZnNlcnYgY2Fubm90IHdvcmsuCj4gICAgICA+Cj4gICAgICA+IChJIGtu
b3cgdGhlIGxhdHRlciBpcyBjb25mdHJvdmVyc2lhbCwgYnV0IGF0IHRoZSBtb21lbnQsIEFMTCBv
ZiBkaWZmc2VydiBhdHRlbXB0cyB0byB0YWxrIGFib3V0IGVuZC10by1lbmQgYXBwbGljYWl0b24g
c3BlY2lmaWMgbWV0cmljcywgYnV0IG5ldmVyLCBldmVyCj4gICAgIGV4cGxhaW5zIHdoYXQgdGhl
IGRpZmZzZXJ2IGNvbnRyb2wgcG9pbnRzIGFjdHVhbGx5IGRvIHcuci50LiB3aGF0IHRoZSBJUCBs
YXllciBjYW4gYWN0dWFsbHkgY29udHJvbC4gU28gaXQgaXMgbWVhbmluZ2xlc3MgLSBhbm90aGVy
IHZpb2xhdGlvbiBvZiB0aGUKPiAgICAgc28tY2FsbGVkIGVuZC10by1lbmQgcHJpbmNpcGxlKS4K
PiAgICAgID4KPiAgICAgID4KPiAgICAgID4KPiAgICAgID4gTmV0d29ya3MgYXJlIGFib3V0IGdl
dHRpbmcgcGFja2V0cyBmcm9tIGhlcmUgdG8gdGhlcmUsIG11bHRpcGxleGluZyB0aGUgdW5kZXJs
eWluZyByZXNvdXJjZXMuIFRoYXQncyBpdC4gUXVhbGl0eSBpcyBhIHdob2xlIGRpZmZlcmVudCB0
aGluZy4gUXVhbGl0eSBjYW4KPiAgICAgYmUgaW1wcm92ZWQgYnkgZW5kLXRvLWVuZCBhcHByb2Fj
aGVzLCBpZiB0aGUgdW5kZXJseWluZyBuZXR3b3JrIHByb3ZpZGVzIHNvbWUga2luZCBvZiB0aGlu
ZyB0aGF0IGFjdHVhbGx5IGNyZWF0ZXMgYSB3YXkgZm9yIGVuZC10by1lbmQgYXBwbGljYXRpb25z
IHRvCj4gICAgIGFmZmVjdCBxdWV1ZWluZyBhbmQgcm91dGluZyBkZWNpc2lvbnMsIGFuZCBtb3Jl
IGltcG9ydGFudGx5IGdldHRpbmcgInRlbGVtZXRyeSIgZnJvbSB0aGUgbmV0d29yayByZWdhcmRp
bmcgd2hhdCBpcyBhY3R1YWxseSBnb2luZyBvbiB3aXRoIHRoZSBvdGhlcgo+ICAgICBlbmQtdG8t
ZW5kIHVzZXJzIHNoYXJpbmcgdGhlIGluZnJhc3RydWN0dXJlLgo+ICAgICAgPgo+ICAgICAgPgo+
ICAgICAgPgo+ICAgICAgPiBUaGlzIGNvbmZlcmVuY2Ugd29uJ3QgdGFsayBhYm91dCBpdCB0aGlz
IHdheS4gU28gZG9uJ3Qgd2FzdGUgeW91ciB0aW1lLgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAg
Pgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPgo+ICAgICAgPiBPbiBXZWRuZXNk
YXksIEp1bmUgMzAsIDIwMjEgODoxMnBtLCAiRGF2ZSBUYWh0IiA8ZGF2ZS50YWh0QGdtYWlsLmNv
bSA8bWFpbHRvOmRhdmUudGFodEBnbWFpbC5jb20+PiBzYWlkOgo+ICAgICAgPgo+ICAgICAgPiA+
IFRoZSBwcm9ncmFtIGNvbW1pdHRlZSBtZW1iZXJzIGFyZSAqYW1hemluZyouIFBlcmhhcHMsIGZp
bmFsbHksIHdlIGNhbgo+ICAgICAgPiA+IG1vdmUgdGhlIGJhciBmb3IgdGhlIGludGVybmV0J3Mg
cXVhbGl0eSBtZXRyaWNzIHBhc3QgZW5kbGVzcywgYmxpbmQKPiAgICAgID4gPiByZXBldGl0aW9u
cyBvZiBzcGVlZHRlc3QuCj4gICAgICA+ID4KPiAgICAgID4gPiBGb3IgY29tcGxldGUgZGV0YWls
cywgcGxlYXNlIHNlZToKPiAgICAgID4gPiBodHRwczovL3d3dy5pYWIub3JnL2FjdGl2aXRpZXMv
d29ya3Nob3BzL25ldHdvcmstcXVhbGl0eS8gPGh0dHBzOi8vd3d3LmlhYi5vcmcvYWN0aXZpdGll
cy93b3Jrc2hvcHMvbmV0d29yay1xdWFsaXR5Lz4KPiAgICAgID4gPgo+ICAgICAgPiA+IFN1Ym1p
c3Npb25zIER1ZTogTW9uZGF5IDJuZCBBdWd1c3QgMjAyMSwgbWlkbmlnaHQgQU9FIChBbnl3aGVy
ZSBPbiBFYXJ0aCkKPiAgICAgID4gPiBJbnZpdGF0aW9ucyBJc3N1ZWQgYnk6IE1vbmRheSAxNnRo
IEF1Z3VzdCAyMDIxCj4gICAgICA+ID4KPiAgICAgID4gPiBXb3Jrc2hvcCBEYXRlOiBUaGlzIHdp
bGwgYmUgYSB2aXJ0dWFsIHdvcmtzaG9wLCBzcHJlYWQgb3ZlciB0aHJlZSBkYXlzOgo+ICAgICAg
PiA+Cj4gICAgICA+ID4gMTQwMC0xODAwIFVUQyBUdWUgMTR0aCBTZXB0ZW1iZXIgMjAyMQo+ICAg
ICAgPiA+IDE0MDAtMTgwMCBVVEMgV2VkIDE1dGggU2VwdGVtYmVyIDIwMjEKPiAgICAgID4gPiAx
NDAwLTE4MDAgVVRDIFRodSAxNnRoIFNlcHRlbWJlciAyMDIxCj4gICAgICA+ID4KPiAgICAgID4g
PiBXb3Jrc2hvcCBjby1jaGFpcnM6IFdlcyBIYXJkYWtlciwgRXZnZW55IEtob3JvdiwgT21lciBT
aGFwaXJhCj4gICAgICA+ID4KPiAgICAgID4gPiBUaGUgUHJvZ3JhbSBDb21taXR0ZWUgbWVtYmVy
czoKPiAgICAgID4gPgo+ICAgICAgPiA+IEphcmkgQXJra28sIE9saXZpZXIgQm9uYXZlbnR1cmUs
IFZpbnQgQ2VyZiwgU3R1YXJ0IENoZXNoaXJlLCBTYW0KPiAgICAgID4gPiBDcm93Zm9yZCwgTmlj
ayBGZWFtc3RlciwgSmltIEdldHR5cywgVG9rZSBIb2lsYW5kLUpvcmdlbnNlbiwgR2VvZmYKPiAg
ICAgID4gPiBIdXN0b24sIEN1bGxlbiBKZW5uaW5ncywgS2F0YXJ6eW5hIEtvc2VrLVN6b3R0LCBN
aXJqYSBLdWVobGV3aW5kLAo+ICAgICAgPiA+IEphc29uIExpdmluZ29vZCwgTWF0dCBNYXRoaWFz
LCBSYW5kYWxsIE1leWVyLCBLYXRobGVlbiBOaWNob2xzLAo+ICAgICAgPiA+IENocmlzdG9waCBQ
YWFzY2gsIFRvbW15IFBhdWx5LCBHcmVnIFdoaXRlLCBLZWl0aCBXaW5zdGVpbi4KPiAgICAgID4g
Pgo+ICAgICAgPiA+IFNlbmQgU3VibWlzc2lvbnMgdG86IG5ldHdvcmstcXVhbGl0eS13b3Jrc2hv
cC1wY0BpYWIub3JnIDxtYWlsdG86bmV0d29yay1xdWFsaXR5LXdvcmtzaG9wLXBjQGlhYi5vcmc+
Lgo+ICAgICAgPiA+Cj4gICAgICA+ID4gUG9zaXRpb24gcGFwZXJzIGZyb20gYWNhZGVtaWEsIGlu
ZHVzdHJ5LCB0aGUgb3BlbiBzb3VyY2UgY29tbXVuaXR5IGFuZAo+ICAgICAgPiA+IG90aGVycyB0
aGF0IGZvY3VzIG9uIG1lYXN1cmVtZW50cywgZXhwZXJpZW5jZXMsIG9ic2VydmF0aW9ucyBhbmQK
PiAgICAgID4gPiBhZHZpY2UgZm9yIHRoZSBmdXR1cmUgYXJlIHdlbGNvbWUuIFBhcGVycyB0aGF0
IHJlZmxlY3QgZXhwZXJpZW5jZQo+ICAgICAgPiA+IGJhc2VkIG9uIGRlcGxveWVkIHNlcnZpY2Vz
IGFyZSBlc3BlY2lhbGx5IHdlbGNvbWUuIFRoZSBvcmdhbml6ZXJzCj4gICAgICA+ID4gdW5kZXJz
dGFuZCB0aGF0IHNwZWNpZmljIGFjdGlvbnMgdGFrZW4gYnkgb3BlcmF0b3JzIGFyZSB1bmxpa2Vs
eSB0byBiZQo+ICAgICAgPiA+IGRpc2N1c3NlZCBpbiBkZXRhaWwsIHNvIHBhcGVycyBkaXNjdXNz
aW5nIGdlbmVyYWwgY2F0ZWdvcmllcyBvZgo+ICAgICAgPiA+IGFjdGlvbnMgYW5kIGlzc3VlcyB3
aXRob3V0IG5hbWluZyBzcGVjaWZpYyB0ZWNobm9sb2dpZXMsIHByb2R1Y3RzLCBvcgo+ICAgICAg
PiA+IG90aGVyIHBsYXllcnMgaW4gdGhlIGVjb3N5c3RlbSBhcmUgZXhwZWN0ZWQuIFBhcGVycyBz
aG91bGQgbm90IGZvY3VzCj4gICAgICA+ID4gb24gc3BlY2lmaWMgcHJvdG9jb2wgc29sdXRpb25z
Lgo+ICAgICAgPiA+Cj4gICAgICA+ID4gVGhlIHdvcmtzaG9wIHdpbGwgYmUgYnkgaW52aXRhdGlv
biBvbmx5LiBUaG9zZSB3aXNoaW5nIHRvIGF0dGVuZAo+ICAgICAgPiA+IHNob3VsZCBzdWJtaXQg
YSBwb3NpdGlvbiBwYXBlciB0byB0aGUgYWRkcmVzcyBhYm92ZTsgaXQgbWF5IHRha2UgdGhlCj4g
ICAgICA+ID4gZm9ybSBvZiBhbiBJbnRlcm5ldC1EcmFmdC4KPiAgICAgID4gPgo+ICAgICAgPiA+
IEFsbCBpbnB1dHMgc3VibWl0dGVkIGFuZCBjb25zaWRlcmVkIHJlbGV2YW50IHdpbGwgYmUgcHVi
bGlzaGVkIG9uIHRoZQo+ICAgICAgPiA+IHdvcmtzaG9wIHdlYnNpdGUuIFRoZSBvcmdhbmlzZXJz
IHdpbGwgZGVjaWRlIHdob20gdG8gaW52aXRlIGJhc2VkIG9uCj4gICAgICA+ID4gdGhlIHN1Ym1p
c3Npb25zIHJlY2VpdmVkLiBTZXNzaW9ucyB3aWxsIGJlIG9yZ2FuaXplZCBhY2NvcmRpbmcgdG8K
PiAgICAgID4gPiBjb250ZW50LCBhbmQgbm90IGV2ZXJ5IGFjY2VwdGVkIHN1Ym1pc3Npb24gb3Ig
aW52aXRlZCBhdHRlbmRlZSB3aWxsCj4gICAgICA+ID4gaGF2ZSBhbiBvcHBvcnR1bml0eSB0byBw
cmVzZW50IGFzIHRoZSBpbnRlbnQgaXMgdG8gZm9zdGVyIGRpc2N1c3Npb24KPiAgICAgID4gPiBh
bmQgbm90IHNpbXBseSB0byBoYXZlIGEgc2VxdWVuY2Ugb2YgcHJlc2VudGF0aW9ucy4KPiAgICAg
ID4gPgo+ICAgICAgPiA+IFBvc2l0aW9uIHBhcGVycyBmcm9tIHRob3NlIG5vdCBwbGFubmluZyB0
byBhdHRlbmQgdGhlIHZpcnR1YWwgc2Vzc2lvbnMKPiAgICAgID4gPiB0aGVtc2VsdmVzIGFyZSBh
bHNvIGVuY291cmFnZWQuIEEgd29ya3Nob3AgcmVwb3J0IHdpbGwgYmUgcHVibGlzaGVkCj4gICAg
ICA+ID4gYWZ0ZXJ3YXJkcy4KPiAgICAgID4gPgo+ICAgICAgPiA+IE92ZXJ2aWV3Ogo+ICAgICAg
PiA+Cj4gICAgICA+ID4gIldlIGJlbGlldmUgdGhhdCBvbmUgb2YgdGhlIG1ham9yIGZhY3RvcnMg
YmVoaW5kIHRoaXMgbGFjayBvZiBwcm9ncmVzcwo+ICAgICAgPiA+IGlzIHRoZSBwb3B1bGFyIHBl
cmNlcHRpb24gdGhhdCB0aHJvdWdocHV0IGlzIHRoZSBvZnRlbiBzb2xlIG1lYXN1cmUgb2YKPiAg
ICAgID4gPiB0aGUgcXVhbGl0eSBvZiBJbnRlcm5ldCBjb25uZWN0aXZpdHkuIFdpdGggc3VjaCBu
YXJyb3cgZm9jdXMsIHBlb3BsZQo+ICAgICAgPiA+IGRvbuKAmXQgY29uc2lkZXIgcXVlc3Rpb25z
IHN1Y2ggYXM6Cj4gICAgICA+ID4KPiAgICAgID4gPiBXaGF0IGlzIHRoZSBsYXRlbmN5IHVuZGVy
IHR5cGljYWwgd29ya2luZyBjb25kaXRpb25zPwo+ICAgICAgPiA+IEhvdyByZWxpYWJsZSBpcyB0
aGUgY29ubmVjdGl2aXR5IGFjcm9zcyBsb25nZXIgdGltZSBwZXJpb2RzPwo+ICAgICAgPiA+IERv
ZXMgdGhlIG5ldHdvcmsgYWxsb3cgdGhlIHVzZSBvZiBhIGJyb2FkIHJhbmdlIG9mIHByb3RvY29s
cz8KPiAgICAgID4gPiBXaGF0IHNlcnZpY2VzIGNhbiBiZSBydW4gYnkgY2xpZW50cyBvZiB0aGUg
bmV0d29yaz8KPiAgICAgID4gPiBXaGF0IGtpbmQgb2YgSVB2NCwgTkFUIG9yIElQdjYgY29ubmVj
dGl2aXR5IGlzIG9mZmVyZWQsIGFuZCBhcmUgdGhlcmUgZmlyZXdhbGxzPwo+ICAgICAgPiA+IFdo
YXQgc2VjdXJpdHkgbWVjaGFuaXNtcyBhcmUgYXZhaWxhYmxlIGZvciBsb2NhbCBzZXJ2aWNlcywg
c3VjaCBhcyBETlM/Cj4gICAgICA+ID4gVG8gd2hhdCBkZWdyZWUgYXJlIHRoZSBwcml2YWN5LCBj
b25maWRlbnRpYWxpdHksIGludGVncml0eSBhbmQKPiAgICAgID4gPiBhdXRoZW50aWNpdHkgb2Yg
dXNlciBjb21tdW5pY2F0aW9ucyBndWFyZGVkPwo+ICAgICAgPiA+Cj4gICAgICA+ID4gSW1wcm92
aW5nIHRoZXNlIGFzcGVjdHMgb2YgbmV0d29yayBxdWFsaXR5IHdpbGwgbGlrZWx5IGRlcGVuZCBv
bgo+ICAgICAgPiA+IG1lYXN1cmVtZW50IGFuZCBleHBvc2luZyBtZXRyaWNzIHRvIGFsbCBpbnZv
bHZlZCBwYXJ0aWVzLCBpbmNsdWRpbmcgdG8KPiAgICAgID4gPiBlbmQgdXNlcnMgaW4gYSBtZWFu
aW5nZnVsIHdheS4gU3VjaCBtZWFzdXJlbWVudHMgYW5kIGV4cG9zdXJlIG9mIHRoZQo+ICAgICAg
PiA+IHJpZ2h0IG1ldHJpY3Mgd2lsbCBhbGxvdyBzZXJ2aWNlIHByb3ZpZGVycyBhbmQgbmV0d29y
ayBvcGVyYXRvcnMgdG8KPiAgICAgID4gPiBmb2N1cyBvbiB0aGUgYXNwZWN0cyB0aGF0IGltcGFj
dHMgdGhlIHVzZXJz4oCZIGV4cGVyaWVuY2UgbW9zdCBhbmQgYXQKPiAgICAgID4gPiB0aGUgc2Ft
ZSB0aW1lIGVtcG93ZXJzIHVzZXJzIHRvIGNob29zZSB0aGUgSW50ZXJuZXQgc2VydmljZSB0aGF0
IHdpbGwKPiAgICAgID4gPiBnaXZlIHRoZW0gdGhlIGJlc3QgZXhwZXJpZW5jZS4iCj4gICAgICA+
ID4KPiAgICAgID4gPgo+ICAgICAgPiA+IC0tCj4gICAgICA+ID4gTGF0ZXN0IFBvZGNhc3Q6Cj4g
ICAgICA+ID4gaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rp
dml0eTo2NzkxMDE0Mjg0OTM2Nzg1OTIwLyA8aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQv
dXBkYXRlL3VybjpsaTphY3Rpdml0eTo2NzkxMDE0Mjg0OTM2Nzg1OTIwLz4KPiAgICAgID4gPgo+
ICAgICAgPiA+IERhdmUgVMOkaHQgQ1RPLCBUZWtMaWJyZSwgTExDCj4gICAgICA+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgID4gPiBDZXJv
d3J0LWRldmVsIG1haWxpbmcgbGlzdAo+ICAgICAgPiA+IENlcm93cnQtZGV2ZWxAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0IDxtYWlsdG86Q2Vyb3dydC1kZXZlbEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+
Cj4gICAgICA+ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Vyb3dy
dC1kZXZlbCA8aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Vyb3dydC1k
ZXZlbD4KPiAgICAgID4gPgo+IAo+IAo+IAo+ICAgICAtLQo+ICAgICBMYXRlc3QgUG9kY2FzdDoK
PiAgICAgaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0
eTo2NzkxMDE0Mjg0OTM2Nzg1OTIwLyA8aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBk
YXRlL3VybjpsaTphY3Rpdml0eTo2NzkxMDE0Mjg0OTM2Nzg1OTIwLz4KPiAKPiAgICAgRGF2ZSBU
w6RodCBDVE8sIFRla0xpYnJlLCBMTEMKPiAgICAgX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiAgICAgTWFrZS13aWZpLWZhc3QgbWFpbGluZyBsaXN0Cj4g
ICAgIE1ha2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCA8bWFpbHRvOk1ha2Utd2lm
aS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiAgICAgaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vbWFrZS13aWZpLWZhc3QgPGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL21ha2Utd2lmaS1mYXN0Pgo+IAo+IAo+IFRoaXMgZWxlY3Ryb25pYyBj
b21tdW5pY2F0aW9uIGFuZCB0aGUgaW5mb3JtYXRpb24gYW5kIGFueSBmaWxlcyB0cmFuc21pdHRl
ZCB3aXRoIGl0LCBvciBhdHRhY2hlZCB0byBpdCwgYXJlIGNvbmZpZGVudGlhbCBhbmQgYXJlIGlu
dGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiAKPiB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkg
dG8gd2hvbSBpdCBpcyBhZGRyZXNzZWQgYW5kIG1heSBjb250YWluIGluZm9ybWF0aW9uIHRoYXQg
aXMgY29uZmlkZW50aWFsLCBsZWdhbGx5IHByaXZpbGVnZWQsIHByb3RlY3RlZCBieSBwcml2YWN5
IGxhd3MsIG9yIG90aGVyd2lzZSAKPiByZXN0cmljdGVkIGZyb20gZGlzY2xvc3VyZSB0byBhbnlv
bmUgZWxzZS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCBvciB0aGUgcGVy
c29uIHJlc3BvbnNpYmxlIGZvciBkZWxpdmVyaW5nIHRoZSBlLW1haWwgdG8gdGhlIGludGVuZGVk
IHJlY2lwaWVudCwgCj4geW91IGFyZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBhbnkgdXNlLCBjb3B5
aW5nLCBkaXN0cmlidXRpbmcsIGRpc3NlbWluYXRpb24sIGZvcndhcmRpbmcsIHByaW50aW5nLCBv
ciBjb3B5aW5nIG9mIHRoaXMgZS1tYWlsIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSAK
PiByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIHJldHVybiB0aGUgZS1tYWls
IHRvIHRoZSBzZW5kZXIsIGRlbGV0ZSBpdCBmcm9tIHlvdXIgY29tcHV0ZXIsIGFuZCBkZXN0cm95
IGFueSBwcmludGVkIGNvcHkgb2YgaXQuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBTdGFybGluayBtYWlsaW5nIGxpc3QKPiBTdGFybGlua0Bs
aXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9zdGFybGluawo+IAoKCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNv
bT4KQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

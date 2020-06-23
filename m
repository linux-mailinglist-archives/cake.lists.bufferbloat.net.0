Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 801852056C5
	for <lists+cake@lfdr.de>; Tue, 23 Jun 2020 18:08:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 505203CB39;
	Tue, 23 Jun 2020 12:08:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592928489;
	bh=kVMJHufLyFTMkouxensnpfi6sMWtlQsb2Yd1P3HXuCg=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RzdJ9aUW1CTE8b/VrD5FhlJFnh0DM2t7KrvJxWxpx2v7+8iR4IvbFtyrww5Cr+MZz
	 l/1d3nJWHslo+A8Y+tkDQHUiFgoNM3uKtVzLTDar9uimm/pAPJsmJyBQntR9DUOHE3
	 UJmmfFes1gK8ybQarZ7WUDYMGmIADS6+l7uDHfB2l04MF0tWGFvp/iuZYeY2u9TpKV
	 oQ89MJ2sXGuxaJwjzsoOK2uWORJ18qxtu8rr1RDL7+4HOkAnhrlSj32NkU55SV3Frc
	 38LgP39PtbchwZBPofBqIr2rHXEv5TyNYmdNupYY4fd9K2dY8eik7mHJ5Bj8Vt/gcW
	 s2J02hYe53FIA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ADF8D3B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 12:08:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1592928483;
 bh=I8S3Kw3rDPOUcT1vBXR35O5we55s42izWgmtGr5yn2k=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=RdeQCJg4lqpGxQJH4Lj2Xlr/BP8LUY1/2trGItP4jFyxxJ2l4n0pWXGWkDUpHhkjW
 5gVXP46idzZpHNRwY6/1fYVmhg42Qde8dJ6MAeywVYwZv2YjW2Ub3xAyGa1++OCfIn
 4/MRlGEO4rn+hyAWZz7HllOiqtc9U7+nq03t72Yo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.3] ([134.76.241.253]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MfHAH-1jCEzh3frv-00gsJm; Tue, 23
 Jun 2020 18:08:02 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <8959B7A6-0B20-4812-BC9D-812DD4F3BCC4@gmail.com>
Date: Tue, 23 Jun 2020 18:08:02 +0200
Message-Id: <0D78908A-07BB-4398-BFD2-78858AB2B8E2@gmx.de>
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
 <877dvzt84w.fsf@toke.dk>
 <CAFC8iJ+LHkmQWYZomD6rFaoUs3Oo_-0=QV=JmvdtspZ4+=mqdA@mail.gmail.com>
 <87lfkdrgip.fsf@toke.dk> <8959B7A6-0B20-4812-BC9D-812DD4F3BCC4@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-Provags-ID: V03:K1:XIJZMAEJMccA76vkRrtS+0GUJlOZ8bCYfY+zP91BanoQzq/tKBm
 2TbXyMWyruqWlao9Ct7deO6mmZihaA6XPcLGA40pqoPmgncyooS7VvtBzz78NOcq2D26gCC
 1xJfPWvXP7s1s1ZFnEb7eOmpG+VLKlGKlJuDHE+dt4DEVVCfufrVrK6bKfHj7FIPA39qmJZ
 X9TJls6mQId7KJH92vssw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oPhf+ik7GeM=:sljwpdokRdPwwBl2QwrF4p
 YoAkEKDuNEuAav72inc9yKvBQIiGTj8eb33TNIzlr/cmLuM/+yUUzxu6lLStQ6DlSv5rjwguC
 0rwXVvz1gOUzcS08z7KNTRg5LbzulTZVhbp4ws1Iogo5gt5quN7tz06y+630pX/Eb36cfiSSH
 9N7S+5Cg/cmTuHo5qHSLJj4h8c9I/T7lpWJXGj+xwqhgcn7cyCBrocVxxh0NgxbLJhZMKzUAV
 zSQ8cIUsdn7VonceBhcj5/Q4X4SLc9K61n0YKF9YDaNpOmQpxwFElvspCwKft2/IK0xUMlkOx
 l2PywUDcKAcYw7qQF+8+2ON3xWX6bnBYTaO2X/UcXDnFoAH9Hm6HMALA/1HoBPvyJOKO/ZDyi
 NVqdTpwHWnbXKzvzE0ck0hDHfbrIONYQGt/mSYo2CMFDaijAWXQZ3pAg5scSslx9k6be4rr6P
 B3FXJ3tfGJJPCV5XEDB9g3nQIkzXAL8ijxN6tdgOAYCVbf6HQsQT6Dw++3CGRCZOip8QZzTn5
 epXt3TwrHth5ZZwujwvg+5SNDjE/Ea7b/51dNRsKA01Gmu/M2hPp56kFFUyxcUsyG1+vlturZ
 StGOAIao+ELb2etZtxauo4pVY+DD/ztq+XnHkeMaUsOXTsRjcbeBJxmUGpzAD6x85kcmgsw6j
 XDH5afpdFyY+4dodYvfYqkHfmZag02POEmWGxG5717sQL0anhlSlHEEzL9xkpe/a1URF7hE23
 ovYE3rTmSHF30CyDPoloihNC3uDKyJk5h70JDDS2VipKvmNfnp/dO1vyPhi1dCqZJ4Wp/MGN9
 hwGWC2FpP5NtJN9tMeO6qFTJaUY0+3Y4DHDk3MMPLbDSPqXeT2VLkqjuHhzN2eZN3U/G+htNc
 /HGLYg/KKNXrhc6r1+xRrHT5M3FEiGUOF8HUyfXwSbUxmOj7wK7pfAN0/zbtZmg3POQQ7ga9K
 D+SOL57NJNU24ALiSVFAdecUtgw7987yCmBIDVZMiNZQFSoDahD+IzYdIFr3T0445vCoZ4TQS
 vgAhqOGsIwnpktu6+E4ChvoHx/bWRewDCcJCe1qTkccPwqoAu7E4XBkOA4UT9hf6KhqL/TDBd
 lF6R3UD6QhIHaNKVJVelT0xG/QmLjvwNYP6B0IGhAGWNFnm7TaSAYSF0t5XOPyf+1bG6nWAk4
 FJ0hVOF7qew/06Ql5r/A1Q1ogdoOFT6SuzqZR5743VA8xtQJGrvhn1fl/L4V0xd9jJ3lU=
Subject: Re: [Cake] [CAKE] Rate is much lower than expected - CPU load is
 higher than expected
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
Cc: cake@lists.bufferbloat.net, marco maniezzo <marco.maniezzo@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4sCgo+IE9uIEp1biAyMywgMjAyMCwgYXQgMTc6MjEsIEpvbmF0aGFuIE1vcnRv
biA8Y2hyb21hdGl4OTlAZ21haWwuY29tPiB3cm90ZToKPiAKPj4gT24gMjMgSnVuLCAyMDIwLCBh
dCA1OjQxIHBtLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+IAo+PiBSaWdodCwgd2VsbCBpZiB5b3UncmUgbm90IHJ1bm5pbmcgb3V0IG9mIENQVSBJ
IGd1ZXNzIGl0IGNvdWxkIGJlIGEKPj4gdGltaW5nIGlzc3VlLiBUaGUgQ0FLRSBzaGFwZXIgcmVs
aWVzIG9uIGFjY3VyYXRlIHRpbWVzdGFtcHMgYW5kIHRoZQo+PiBxZGlzYyB3YXRjaGRvZyB0aW1l
ciB0byBzY2hlZHVsZSB0aGUgdHJhbnNtaXNzaW9uIG9mIHBhY2tldHMuIEEgbG9hZGVkCj4+IHN5
c3RlbSBjYW4gc2ltcGx5IG1pc3MgZGVhZGxpbmVzLCB3aGljaCB3b3VsZCBiZSBjb25zaXN0ZW50
IHdpdGggdGhlCj4+IGJlaGF2aW91ciB5b3UncmUgc2VlaW5nLgo+PiAKPj4gSW4gZmFjdCwgd2hl
biBsb29raW5nIGludG8gdGhpcyBhIGJpdCBtb3JlLCBJIGNhbWUgYWNyb3NzIHRoaXMgY29tbWl0
Cj4+IHRoYXQgc2VlbWVkIHRvIG9ic2VydmUgdGhlIHNhbWUgYmVoYXZpb3VyIGluIHNjaF9mcToK
Pj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy90b3J2YWxkcy9jL2ZlZmE1NjlhOWQ0Ygo+PiAKPj4g
U28gSSBndWVzcyB3ZSBjb3VsZCB0cnkgdG8gZG8gc29tZXRoaW5nIHNpbWlsYXIgaW4gQ0FLRS4K
PiAKPiBBY3R1YWxseSwgd2UgYWxyZWFkeSBkby4gIFRoZSBmaXJzdCB2ZXJzaW9uIG9mIENha2Un
cyBzaGFwZXIgd2FzIGJhc2VkIGNsb3NlbHkgb24gdGhlIG9uZSBpbiBzY2hfZnEgYXQgdGhlIHRp
bWUsIGFuZCBJIG1vZGlmaWVkIGl0IGFmdGVyIG5vdGljaW5nIHRoYXQgaXQgaGFkIGEgdmVyeSBs
aW1pdGVkIG1heGltdW0gdGhyb3VnaHB1dCB3aGVuIHRpbWVyIHJlc29sdXRpb24gd2FzIHBvb3Ig
KGVnLiBhdCAxa0h6IG9uIGFuIG9sZCBQQyB3aXRob3V0IEhQRVQgaGFyZHdhcmUsIHdlIGNvdWxk
IG9ubHkgZ2V0IDFrIHBwcykuICBOb3csIGFueSBsYXRlIHRpbWVyIGV2ZW50IHdpbGwgcmVzdWx0
IGluIGEgYnVyc3QgYmVpbmcgaXNzdWVkIHRvIGNhdGNoIHVwIHdpdGggdGhlIHByb3BlciBzY2hl
ZHVsZS4gIFRoZSBvbmx5IHRpbWUgdGhhdCB3b3VsZG4ndCB3b3JrIGlzIGlmIHRoZSBxdWV1ZSBp
cyBlbXB0eS4KCglUaGlzIG5pY2VseSBhbmQgZWZmb3J0bGVzc2x5IGV4cGxhaW5zIHdoeSBjYWtl
IHVubGlrZSBIVEIrZnFfY29kZWwgbWFpbnRhaW5zIHRoZSBzZXQgYmFuZHdpZHRoIGJldHRlciB1
bmRlciBDUFUgbG9hZCAoYnV0IHRoZW4gdGhlc2UgYnVyc3QgYWxzbyBpbmNyZWFzZSBsYXRlbmN5
IHVuZGVyIGxvYWQgYSBiaXQgbW9yZTsgdGhlbiBhZ2FpbiBhZ2Fpbiwgd2UgaGFkIHRvIG1ha2Ug
dGhlIGJ1cnN0IGJ1ZmZlcmluZyBmb3IgSFRCIGNvbmZpZ3VyYWJsZSBzbyBpdCB3b3VsZCBub3Qg
YmUgYXMgYmFkIGluIGRyb3BwaW5nIGJhbmR3aWR0aCBvbiB0aGUgZmxvb3IpLiBCdXQgSSBhc3N1
bWUgdGhhdCB5b3UgYm91bmQgdGhlIGJ1cnN0cyBzb21laG93LCBkbyB5b3UgcmVtZW1iZXIgeW91
ciBidXN0IHNpemluZyBtZXRob2QgYnkgY2hhbmNlPyAoRm9yIEhUQi9UQkYgc3FtIG5vdyBzaW1w
bHkgYWxsb3dzIHRoZSB1c2VyIHRvIGNvbmZpZ3VyZSBhIG1heGltdW0gYnVyc3Qgc2VydmljZSB0
aW1lIGltIG1pY3Jvc2Vjb25kcywgdGhhdCBhdCBsZWFzdCBhbGxvd3MgdG8gbWFrZSBhIGNvbnNj
aW91cyB0cmFkZS1vZmYpLgoKCj4gCj4gSWYgdGhlIHBhdGNoZXMgY3VycmVudGx5IGJlaW5nIHRy
aWFsbGVkIGFyZSBub3Qgc3VmZmljaWVudCwgdGhlbiBwZXJoYXBzIHdlIGNvdWxkIHRyeSBzb21l
dGhpbmcgY291bnRlci1pbnR1aXRpdmU6IHN3aXRjaCBvbiAiZmxvd3MiIGluc3RlYWQgb2YgImZs
b3dibGluZCIsIGFuZCBlbmFibGUgdGhlIGFjay1maWx0ZXIuICBUaGF0IHNob3VsZCByZXN1bHQg
aW4gZmV3ZXIgc21hbGwgcGFja2V0cyB0byBwcm9jZXNzLCBhcyB0aGUgYWNrLWZpbHRlciB3aWxs
IGNvYWxlc2NlIHNvbWUgYWNrcywgZXNwZWNpYWxseSB1bmRlciBsb2FkLiAgSXQgbWlnaHQgYWxz
byBoZWxwIHRvIHNlbGVjdCAic2F0ZWxsaXRlIiBBUU0gcGFyYW1ldGVycywgcmVkdWNpbmcgdGhl
IGFtb3VudCBvZiBwcm9jZXNzaW5nIG5lZWRlZCBhdCB0aGF0IGxheWVyLgo+IAo+IC0gSm9uYXRo
YW4gTW9ydG9uCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4g
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

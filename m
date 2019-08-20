Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE0396799
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 19:30:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AE3FE3CB38;
	Tue, 20 Aug 2019 13:30:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566322217;
	bh=fFffpAQXor8z3D92RpFrp0rNlaqdVrN9EgOoVynBjo8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OZ96jdpRGhEkEwbotwWxw497zQ2BFIXr5EKp4BE3f79AqYaTg2GhF9CUpOz7EULK5
	 2tIIVXlvUnvlAFykUcefVuIeCUq+ZM/ll28KdAGyyaVmYNEeyTI3B12SJgrf0MA66q
	 XO2msgxmSReOGKwHAtvisfucPXydVml+H0GYncm6vx4HPpbdSGaK3uzNXUcK4y+eJj
	 RrV73PlnDB2PhCcZxy5lt8hgQL80meSeELpyYxOh+J1/DqzwAibumY0J7uE2oitOSA
	 hOfsmMO8YtOir+Wh6D5+k+UCuej1DFGdHzbISpyirZTua84q66r/R5YdcW19l7wAAA
	 w+hgIKj73Awgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6D5C13B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 13:30:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=ngIp2No9+9xEdB7fZezGT6fvPdfoAr9ZudyPby2B6Q8=; 
 b=K6QAxVpe9fZHA7+l2JAeU7yjL5LLX1nyPmN8+dRUCp/frXZFvbyyVSiDMXweWRfA3fC8+mDRLFdtNqkcgb1jJcLxF2UGEyT/ssKZZwNbhffg740BQGEm+W3MH8bW8TLyuno61eltgZaAxfR+zoFkHEWcyQ8xcxzG00tDpgjNhZo=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Dave Taht <dave.taht@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
Date: Tue, 20 Aug 2019 19:29:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87wof7sriw.fsf@toke.dk>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i07xe-00004z-6z; Tue, 20 Aug 2019 19:30:22 +0200
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIwLjA4LjIwMTkgdW0gMTg6NTggc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdy
aXRlczoKPgo+PiBBbSAyMC4wOC4yMDE5IHVtIDE4OjI0IHNjaHJpZWIgRGF2ZSBUYWh0Ogo+Pj4g
T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgNTowOSBBTSBTZWJhc3RpYW4gR290dHNjaGFsbAo+Pj4g
PHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Pj4+IDotKSBpJ20gZm9sbG93
aW5nIHRoaXMgbGlzdCBhbmQgeWVzIHdlIGFyZSB3b3JraW5nIG9uIGJyaW5naW5nIGNha2UgaW4g
Oi0pCj4+PiBZZWEhIHRoeCBmb3IgYmVpbmcgb24gdGhlIGxpc3QhCj4+Pgo+Pj4+IGlzIHRoZXJl
IGFueSBxdWVzdGlvbiBiZWhpbmQgdGhpcyBsaW5rIGZyb20geW91ciBzaWRlPwo+Pj4gSSBqdXN0
IHdhbnRlZCB0byBtYWtlIHBlb3BsZSBoZXJlIGF3YXJlIHRoYXQgaXQgd2FzIGhhcHBlbmluZy4K
Pj4+Cj4+PiBJcyB0aGVyZSBhIGJ1aWxkIG5vdz8KPj4gdGhlIGZpcnN0IGJ1aWxkcyB3aXRoIGNh
a2UgYXJlIGFscmVhZHkgb3V0IHllcywgYnV0IHVuZmluaXNoZWQuIHdlCj4+IHN0YXJ0ZWQgdGhl
biB0byByZXdyaXRlIG1ham9yIHBhcnRzIG9mIHRoZSBxb3MgY29kZS4gaSBleHBlY3QgdG8gcHVz
aCBvdXQKPj4gYSBuZXcgYnVpbGQgdG9tb3Jyb3cuIGl0IHdpbGwgc3RpbGwgbm90IHVzZSB0aGUg
ZnVsbCBwb3RlbnRpYWwgb2YgY2FrZQo+PiBzaW5jZSB3ZSBoYXZlIHRvIGJyaW5nIGFsbCB0b2dl
dGhlciB3aXRoIHRoZSBwcmlvcml0eSBhbmQgbmRwaSBhbmQKPj4gZmlsdGVyIGJhc2VkIGZpbHRl
ciB0b2dldGhlcgo+PiB3aXRoIHRoZSBjYWtlIHNjaGVkdWxlci4KPiBBcmUgeW91IGF3YXJlIHRo
YXQgeW91IGNhbiB1c2UgdGhlIHRjIGZpbHRlcmluZyBmdW5jdGlvbmFsaXR5IHRvIG1ha2UKPiB0
aGlzIHBsYXkgYWxvbmcgd2l0aCBjYWtlJ3MgdGllcnM/CndlIGFyZSBhbHJlYWR5IHVzaW5nIGZp
bHRlcnMuIHllcy4gaXRzIGp1c3QgdGhhdCBjYWtlIGlzIGFjdGluZyBhbHdheXMgCmFzIHJvb3Qg
YW5kIHdlIGhhdmUgZGlmZmVyZW50IHNvcnRzIG9mIHFvcyBjb25maWd1cmF0aW9ucy4gc28geW91
IGhhdmUgCndhbi4gYnV0IHdlIG1heSBoYXZlIG11bHRpcGxlIGxhbiBpbnRlcmZhY2VzIHdpdGgg
aW5kaXZpZHVhbCBxb3MgCnNldHRpbmdzLiB0aGUgc2FtZSBmb3IgbWFjIC8gaXAgYmFzZWQgdXNl
ciBzZXR0aW5ncy4gc28gaW4gZmFjdCB3ZSBuZWVkIAp0byBjcmVhdGUgYSBpbmRpdmlkdWFsIHFk
aXNjIGZvciBlYWNoIG9mIHRoZXNlIHNldHRpbmcgdHlwZXMgaW4gd29yc3QgCmNhc2UsIGJ1dCBp
biB0aGF0IGNhc2Ugd2UgY2Fubm90IHRha2UgaW4gYWNjb3VudCB0aGUgZ2xvYmFsIGF2YWlsYWJs
ZSAKYmFuZHdpZHRoIGFueW1vcmUuCj4KPj4+IEFyZSB5b3UgdXNpbmcgdGhlIG91dCBvZiB0cmVl
IHZlcnNpb24gb3IgbWFpbmxpbmU/IE91dCBvZiB0cmVlIGhhcwo+Pj4gc29tZSBleHBlcmltZW50
YWwgU0NFIHdvcmsKPj4+IHRoYXQgSSdkIGxvdmUgdG8gc2VlIHRlc3RlZCBhdCBtb3JlIHNjYWxl
IGJ1dCBub3QgYWN0dWFsbHkgc2hpcHBlZCBhdCB0aGlzIHRpbWUuCj4+IG91dCBvZiB0cmVlIHN0
cmFpZ2h0IGZyb20gZ2l0IHdpdGggbW9kaWZpY2F0aW9ucyB0byBiZSBjb21wYXRpYmxlIHRvIG15
Cj4+IGtlcm5lbHMgc2luY2UgeW91ciBjb21wYXRpYmxpdHkgbGF5ZXIgaXMgbW1oIG5vdCBwZXJm
ZWN0Lgo+IFBsZWFzZSBkbyBmZWVsIGZyZWUgdG8gc2VuZCBhIHB1bGwgcmVxdWVzdCB3aXRoIHlv
dXIgZml4ZXMgZm9yIHRoZQo+IGNvbXBhdGliaWxpdHkgc3R1ZmYhIDopCndpbGwgZG8gYWZ0ZXIg
aSBoYXZlIHRha2VuIG91dCBzcGVjaWZpYyBtb2RzIGZvciBteSBrZXJuZWxzIGFnYWluLiBpdHMg
CnJlYWxseSBub3RoaW5nIG11Y2guIGp1c3Qgc29tZSBrZXJuZWwgbWlub3IgdmVyc2lvbnMgZm9y
IDMuMTggYW5kIDQuNCAKZ290IHNvbWUgZmVhdHVyZXMgYmFja3BvcnRlZCB3aGljaCBjb2xsaWRl
ZCB3aXRoIHRoZSBjb2JhbHQgaGVhZGVyLgppJ20gbm93IGFscmVhZHkgYWhlYWQgd2l0aCBkb2lu
ZyBhIG91dCBvZiB0cmVlIHZlcnNpb24gb2YgZnFfY29kZWxfZmFzdCAKZm9yIG11bHRpcGxlIGtl
cm5lbCB2ZXJzaW9ucwo+Cj4gLVRva2UKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

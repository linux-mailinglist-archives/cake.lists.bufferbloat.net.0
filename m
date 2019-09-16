Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 78957B3BE6
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 15:56:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C3473CB40;
	Mon, 16 Sep 2019 09:56:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568642163;
	bh=5U2o8CLyhrYnEUfKOGNaUgWQBNyvwUVlJ68GvJHeRzw=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g0z43ysepw3GIfx/oqSIn/Sq8+jLmDjBiW6u+UWF2+lTzApswqs8Ycu+EzY8A/Q11
	 kbRuDdY7/otEgq5HGabtatIp8D0mQJOaxQTKe15Xc/JfaAyqtKIKIIQwer8R4b0cgX
	 AaBT3yV6tff4Ckq662epAXcaD9FHbIk7d+m4pMYuiotSj9B5/rZht0coi6j/wlE1ps
	 EKlRJp+vJxKEkLxQ1q3uuV8CIe1P3qZLHksfpplgxUdB1808gOEvpSEtG5TCeu3FXo
	 sFO8OY2WwYFYwPTvDeGp3cwYDGm4DmcwZ5ATx4B4jTpjkEqtAQUO8mI308QVO+YSfj
	 tWydHY2MG6YPA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D73B3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 09:56:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=b+OEowN4AqGQX1N8aSJOHbu97Z6EmXKAfw/MRyA0kyA=; 
 b=zneqpStZZDHOyTsOrGY8IGmhlrK0ZxAkP3Myj7/6UuXwClpGeL9jqp7SdnalvmX9tIzHrg4r9aOHlYm+8cXqEOjZq5jq/ToQ/hLv1SxzE9oYlhyniwa5PkgcPk4FQx87WrGqrs1NRS93Mo1QrruuJG/zDPoxB07XFDGZBI+PMCA=;
To: cake@lists.bufferbloat.net
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <CAA93jw6+=SuQhFbvVWMbL3m3r_0pRWSMmgScHbhZ=sSN9prntw@mail.gmail.com>
 <f44aa0fc-64d3-88a3-98db-dccf4f2c0530@newmedia-net.de>
 <93040b26-aa44-41b9-abec-7e1f637c0cb1@www.fastmail.com>
 <2FE4FDA8-BB22-4216-8D97-FA05D896E54B@gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <99196e48-926e-689d-b1a8-69b1bfb1885f@newmedia-net.de>
Date: Mon, 16 Sep 2019 15:54:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <2FE4FDA8-BB22-4216-8D97-FA05D896E54B@gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i9rU9-0003KO-EP
 for cake@lists.bufferbloat.net; Mon, 16 Sep 2019 15:56:09 +0200
Subject: Re: [Cake] cake memory consumption
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDE2LjA5LjIwMTkgdW0gMTU6Mzkgc2NocmllYiBKb25hdGhhbiBNb3J0b246Cj4+IE9uIDE2
IFNlcCwgMjAxOSwgYXQgNDoyOCBwbSwgSnVzdGluIEtpbHBhdHJpY2sgPGp1c3RpbkBhbHRoZWEu
bmV0PiB3cm90ZToKPj4KPj4gT3BlbldSVCAxOC4wNi40IG9uIGEgZ2xiMTMwMCBhbmQgMTArIHZp
cnR1YWwgaW50ZXJmYWNlcyB3aXRoIGNha2UuIFRvdGFsIG1lbW9yeSB1c2FnZSBpcyA3ME1CIGZv
ciBldmVyeXRoaW5nLgo+IE15IElRcm91dGVyLCB3aGljaCBpcyBBcmNoZXIgQzcgaGFyZHdhcmUs
IGlzIHByZXNlbnRseSBydW5uaW5nIHdpdGggNzNNQiBmcmVlIG91dCBvZiAxMjhNQiwgYWZ0ZXIg
bmVhcmx5IDQzIGRheXMgdXB0aW1lIHdpdGggaGVhdnkgdXNhZ2UuICBJdCBoYXMgYXQgbGVhc3Qg
dHdvIENha2UgaW5zdGFuY2VzIHJ1bm5pbmcsIG9uIGEgcmVjZW50IGtlcm5lbC4KPgo+IEkgc2Vl
IGZyb20gdGhlIGZvcnVtIGxvZ3MgdGhhdCBrZXJuZWwgMy4xOC54IGlzIGluIHVzZSB0aGVyZS4g
IFRoYXQncyB2ZXJ5IG9sZCBpbmRlZWQsIGFuZCBJIGJlbGlldmUgdGhlcmUgd2VyZSBzb21lIGZh
aXJseSBiaWcgZGlmZmVyZW5jZXMgaW4gcGFja2V0IG1lbW9yeSBtYW5hZ2VtZW50IHNpbmNlIHRo
ZW4uICBJdCB3b3VsZCBiZSBlbnRpcmVseSBwb3NzaWJsZSBmb3Igc29tZSBtZW1vcnkgbWFuYWdl
bWVudCBidWcgdG8gYmUgaW50cm9kdWNlZCBieSBhIHZlbmRvciBwYXRjaCwgZm9yIGV4YW1wbGUu
CmkgZG9udCB1c2UgdmVuZG9yIHBhdGNoZXMuIGl0cyBhIG9sZCBrZXJuZWwgaSBrbm93IGFuZCBp
IGhhdmUgc29tZSAKYmFja3BvcnRzIG9uIGl0LiBpIGF2b2lkZWQgc3dpdGNoaW5nIHRvIG5ld2Vy
IGtlcm5lbHMgZHVlIHNvbWUgc2VyaW91cyAKaXNzdWVzIHVuZGVyIHNwZWNpZmljIGNvbmRpdGlv
bnMgb24gdGhlc2UgbW9kZWxzICh1bnJlbGF0ZWQgdG8gcW9zLCBidXQgCnRvIGZsYXNoIG1lbW9y
eSBhY2Nlc3MpLiB0aGUgZHJpdmVycyBhcmUgYmFzaWNseSB0aGUgc2FtZSBhcyBmb3Igb3Blbndy
dCAKYW5kIGl0IHJ1bmVzIGZhaXJseSB3ZWxsIGZvciBhbGwgc2NoZWR1bGVycyBleGNlcHQgZm9y
IGNha2UgaGVyZS4gCnVzdWFsbHkgdGhlcmUgaXMgYWxzbyBhIGJpZyBpbiB0aGUgb3V0IG9mIHRy
ZWUgdmVyc2lvbiBvZiBjYWtlLiBidXQgaSAKaGF2ZW50IGZvdW5kIGFueXRoaW5nIHdoaWxlIHJl
dmlld2luZwoKCj4KPiAgIC0gSm9uYXRoYW4gTW9ydG9uCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED96CAD0087
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CC8EF3CC42;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=aw98FPZPttJNVJ6unDNYFWrvLIN8HKhzdfkl+t3C9YU=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=i8i8ihMunvVLcNQD+EkNUrmcI5LbFrSsKU4CS/trbyWOZUnoVWU9l5oSnQeF2feah
	 B+tEeOuwuFK5EvwlzCPHJcK3V2VVC4TQMnxpEOorHN8AVgJnbkbH1TdHmNrU4Bai0A
	 tjxJpb5lZLp0TW0JU5Zgwk/MqnG6xR7+oXpkfEuFnA+p1M/i7TILsmPT10MrKOlyBW
	 XIb5aq0MKxDMWI503i+K78yidPsJVo4LGvkXpO49UoqkYeeSujaV3CLMoX8Jbwith3
	 i+bVgje0RgWWZBoIcW1aHYlStWbkme7Y8Fo4SJgh581rUcXtgN6EdAm7AOPv4Pek9w
	 OZapE0nsNuwHg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel9.c.fozzy.com (cpanel9.c.fozzy.com [206.54.190.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 52A443B29D;
 Tue,  1 Apr 2025 15:24:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=olegkutkov.me; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t8Bu5vwdTNNcPiovuSf1TjLLCIu4lU6bVuan8j6UEr4=; b=UsCmyoqdazMoEtLuG9D0P+wpCF
 vs0ep0sxQYQceaauCRVpwLqgwILElDNGcDIGo8h+4MJVtT7FT+181tMP6Tf+Pv4TJM4bk35AYhCwr
 DDyyysA3fDYdTfddvJ/r4wAKaB8UMNLnMaoKMLDAxHzH2rA2cWBKz9fzywZ291I4pR18mKVJxS4Tc
 al5bn3dzSCHiuop8BOPOFT/4XMgHKoXIbLdr62Q61I9GU7ihC9svNRrOu8f4d9ASBmVhf02FiECfJ
 JBan6T3fVO39XyrcmBXRi/UgktCoCM237eUIy7DiqA94r8m60cDZqk+IqwnSHS0uRZFtJsTglmUfP
 mcaMXNmw==;
Received: from [188.163.83.36] (port=53534 helo=[192.168.8.2])
 by cpanel9.c.fozzy.com with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
 (Exim 4.98.1) (envelope-from <contact@olegkutkov.me>)
 id 1tzhDp-0000000HHAc-0NWf; Tue, 01 Apr 2025 14:24:29 -0500
Message-ID: <08cc152a-d631-478e-8125-6b11e9bb490c@olegkutkov.me>
Date: Tue, 1 Apr 2025 22:24:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sebastian Moeller <moeller0@gmx.de>,
 Frantisek Borsik <frantisek.borsik@gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <E3699A9A-9B07-4F19-969B-B3723E3DEF7A@apple.com>
 <6336C355-F659-413E-8D29-1E8B80D65994@gmx.de>
Content-Language: en-US
Autocrypt: addr=contact@olegkutkov.me; keydata=
 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
 2Ui4R4ReWnUAqjJLv6nU
In-Reply-To: <6336C355-F659-413E-8D29-1E8B80D65994@gmx.de>
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel9.c.fozzy.com
X-AntiAbuse: Original Domain - lists.bufferbloat.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - olegkutkov.me
X-Get-Message-Sender-Via: cpanel9.c.fozzy.com: authenticated_id:
 contact@olegkutkov.me
X-Authenticated-Sender: cpanel9.c.fozzy.com: contact@olegkutkov.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
 =?utf-8?q?=5BStarlink=5D_=5BBloat=5D_In_loving_memory_of_D?=
 =?utf-8?b?YXZlIFTDpGh0IDwz?=
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
From: Oleg Kutkov via Cake <cake@lists.bufferbloat.net>
Reply-To: Oleg Kutkov <contact@olegkutkov.me>
Cc: cerowrt-users@lists.bufferbloat.net,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-commits@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_aspects?=
 =?UTF-8?Q?_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel-wireless@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 BufferBloat List <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGVycmlibGUgbmV3cy4uLiBTdWNoIGEgbG9zcy4KRGF2ZSB3YXMgYSB3b25kZXJmdWwgcGVyc29u
LgoKUmVzdCBpbiBQZWFjZS4KCi0tIApPbGVnIEt1dGtvdgoKT24gNC8xLzI1IDIxOjM2LCBTZWJh
c3RpYW4gTW9lbGxlciB2aWEgU3Rhcmxpbmsgd3JvdGU6Cj4gU2FkIG5ld3MgZGF5Lgo+Cj4gTGVh
cm5lZCBzbyBtdWNoIGZyb20gRGF2ZSBhYm91dCB0aGUgbmV0d29yayBhYm91dCB0aGUgaW1wb3J0
YW5jZSBvZiBzaGFyaW5nIGlkZWFzLCBhbmQgbm90IHRvIHRha2Ugb25lIHNlbGYgdG9vIHNlcmlv
dXNseS4KPiBXaWxsIG1pc3MgeW91IG15IGZyaWVuZC4uLgo+Cj4gU2ViYXN0aWFuIE1vZWxsZXIK
Pgo+Cj4KPgo+PiBPbiAxLiBBcHIgMjAyNSwgYXQgMTk6NTcsIFN0dWFydCBDaGVzaGlyZSB2aWEg
U3RhcmxpbmsgPHN0YXJsaW5rQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+Cj4+IERh
dmUgVMOkaHQgd2FzIGEgZ29vZCBmcmllbmQgYW5kIGEgbWVudG9yIHRvIG1lIGFuZCBzbyBtYW55
IG90aGVycy4gSGUgaW5zcGlyZWQgbWUgdG8gZm9jdXMgbXVjaCBvZiBteSB0aW1lIGFuZCBlZmZv
cnQgaW4gdGhlIGxhc3QgZGVjYWRlIHRvIGhpcyB2aXNpb24gb2YgYSBmYXN0ZXIgSW50ZXJuZXQg
ZXhwZXJpZW5jZSBmb3IgZXZlcnlvbmUgdGhyb3VnaCBsb3dlciBuZXR3b3JrIGxhdGVuY3kuIFRo
ZSByZXN1bHRzIG9mIERhdmXigJlzIHdvcmsgYXJlIGZpbmFsbHkgY29taW5nIHRvIGZydWl0aW9u
LCBhbmQgdGhvc2UgaGUgdGF1Z2h0IHdpbGwgY29udGludWUgaGlzIHdvcmsgdHJhbnNmb3JtaW5n
IGhvdyB0aGUgSW50ZXJuZXQgb3BlcmF0ZXMgYW5kIGltcHJvdmluZyB0aGUgbGl2ZXMgb2YgY291
bnRsZXNzIG1pbGxpb25zIG9mIHBlb3BsZSB3b3JsZHdpZGUuCj4+Cj4+IFN0dWFydCBDaGVzaGly
ZQo+Pgo+PiBPbiBBcHIgMSwgMjAyNSwgYXQgMTA6MjcsIEZyYW50aXNlayBCb3JzaWsgdmlhIEJs
b2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+Pgo+Pj4gSGVsbG8gdG8g
YWxsLAo+Pj4KPj4+IFdl4oCZcmUgZGV2YXN0YXRlZCB0byBhbm5vdW5jZSB0aGF0IERhdmUgVMOk
aHQgaGFzIHBhc3NlZCBhd2F5Lgo+Pj4KPj4+IERhdmUgd2FzIGFuIGFtYXppbmcgbWFuLCBoZWxw
aW5nIHRoZSB3b3JsZCB3aXRoIEZRLUNvRGVsIGFuZCBDQUtFLCBmaWdodGluZyBidWZmZXJibG9h
dCBhbmQgdHJ5aW5nIHRvIG1ha2UgdGhlIHdvcmxkIGEgYmV0dGVyIHBsYWNlLiBBbHdheXMgd2ls
bGluZyB0byBoZWxwLCBhbmQgd2l0aG91dCBoaW0g4oCTIExpYnJlUW9TIChhbmQgdGhlIG90aGVy
IFFvRSBzb2x1dGlvbnMgb3V0IHRoZXJlKSB3b3VsZG7igJl0IGV4aXN0Lgo+Pj4KPj4+IERhdmUg
d2FzIGFuIGluc3BpcmF0aW9uLCBhbmQgd2UgYWxsIG1pc3MgaGltLiBXZeKAmXJlIHJlYWNoaW5n
IG91dCB0byBmYW1pbHkgYW5kIGNsb3NlIGZyaWVuZHMgdG8gc2VlIGlmIHRoZXJl4oCZcyBhbnl0
aGluZyB3ZSBjYW4gZG8gdG8gaGVscC4KPj4+Cj4+PiBEYXZlIHdhcyBhbiBpbnNwaXJhdGlvbiB0
byB1cy4gRGF2ZeKAmXMgY29udHJpYnV0aW9ucyB0byBMaW51eCwgRlEtQ29EZWwsIGFuZCBDQUtF
IGltcHJvdmVkIGludGVybmV0IGNvbm5lY3Rpdml0eSBhcm91bmQgdGhlIHdvcmxkIGZvciBtaWxs
aW9ucyBvZiBwZW9wbGUuIEJlY2F1c2Ugb2YgaGltLCBtaWxsaW9ucyBvZiBwZW9wbGUgbm93IGhh
dmUgYWNjZXNzIHRvIHJlbGlhYmxlIHZpZGVvIGNhbGxzIOKAkyBhbmQgaW4gdHVybiwgYWNjZXNz
IHRvIGxvdmVkIG9uZXMsIGhlYWx0aGNhcmUsIGFuZCBjb21tdW5pdHkuIE9uZSBvZiBSb2JlcnTi
gJlzIElTUCBjdXN0b21lcnMgaXMgYSBraW5kIHBhcmFwbGVnaWMgd29tYW4gd2hvIGxpdmVzIGlu
IGEgZmFyLWZsdW5nIHJ1cmFsIENvbG9uaWEgYXJvdW5kIEVsIFBhc28sIFRleGFzLiBIZXIgcmVs
aWFibGUgYWNjZXNzIHRvIGhlciBkb2N0b3JzIHRocm91Z2ggdGVsZW1lZGljaW5lLCBhbmQgdG8g
aGVyIGZhbWlseSB0aHJvdWdoIEZhY2VUaW1lLCB3YXMgb25seSBtYWRlIHBvc3NpYmxlIGJlY2F1
c2Ugb2YgaGlzIGFsZ29yaXRobXMuIFRoZXJlIGFyZSBtaWxsaW9ucyBvZiBjYXNlcyBsaWtlIGhl
cnMsIHdoZXJlIERhdmXigJlzIGNvbnRyaWJ1dGlvbnMgaGF2ZSBzaWxlbnRseSBlbmFibGVkIGh1
bWFuIGNvbm5lY3Rpb24gYW5kIHNhZmV0eS4gRXZlcnl0aGluZyBEYXZlIGNvbnRyaWJ1dGVkIHRv
IHRoZSB3b3JsZCBvZiB0ZWNobm9sb2d5IHdhcyBmcmVlIGFuZCBvcGVuIHNvdXJjZSwgZm9yIHRo
ZSBiZXR0ZXJtZW50IG9mIGh1bWFuaXR5Lgo+Pj4KPj4+IERhdmUgaXMgdGhlIHJlYXNvbiB0aGF0
IFN0YXJsaW5rIHdhcyBhYmxlIHRvIHRhY2tsZSBpdHMgbGF0ZW5jeSBpc3N1ZXMg4oCTIGVuYWJs
aW5nIGEgZ2VuZXJhdGlvbiBvZiB5b3VuZyBlbnRyZXByZW5ldXJzIGFjcm9zcyB0aGUgZGV2ZWxv
cGluZyB3b3JsZCwgc3VjaCBhcyB0aGVzZSB5b3VuZyBmb2xrcyBwaWN0dXJlZCBpbiB0aGUgUGhp
bGxpcGluZXMsIHRvIHN0YXJ0IHRoZWlyIG93biBJU1BzIHRvIGV4cGFuZCBpbnRlcm5ldCBhY2Nl
c3MgdG8gdGhlaXIgY29tbXVuaXRpZXMuIERhdmUgc3RhcnRlZCB3b3JrIG9uIEZRLUNvRGVsIGlu
IHBhcnQgYmVjYXVzZSBvZiBoaXMgb3duIGpvdXJuZXkgd29ya2luZyB0byBleHBhbmQgaW50ZXJu
ZXQgYWNjZXNzIGluIE5pY2FyYWd1YSwgc28gd2Uga25vdyBoZSBzYXcgdGhhdCBoaXMgd29yayBo
YWQgY29tZSBmdWxsLWNpcmNsZSBhbmQgaGVscGVkIHNvIG1hbnkuCj4+Pgo+Pj4gV2XigJlyZSBp
bmNyZWRpYmx5IGdyYXRlZnVsIHRvIGhhdmUgRGF2ZSBhcyBvdXIgZnJpZW5kLCBtZW50b3IsIGFu
ZCBhcyBzb21lb25lIHdobyBjb250aW51b3VzbHkgaW5zcGlyZWQgdXMg4oCTIHNob3dpbmcgdXMg
dGhhdCB3ZSBjb3VsZCBkbyBiZXR0ZXIgZm9yIGVhY2ggb3RoZXIgaW4gdGhlIHdvcmxkLCBhbmQg
bGV2ZXJhZ2UgdGVjaG5vbG9neSB0byBtYWtlIHRoYXQgaGFwcGVuLiBIZSB3aWxsIGJlIGRlYXJs
eSBtaXNzZWQuCj4+Pgo+Pj4gUFM6IERhdmUgaXMgZm9yZXZlciBpbiBvdXIgaGVhcnRzIGFuZCBz
b3VscywgaW4gb3VyIHJvdXRlcnMgYW5kLi4uaW4gcHJvZHVjdGlvbiEKPj4+IGh0dHBzOi8vZ2l0
aHViLmNvbS9MaWJyZVFvRS9MaWJyZVFvUy9wdWxsLzY4NAo+Pj4KPj4+IEFsbCB0aGUgYmVzdCwK
Pj4+Cj4+PiBGcmFua0ZyYW50aXNlayAoRnJhbmspIEJvcnNpawo+Pj4gaHR0cHM6Ly93d3cubGlu
a2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNpawo+Pj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNB
cHA6ICs0MjE5MTk0MTY3MTQKPj4+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUKPj4+
IFNreXBlOiBjYXNpb2E1MzAyY2EKPj4+IGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tCj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxvYXQg
bWFpbGluZyBsaXN0Cj4+PiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4+IGh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IFN0YXJsaW5rIG1haWxpbmcgbGlzdAo+
PiBTdGFybGlua0BsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4gaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vc3RhcmxpbmsKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IFN0YXJsaW5rIG1haWxpbmcgbGlzdAo+IFN0YXJsaW5rQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL3N0YXJsaW5rCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

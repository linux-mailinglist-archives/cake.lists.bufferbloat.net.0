Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EB32D474000
	for <lists+cake@lfdr.de>; Tue, 14 Dec 2021 10:59:36 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DAABC3CB38;
	Tue, 14 Dec 2021 04:59:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639475975;
	bh=4C5J6kQBkhQYbG8/flM/jyripIi2c5Q6SKFxy+enbcc=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nxZA2/53nWIiKPx7UIkasGARNx+PmSuEF/KPBpYJ9BcBDaQlE/MjkQxMagDkLA4D2
	 3tUXDoVm/DzDfPs/CQSpzKRPD77nV4F05Olooib7qlmKatRDAyPXwWTpJGqVBtL605
	 mKsMr9AaJU/6i/EJkyNTy5DJ+cbtzVmWckMbIUOkU0Rvx5PckFDNW7G/a7xqU5Chew
	 Xdq6xwzZnnXe11NQQL0Y5+ku5NDKFjQPz/tyc5S/UwobyOjL2KT4eHhTjhRGxLObYt
	 BpldBjfJ3SAZeIK80dupWkNJhip9vwiOvBtLR6e2E3EIzK4sLotbzo0p/5xbvHY7E8
	 w7dvN2/+Pk4ug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B2ABE3B29D
 for <cake@lists.bufferbloat.net>; Tue, 14 Dec 2021 04:59:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1639475973;
 bh=djsATxujh+9fsYHVzpqGXcFm35+mn55szfn6H32NmhA=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=TmMjkZ8a2nRcfRoXVo/Sx4iGNjW3NaL2OZqfUttpr6KJj8PauPixrmdZMwi2/hGZL
 l8K6RqpnweOR+FmP3rT4/O+wZTn00YB3LHrD0raJSxRlp6MZxkJ/6YgYRu9PzXAOg9
 5B463F6nfLjq425IzIiaRusw/JtaXgynVt/6Qp2s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MpDJd-1mAVyd3u3z-00qgSa; Tue, 14
 Dec 2021 10:59:32 +0100
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <89ECAB12-74A3-40B6-8C0F-D1AA22E40C71@gmail.com>
Date: Tue, 14 Dec 2021 10:59:32 +0100
Message-Id: <077B33B9-C1A6-4469-9614-F760A357BD1C@gmx.de>
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
 <18098E06-CB62-4967-B604-268063392C35@gmail.com>
 <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
 <CAA93jw4Zm558c5hLQWmP+HAt-qAJogcT7HdEyiYyB50iL+y4Sw@mail.gmail.com>
 <89ECAB12-74A3-40B6-8C0F-D1AA22E40C71@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Provags-ID: V03:K1:nzsJH3W546WXeI0pUYydG6rlD6THBInqLIgh0MQfWja8x3a5ndl
 vjRuVL5cIsEc4093F7xdi5TR6Gixj58KeOYzkSJBCL4giRU1bHClr8AW2IdXpQxUgY0XTEF
 39c9knPPNUAxzz+IAxOQA/ZMdBXSlV9CgkUOGBgnovFtFceqoqdTKYI04fEzldzBqZur6Px
 S5ivG5rW+1pqLV4BqiW5w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xmmGedHXwcY=:4WVK8gk0HbFpZBhYzL6PF6
 VmxGXqV9PRw8QgvN3gCHRl7uhmxVeET2wy7HxRxpgEE9a+X6J8jMKtgpuUUBuPDR9boqQ4MPG
 F7LgWpe1TdErZvie5LD7OCH2HluGKJUg/qaMKkWO2Ycr5EY9dD+IpnlvWEbsf527k5m/Iw+Po
 YIuxSFwEAB7pSxJt9/l3iNN9e6FMh15cL+1/XnvPsK/GY33AQHWs6vjBolUhIl6IBt7yhwXuh
 +kP/E2YCshoxRCqFwhxlCezUs018XRtxWHrxEk79aKB29xIanmRnFfzRyl9a1h3v9UNgMUHvN
 aZuWHyXI4mKl4YvFrd5ft3kdEHkzytynDR/lG7Vc3FqhdzUTfp4X7NqqZho5B4/MF1RwmT7rY
 w2weSSjOJLaCthJMwu0Qf2hOlRZifeoR/v48bKGu8s3zEDAenn8MT8Sd6f2VlIEPUJ1qEB+S5
 qXYHnYX8cLOOC4SH3gzxX8W0TnwYptLh/Tc96/VuB+IX7VuiirjWW4+TlrHk8g1yBxKqj/k9u
 gsvYqCYMVF7klfSddd5o5aexV/MnhysDbJ+R6fj8BVvwvzeI7fC9dhir3AdW46ta/nrT80WEz
 yWueMu/NtBbhYwvXm5MuRZyGeawKjEL2at/UsKBhSddyJ7PUeRFqjds6bo/Va+UQATt28J12N
 gQTs95xZ0+w5TPYgXwMbb7GY3swIQl1BQLNtSoq5Y4us3Z2BWMLicCKGS2K7Nk0wnSZ8lKQRf
 aEog3C2B/ckTi8oHwzrgjtlJuxbo57th2kqSQLUnqSlnHBb9b3KxxdQmxzx9UydxRWh4MtkGN
 M9JAlzw82Ws4pCf6/59b9eek5fX8eUbTIa9eYXfz3fzJ58KYWbZ7ColrqYN9+HoBNs2c8wI/s
 U5PRDiR9uFt7aSTwxhCzsI8pPWaH5ZmNz4lLS/uZU6wafXoOY9whfQcjeKINZ6oZdIII+B0r3
 k961pBw/9bg7AjfvouftRxRUGpVExdWUkj1QtEkKJm2Xj1TCiCxfFojDcfICxDSz3FhzpDLhm
 /9eG94joQY6yfIRQ11Ci5N+cUaNbAXC7/CLVBo32iWEy+QvL0aW1nPLOlF4za0kDmjzHMnl5q
 AVAx/2hn+1bIdI=
Subject: Re: [Cake] sometimes I worry about cobalt's effectiveness
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4KCj4gT24gRGVjIDE0LCAyMDIxLCBhdCAxMDo1NywgSm9uYXRoYW4gTW9ydG9u
IDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyb3RlOgo+IAo+PiBPbiAxNCBEZWMsIDIwMjEsIGF0
IDg6MDYgYW0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4+IAo+PiBv
aywgaXQgbG9va3MgbGlrZSBlY24gYW5kIHBlcmhhcHMgZHNjcCBpcyBidXN0ZWQgb24gdGhpcyBt
aWtyb3Rpawo+PiByZWxlYXNlLiBUb24gbW9yZSBwbG90cywgZmFsc2Ugc3RhcnRzLCBhbmQgcGFj
a2V0IGNhcHR1cmVzIGhlcmUuCj4+IAo+PiBodHRwczovL2ZvcnVtLm1pa3JvdGlrLmNvbS92aWV3
dG9waWMucGhwP3A9ODk3ODkyI3A4OTc4OTIKPj4gCj4+IEFsc28gd2VsbCwgY29kZWwgaXMgZG9p
bmcgYmV0dGVyIHRoYW4gY29iYWx0LCBhbmQgU0ZRIGF0IGxlYXN0IGF0Cj4+IHRoZXNlIFJUVHMg
aXMgZG9pbmcgcmVhbGx5LCByZWFsbHkgd2VsbC4KPiAKPiBDb2RlbCAqd2l0aCBFQ04gZGlzYWJs
ZWQqIGlzIGRvaW5nIGJldHRlciB1bmRlciB0aGVzZSBjb25kaXRpb25zLCBiYXNlZCBvbiB3aGF0
IEkgY2FuIHNlZSB2aWEgdGhlIEdvb2dsZSBEcml2ZSBsaW5rcy4gIFRoaXMgbWFrZXMgc29tZSBz
ZW5zZSBpZiB0aGUgRUNOIENFIG1hcmtzIGFyZSBiZWluZyBzaWxlbnRseSBlcmFzZWQgKHdoaWNo
IGlzICp2ZXJ5KiBiYWQgYmVoYXZpb3VyKSwgcmF0aGVyIHRoYW4gdGhlIHBhY2tldHMgY2Fycnlp
bmcgdGhlbSBiZWluZyB0cmVhdGVkIGFzIGRyb3BwZWQgKGFzIEknZCBleHBlY3QgZnJvbSBhIHdy
b25nIGNoZWNrc3VtKS4KPiAKPiBVbmRlciB0aGlzIHBhcnRpY3VsYXIgcGF0aG9sb2d5LCBDT0JB
TFQgaXMgc3RpbGwgYWJsZSB0byBhY3QgdmlhIHRoZSBCTFVFIGFsZ29yaXRobSwgYnV0IGluIENh
a2UgdGhpcyBraWNrcyBpbiBvbmx5IHdoZW4gdGhlIHF1ZXVlIGZpcnN0IHJlYWRzIGFzIGZ1bGwu
ICBJbiBvdGhlciBpbXBsZW1lbnRhdGlvbnMgb2YgQ09CQUxULCBpdCBhbHNvIHRyaWdnZXJzIHdo
ZW4gdGhlIHNvam91cm4gdGltZSByZWFjaGVzIDQwMG1zIChieSBkZWZhdWx0KS4KPiAKPiBNaWty
b3RpayAtIG9yIHdob2V2ZXIgaXMgcmVzcG9uc2libGUgZm9yIHRoaXMgLSBuZWVkcyB0byBmaXgg
dGhlaXIgY3JhcCBzbyB0aGF0IHRoZSBFQ04gZmllbGQgaXMgcHJvY2Vzc2VkIGNvcnJlY3RseS4g
IEVuZCBvZiBkaXNjdXNzaW9uLgoKQ291bGQgd2UgbWF5YmUgaW50cm9kdWNlIGEgbm8tZWNuIGtl
eXdvcmQgdG8gc3dpdGNoIGNha2UgdG8gZHJvcCBvbmx5IG1vZGU/IElmIG9ubHkgdG8gaGVscCBk
aWFnbm9zZSBFQ04gaXNzdWVzPwoKUmVnYXJkcwoJU2ViYXN0aWFuCgoKPiAKPiAtIEpvbmF0aGFu
IE1vcnRvbgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0ED7205506
	for <lists+cake@lfdr.de>; Tue, 23 Jun 2020 16:41:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8DF013CB38;
	Tue, 23 Jun 2020 10:41:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592923304;
	bh=b04+cw6+TpCTqMxr2aWFjLpBU+rHHnx1Hb4T2NieBPA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q0uN0lZVhBHVL9fetkEeFw3wJlIUhYwKE/nJ4jXsAJnvKhByvHAv5u1z0B2rWhYqr
	 23NSG+2+iu/QCDrp739nDWWu0SnigKXCgtrinDLiKvYjhQcxogslU70K8sFfXc41Mo
	 nfKijc2WwGd8b0HC9w4w8/v7IBucF4Sfw7cGK3ncCPPGWQzGW9gewNmmF24FdnW+K/
	 5iVOds3XqnM/8mQF6MLiUBZXOog2NiYBopAQhD1b8Td8bv1yRbpJKiZhmHoqIaCtId
	 lJIWB4IYTVzC7eRF2RPEyFCaupjUiOJSyWBy2/WmmT9LAZ05hPWhzitCtgMvsBGy+g
	 ++q316dbhgI2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 33AF53B29E
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 10:41:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592923302;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1vq7k4gCAnEYjiSSLCBQjxYUqup6Q3xlwtC4udBa0x0=;
 b=HxmKkAd1MssrF+h36STx+gbiDY6xUzSa1CwQGSDf3AcA2Tl3wrgNO9MD2nMq8aR5zYOw0z
 tJ2Di8Ajl3TnY3WoFMSjkJFvDJZJd5LBNpVuoJhvZNdga+6inQXxa1C4B7zrmvA8vMimpP
 D3bB2Esqjzd3q35aFsmzre8w0+tIEUc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-TBJI-FRhO-WZx_92FtIw8Q-1; Tue, 23 Jun 2020 10:41:38 -0400
X-MC-Unique: TBJI-FRhO-WZx_92FtIw8Q-1
Received: by mail-wm1-f70.google.com with SMTP id c66so4755440wma.8
 for <cake@lists.bufferbloat.net>; Tue, 23 Jun 2020 07:41:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=1vq7k4gCAnEYjiSSLCBQjxYUqup6Q3xlwtC4udBa0x0=;
 b=Qros9sgW3J+pHGxNrtg0rujH96/u7nsnqjaMJ+fqJul9pRzgJGQwuyvQS2UetgCU/Y
 D+35y2PvfiPhyF583a3VyDax0oOzW3RQWG0sUhZpB8Y/W8Mw8/MxkbLHs7cGnJ5DZKS3
 9Ru/yDWMFxy4uzyXv1N/jteLV692KCJV0k84dUI4W1rxCaZvfsPMoL8z7mdaEadI5T5L
 YiZZE98ZlX5uTmyKbZalr7D/EkbsfzL4yk59IsW5hcx9sO/vlZv/HXxnlOINcQT315o7
 eYgw7i9vopCPYmRpfIzIPSt2kV+9j32mEXqUoua9CLfpJl49d7up6nvsanYqZ7LE/EAf
 lQVw==
X-Gm-Message-State: AOAM530d0glWkUj7X8WQ2koSwChrgsWbQGv3J/YdDGWOSGCjQ34kkUSw
 qzgGuYCThrp/U2rzUt5gETZ9MNE32JpQZnehrfuVVlg9Nn3UDtaRae+a+ZbFDYvxYg4/ZH3DiSF
 cOCE0Ag5ljek2MljdzVunJw==
X-Received: by 2002:a1c:b4c2:: with SMTP id d185mr2194848wmf.57.1592923297481; 
 Tue, 23 Jun 2020 07:41:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJ15/etNgDYKS1RNNjG+o4VaYMidoiFjSCWWxakn3VmTupwHjdKAI/H6zB3g9q6CrkaNSrLQ==
X-Received: by 2002:a1c:b4c2:: with SMTP id d185mr2194826wmf.57.1592923297166; 
 Tue, 23 Jun 2020 07:41:37 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id g18sm3982074wme.17.2020.06.23.07.41.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Jun 2020 07:41:36 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id C5420181502; Tue, 23 Jun 2020 16:41:34 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jose Blanquicet <blanquicet@gmail.com>
In-Reply-To: <CAFC8iJ+LHkmQWYZomD6rFaoUs3Oo_-0=QV=JmvdtspZ4+=mqdA@mail.gmail.com>
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
 <877dvzt84w.fsf@toke.dk>
 <CAFC8iJ+LHkmQWYZomD6rFaoUs3Oo_-0=QV=JmvdtspZ4+=mqdA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 23 Jun 2020 16:41:34 +0200
Message-ID: <87lfkdrgip.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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

Sm9zZSBCbGFucXVpY2V0IDxibGFucXVpY2V0QGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBIaSBUb2tl
LAo+Cj4gVGhhbmtzIGZvciB5b3VyIHJlcGx5Lgo+Cj4gT24gTW9uLCBKdW4gMjIsIDIwMjAgYXQg
NTo0NyBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+ID4gV2UgaGF2ZSBhbiBlbWJlZGRlZCBzeXN0ZW0gd2l0aCBsaW1pdGVkIENQVSByZXNvdXJj
ZXMgdGhhdCBhY3RzIGFzIGEKPj4gPiBnYXRld2F5IHRvIHByb3ZpZGUgSW50ZXJuZXQgYWNjZXNz
IGZyb20gTFRFIHRvIGEgcHJpdmF0ZSBVU0ItTkNNCj4+ID4gbmV0d29yayAoQW5kIGFsc28gdG8g
YSBXaS1GaSBwcml2YXRlIG5ldHdvcmsgYnV0IHdlIHdpbGwgd29yayBvbiBpdAo+PiA+IGxhdGVy
KS4gT3VyIHByb2JsZW0gaXMgdGhhdCB0aGUgYmFuZHdpZHRoIG9uIExURSBhbmQgVVNCIGxpbmsg
aXMKPj4gPiBoaWdoZXIgdGhhbiB3aGF0IHRoZSBzeXN0ZW0gaXMgYWJsZSB0byBoYW5kbGUgdGh1
cyBpdCByZWFjaGVzIDEwMCUgb2YKPj4gPiBDUFUgbG9hZCB3aGVuIHdlIHBlcmZvcm0gYSBzaW1w
bGUgc3BlZWQgdGVzdCBmcm9tIGEgZGV2aWNlIG9uIHRoZQo+PiA+IHByaXZhdGUgbmV0d29yay4K
Pj4KPj4gV2hhdCBzcGVlZHMgd2VyZSB5b3UgZ2V0dGluZyB3aXRob3V0IHNoYXBpbmc/Cj4KPiBC
ZXR3ZWVuIDM1IGFuZCA0ME1icHMuCj4KPj4gPiBUaGVyZWZvcmUsIHdlIHdhbnQgdG8gbGltaXQg
dGhlIGJhbmR3aWR0aCB0byBhdm9pZCBzeXN0ZW0gZ2V0dGluZwo+PiA+IHNhdHVyYXRlZCBpbiBz
dWNoIHVzZS1jYXNlLiBUbyBkbyBzbywgd2UgdGhvdWdodCB0byB1c2UgdGhlIENBS0Ugb24KPj4g
PiB0aGUgVVNCIGludGVyZmFjZS4gRm9yIGluc3RhbmNlLCB3ZSB0cmllZDoKPj4gPgo+PiA+ICAg
ICB0YyBxZGlzYyByZXBsYWNlIHJvb3QgZGV2IGV0aDAgY2FrZSBiYW5kd2lkdGggMjBtYml0IGV0
aGVybmV0Cj4+ID4gaW50ZXJuZXQgZmxvd2JsaW5kIG5vbmF0IGJlc3RlZmZvcnQgbm93YXNoCj4+
ID4KPj4gPiBJdCB3b3JrZWQgY29ycmVjdGx5IGFuZCB0aGUgbWF4aW11bSByYXRlIHdhcyBsaW1p
dGVkIGJ1dCB0aGVyZSBhcmUgdHdvCj4+ID4gdGhpbmdzIHRoYXQgYXJlIHdvcnJ5aW5nIHVzOgo+
PiA+Cj4+ID4gMSkgVGhlIG1heGltdW0gcmF0ZSByZWFjaGVkIGFmdGVyIGFwcGx5aW5nIENBS0Ug
d2FzIGluIGJldHdlZW4gMTJNYnBzCj4+ID4gYW5kIDE1TWJwcyB3aGljaCBpcyBxdWl0ZSBsb3dl
ciB0aGFuIHRoZSAyME1icHMgd2UgYXJlIGNvbmZpZ3VyaW5nLCB3ZQo+PiA+IHdlcmUgZXhwZWN0
aW5nIGFyb3VuZCAxOC0xOS4gV2h5PyBJcyB0aGVyZSBzb21ldGhpbmcgaW4gdGhlIHBhcmFtZXRl
cnMKPj4gPiB3ZSBhcmUgZG9pbmcgd3Jvbmc/IFBsZWFzZSB0YWtlIGludG8gYWNjb3VudCB0aGF0
IG91ciBnb2FsIGlzIHRvIGxpbWl0Cj4+ID4gdGhlIHJhdGUgYnV0IGFkZGluZyBhcyBsaXR0bGUg
Q1BVIGxvYWQgYXMgcG9zc2libGUuCj4+Cj4+IEhtbSwgYXJlIHlvdSBhY3R1YWxseSBydW5uaW5n
IG91dCBvZiBDUFU/IEkuZS4sIGlzIHRoZSBDUFUgcGVnZ2VkIGF0Cj4+IDEwMCUgd2hlbiB5b3Ug
aGl0IHRoaXMgbGltaXQ/IFdoYXQga2luZCBvZiBwbGF0Zm9ybSBhcmUgeW91IHJ1bm5pbmcgb24/
Cj4+IEFuZCB3aGF0IGtlcm5lbCBhbmQgQ0FLRSB2ZXJzaW9ucyBhcmUgeW91IHVzaW5nPwo+Cj4g
SSBjaGVja2VkIHRoZSBDUFUgd2l0aCB0b3AgYW5kIHRoZXJlIGlzIHN0aWxsIGZyZWUgQ1BVIHRv
IGJlIHVzZWQuIFdlCj4gYWxzbyB0cmllZCB3aXRoIGxvd2VyIHZhbHVlcyBsaWtlIDEwIGFuZCBp
dCBpcyBhZ2FpbiBmYXIgYXdheSBmcm9tIHRoZQo+IGNvbmZpZ3VyZWQgbGltaXQuCj4KPiBXZSBo
YXZlIGp1c3QgYSBwZXJjZW50YWdlIG9mIGFuIEFSTSBDb3J0ZXggQTcgKDEuMkdIeikgYmVjYXVz
ZSB0aGUKPiByZXN0IGlzIHJlc2VydmVkIGZvciBtb2RlbS4gV2UgYXJlIG5vdyB0cnlpbmcgdG8g
b3B0aW1pemUgYWxsIHRoZQo+IGFwcGxpY2F0aW9ucyBpbiB0aGUgc3lzdGVtIGJ1dCBMVEU8LT5X
SUZJL1VTQiBkYXRhIHRyYW5zZmVyIGlzIGluZGVlZAo+IHRoZQo+IHVzZS1jYXNlIHRoYXQgcHV0
cyBvdXIgc3lzdGVtIGluIGNyaXNpcy4KPgo+IFRoZSBrZXJuZWwgdmVyc2lvbiBpcyAzLjE4IGFu
ZCBmb3Igd2UgYXJlIHVzaW5nIHRoZSBsYXRlc3QgY29tbWl0IG9uCj4gbWFzdGVyIGJyYW5jaCAo
OWQ3OWUyYikgZm9yIENBS0UuIEluIGNhc2UsIHdlIGNvdWxkIGNoYW5nZSBDQUtFIGJ1dAo+IG5v
dCB0aGUga2VybmVsIHZlcnNpb24sIGF0IG1vc3Qgc29tZSBzcGVjaWZpYyBwYXRjaGVzLgoKUmln
aHQsIHdlbGwgaWYgeW91J3JlIG5vdCBydW5uaW5nIG91dCBvZiBDUFUgSSBndWVzcyBpdCBjb3Vs
ZCBiZSBhCnRpbWluZyBpc3N1ZS4gVGhlIENBS0Ugc2hhcGVyIHJlbGllcyBvbiBhY2N1cmF0ZSB0
aW1lc3RhbXBzIGFuZCB0aGUKcWRpc2Mgd2F0Y2hkb2cgdGltZXIgdG8gc2NoZWR1bGUgdGhlIHRy
YW5zbWlzc2lvbiBvZiBwYWNrZXRzLiBBIGxvYWRlZApzeXN0ZW0gY2FuIHNpbXBseSBtaXNzIGRl
YWRsaW5lcywgd2hpY2ggd291bGQgYmUgY29uc2lzdGVudCB3aXRoIHRoZQpiZWhhdmlvdXIgeW91
J3JlIHNlZWluZy4KCkluIGZhY3QsIHdoZW4gbG9va2luZyBpbnRvIHRoaXMgYSBiaXQgbW9yZSwg
SSBjYW1lIGFjcm9zcyB0aGlzIGNvbW1pdAp0aGF0IHNlZW1lZCB0byBvYnNlcnZlIHRoZSBzYW1l
IGJlaGF2aW91ciBpbiBzY2hfZnE6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvdG9ydmFsZHMvYy9m
ZWZhNTY5YTlkNGIKClNvIEkgZ3Vlc3Mgd2UgY291bGQgdHJ5IHRvIGRvIHNvbWV0aGluZyBzaW1p
bGFyIGluIENBS0UuCgpDb3VsZCB5b3UgcGxlYXNlIHBvc3QgdGhlIG91dHB1dCBvZiAndGMgLXMg
cWRpc2MnIGFmdGVyIGEgdGVzdCBydW4/IFRoYXQKc2hvdWxkIGdpdmUgc29tZSBpbmRpY2F0aW9u
IG9uIGhvdyBtdWNoIHRoZSBzaGFwZXIgaXMgdGhyb3R0bGluZy4uLgoKPj4gPiAyKSBUaGUgQ1BV
IGxvYWQgYWRkZWQgYnkgQ0FLRSB3YXMgbm90IG5lZ2xpZ2libGUgZm9yIG91ciBzeXN0ZW0uIElu
Cj4+ID4gZmFjdCwgd2UgY29tcGFyZWQgdGhlIENQVSBsb2FkIHdoZW4gbGltaXRhdGlvbiB3YXMg
ZG9uZSBieSBDQUtFIGFuZCBieQo+PiA+IHRoZSBkZXZpY2Ugb24gdGhlIHByaXZhdGUgbmV0d29y
aywgZS5nLiBjdXJsIHRvb2wgd2l0aCBwYXJhbWV0ZXIKPj4gPiAiLS1saW1pdC1yYXRlIi4gQXMg
YSByZXN1bHQsIHdlIGZvdW5kIHRoYXQgdGhlIENQVSBsb2FkIHdoZW4gdXNpbmcKPj4gPiBDQUtF
IHdhcyAzMCUuIElzIHRoZXJlIGFueSB3YXkgdG8gbWFrZSBpdCBsaWdodGVyIHdpdGggYSBkaWZm
ZXJlbnQKPj4gPiBjb25maWd1cmF0aW9uPwo+Pgo+PiBObywgeW91J3ZlIGFscmVhZHkgdHVybmVk
IG9mZiBtb3N0IG9mIHRoZSBmZWF0dXJlcyB0aGF0IG1pZ2h0IGluY3VyCj4+IG92ZXJoZWFkLCBz
byBJIGRvbid0IHRoaW5rIHRoZXJlJ3MgYW55dGhpbmcgbW9yZSB5b3UgY2FuIGRvCj4+IGNvbmZp
Z3VyYXRpb24td2lzZSB0byBpbXByb3ZlIENQVSBsb2FkLiBTaGFwaW5nIGRvZXMgdGVuZCB0byB1
c2UgdXAgYQo+PiBsb3Qgb2YgQ1BVLCBzbyBpdCdzIG5vdCB0b28gc3VycHJpc2luZyB5b3UgcnVu
IGludG8gaXNzdWVzIGhlcmUuCj4KPiBDb3VsZCB5b3UgcGxlYXNlIGhlbHAgdXMgdG8gaWRlbnRp
Znkgd2hpY2ggb25lIGlzIHN0aWxsIGFjdGl2ZT8gV2UKPiB0aG91Z2h0IHdlIGhhZCBhbHJlYWR5
IHR1cm5lZCBvZmYgYWxsIHRoZSBmZWF0dXJlcyBub3QgbmVlZGVkIHRvIGFwcGx5Cj4gYSBsaW1p
dGF0aW9uIHdpdGggYSBzaW5nbGUgcXVldWUgKEJlc3RlZmZvciBtb2RlKS4KCldlbGwgdGhlIG9u
bHkgdGhpbmcgbW9yZSB5b3UgY2FuIHR1cm4gb2ZmIGJ5IGNvbmZpZ3VyYXRpb24gaXMgdGhlIHNo
YXBlcgppdHNlbGYgOikKCj4+IFdlIGRpZCByZWNlbnRseSBnZXQgYSBwdWxsIHJlcXVlc3Qgd2hv
c2UgYXV0aG9yIHN0YXRlcyB0aGF0IGhlIHdhcwo+PiBzZWVpbmcgYSAxLzMgaW1wcm92ZW1lbnQg
aW4gcGVyZm9ybWFuY2UgZnJvbSBpdC4gU2VlOgo+PiBodHRwczovL2dpdGh1Yi5jb20vZHRhaHQv
c2NoX2Nha2UvcHVsbC8xMzYKPj4KPj4gWW91IGNvdWxkIHRyeSB0aGlzOyBpZiB5b3VyIGluZ3Jl
c3MgbmV0d29yayBkZXZpY2UgZHJpdmVyIGhhcyB0aGUgc2FtZQo+PiBpc3N1ZSB3aXRoIHNrYnMg
YmVpbmcgYWxsb2NhdGVkIGluIHNtYWxsZXIgYml0cywgeW91IG1heSBzZWUgYSBzaW1pbGFyCj4+
IGluY3JlYXNlIHdpdGggdGhpcyBwYXRjaC4gRm9yIGEgcXVpY2sgdGVzdCB5b3UgY291bGQgYWxz
byBqdXN0IHRyeQo+PiBjb21tZW50aW5nIG91dCB0aGUgY2FsbCB0byBjYWtlX2hhbmRsZV9kaWZm
c2VydigpIGVudGlyZWx5IHNpbmNlIHlvdSdyZQo+PiBydW5uaW5nIGluIGJlc3RlZmZvcnQgbW9k
ZSBhbnl3YXkgOikKPgo+IEludGVyZXN0aW5nLiBXZSB3aWxsIHRyeSB0aGlzLCB3ZSBjb21tZW50
ZWQgb3V0IHRoZSBjYWxsIHRvCj4gY2FrZV9oYW5kbGVfZGlmZnNlcnYoKSBhcyB5b3Ugc2FpZCBh
bmQganVzdCB0byBiZSBzdXJlLCB3ZSBhbHNvCj4gYXBwbGllZCB0aGUgMm5kIGNvbW1pdCBvZiB0
aGUgUFIuIEkgd2lsbCBiZSBiYWNrIHNvb24gd2l0aCBuZXdzLgoKT0ssIGdyZWF0IQoKLVRva2UK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

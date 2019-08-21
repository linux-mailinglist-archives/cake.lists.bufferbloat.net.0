Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id D52B197593
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 11:05:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D62F23CB38;
	Wed, 21 Aug 2019 05:05:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566378350;
	bh=U0GGEmQ5GUvYWnCCZnxkuok4At6leigb7sUkFjk3g40=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qih+l3qKy0zY61lF9r3MNEWRCduTDrgHQhc7lskpUgBLtj7Z/tfksWZkGZMfcJ5Nh
	 5hBtRj31K5wRB8skmmHyUAdyov94w36UxqMWazJxnPHeh5TMRwI8mvG5gyf/Ll0nrY
	 gPtg9NYKq/82ajIjbFDWDz3F4t3MZccgdjhu/mci23UrwaDJuVdNqzK/G7tUnFTjlA
	 kTQPBTKT+yOmdjYVMYHnPPXrUaQhVO6R4VNig9DSdAeGDJbvutf6ejbo5kbOaLMRmH
	 jzxDtAOXGhIl/oPFaKjo8ssXm4cDj27CgDKv/znIn8y1JsChSHOZUbBRWUyYbUBR2S
	 iK0OLVFE5RmOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6065D3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 05:05:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=sO/7rpuLuk1rGK/GzeAr6s4n/dBC2AgcF7DgU2JQXa0=; 
 b=qdEqfmtiUo5X14SSEMX11yQDD2/fgUXhyegDChc5SQ9l9jJb8aBQtttoif2UngbBMibnpgXth3pLXp3yz6I1/TPqb5pWRP9+1OeNbRq3zsnmLhUoEa5e8/IaP2EweBBKF+wzAanj2/Vy/tOOxuK6S2K9aqxCtvTt/8szDDea654=;
To: Sebastian Moeller <moeller0@gmx.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
 <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
 <F09BCB54-F984-48E9-904D-51C818E8E124@gmx.de>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <f4140b08-7e3b-6c11-2a47-8943a5a91f26@newmedia-net.de>
Date: Wed, 21 Aug 2019 11:04:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <F09BCB54-F984-48E9-904D-51C818E8E124@gmx.de>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0MZ1-0004sE-N9; Wed, 21 Aug 2019 11:05:55 +0200
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

CkFtIDIxLjA4LjIwMTkgdW0gMDk6NTYgc2NocmllYiBTZWJhc3RpYW4gTW9lbGxlcjoKPgo+PiBP
biBBdWcgMjEsIDIwMTksIGF0IDA5OjUwLCBTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2No
YWxsQG5ld21lZGlhLW5ldC5kZT4gd3JvdGU6Cj4+Cj4+Pj4gaSBoYXZlIHNlZW4gdGhpcyBhbHJl
YWR5LiBvdXQgcGxhbiBoZXJlIGlzIHRoYXQgdGhlIHVzZXIgc3BlY2lmaWVzIHRoZSBpbnRlcm5l
dCBjb25uZWN0aW9uIHR5cGUgbGlrZSB2ZHNsMiwgY2FibGUsIHdoYXRldmVyIGluIGNhc2Ugb2Yg
Y2FrZSB3aGljaCB0aGVuIHdpbGwgYmUgdXNlZAo+Pj4+IGFzIGFyZ3VtZW50Cj4+PiAJR29vZCBn
b2FsLCB0aGF0IGFsc28gaXMgdGhlb3JldGljYWxseSB3ZWxsIHN1cHBvcnRlZCBieSBjYWtlIHdp
dGggaXRzIG11bHRpdHVkZSBvZiBlbmNhcHN1bGF0aW9uL292ZXJoZWFkIHJlYWxhdGVkIGtleXdv
cmRzLiBVbmZvcnR1bmF0ZWx5IHJlYWxpdHkgaXMgbm90IGFzIG5pY2UgYW5kIHRpZHkgYXMgdGhp
cyBjb2xsZWN0aW9uIG9mIGtleXdvcmRzIGltcGxpZXMsIFRoZXJlIGFyZSA4IGtleXdvcmRzIGZv
ciBBVE0vQUFMNSBiYXNlZCBlbmNhcHN1bGF0aW9ucyAoQURTTCwgQURTTDIsIEFEU0wyKywgLi4u
KSwgMiBmb3IgVkRTTDIsIDEgZm9yIERPQ1NJUywgMSBmb3IgZXRoZXJuZXQsIGZvciBhIHRvdGFs
IG9mIDEyIHRoYXQgYWxsIGNhbiBiZSBjb21iaW5lZCB3aXRoIG9uZSBvciBtb3JlIFZMQU4tdGFn
IGtleXdvcmRzLCBmb3IgYSB0b3RhbCBvZiAyNCB0byAzNiBjb21iaW5hdGlvbnMuIChBbmQgdGhl
c2UgYXJlIG5vdCBldmVuIGV4aGF1c3RpdmUsIGFzIGUuZy4gdGhlIHVzZSBvZiBkcy1saXRlIGNh
biBpbmNyZWFzZSB0aGUgcGVyLXBhY2tldCBvdmVyaGVhZCBmb3IgSVB2NCBwYWNrZXRzIGJ5IGFu
b3RoZXIgMjAgYnl0ZXMpLgo+Pj4gCUlkZWFsbHkgb25lIHdvdWxkIGp1c3QgZW1waXJpY2FsbHkg
bWVhc3VyZSB0aGUgZWZmZWN0aXZlIG92ZXJoZWFkIGFuZCB1c2UgdGhlICJvdmVyaGVhZCBOTiBt
cHUgTk4iIGtleXdvcmRzIGluc3RlYWQsIGJ1dCB0aGF0IGhhcyBpc3N1ZXMgYXMgbWVhc3VyaW5n
IG92ZXJoZWFkIGVtcGlyaWNhbGx5IGlzIHNpbXBseSBoYXJkLi4uIFRoZSBiZXN0IGJldCB3b3Vs
ZCBiZSB0byBsZXZlcmFnZSBCRVJFQyB0byByZXF1aXJlIElTUHMgdG8gZXhwbGljaXRseSBpbmZv
cm0gdGhlaXIgY3VzdG9tZXJzIG9mIHRoZSBlZmZlY3RpdmUgZ3Jvc3MtcmF0ZXMgYW5kIGFwcGxp
Y2FibGUgb3ZlcmhlYWRzIGZvciBlYWNoIGxpbmssIGJ1dCBJIGFtIG5vdCBob2xkaW5nIG15IGJy
ZWF0aC4gT3ZlciBhdCBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtdXNlci9uZXR3b3Jr
L3RyYWZmaWMtc2hhcGluZy9zcW0gd2UgdHJpZWQgdG8gZ2l2ZSBzaW1wbGlmaWVkIGluc3RydWN0
aW9ucyBmb3Igc2V0dGluZyB0aGUgb3ZlcmhlYWRzIGZvciBkaWZmZXJlbnQgYWNjZXNzIHRlY2hu
b2xvZ2llcywgYnV0IHRoZXNlIGFyZSBub3QgZ3VhcmFudGVlZCB0byBmaXQgZXZlcnlib2R5IChu
b3QgZXZlbiBtb3N0IHVzZXJzLCBhcyB3ZSBoYXZlIG5vIG51bWJlcnMgYWJvdXQgdGhlIHJlbGF0
aXZlIGRpc3RyaWJ1dGlvbnMgb2YgdGhlIGRpZmZlcmVudCBlbmNhcHN1bGF0aW9uIG9wdGlvbnMp
Lgo+Pj4KPj4+IEJlc3QgUmVnYXJkcwo+Pj4gCSJhbm90aGVyIiBTZWJhc3RpYW4KPj4gYXMgaSBz
YWlkLiBpIGp1c3Qgc3RhcnRlZC4gbGV0cyBzZWUgaWYgaSBjYW4gZmluZCBhIGJldHRlciBzb2x1
dGlvbiBvciBhIGNsZXZlciB3YXkgb2YgYXV0byBkZXRlY3RpbmcvbWVhc3VyaW5nIHRoZSBvdmVy
aGVhZAo+IAlJZiB5b3UgZG8gZmluZCBhIGNsZXZlciBhbmQgZmF0IHdheSwgcGxlYXNlIGxldCBt
ZSBrbm93IDspLiBUaGUgYmVzdCBJIGNhbWUgdXAgd2l0aCBvbmx5IHdvcmtzIGZvciBBVE0vQUFM
NSBhbmQgaXMgbmVpdGhlciBjbGV2ZXIsIGF1dG9tYXRlZCBvciBmYXN0IGlzIGF0IGh0dHBzOi8v
Z2l0aHViLmNvbS9tb2VsbGVyMC9BVE1fb3ZlcmhlYWRfZGV0ZWN0b3IgKHdoaWNoIGhhcyB0aGUg
YWR2YW50YWdlIG9mIGFsc28gY29uZmlybWluZyBBVE0vQUFMNS1xdWFudGlzYXRpb24pLiBJIGhh
dmUgc29tZSBpZGVhcyBhYm91dCBob3cgdG8gZGVkdWNlIG92ZXJoZWFkIGdlbmVyaWNhbGx5IGJ1
dCB0aGVzZSByZXF1aXJlIHZlcnkgcHJlY2lzZSBtZWFzdXJlbWVudHMgb2YgbWF4aW11bSBnb29k
cHV0IGZvciBkaWZmZXJlbnQgcGFja2V0IHNpemVzIGFuZCBldmVuIGxlc3MgZml0IGZvciBnZW5l
cmFsIGNvbnN1bXB0aW9uIHRoYXQgdGhlIGF0bSBzdHVmZi4KdGhlbiB0aGUgb25seSBzb2x1dGlv
biBpcyBoYXZpbmcgYSBnb29kIHJlbGlhYmxlIHBlZXIgZm9yIG1lYXN1cmluZy4gd2UgCm1heSBt
aXNzdXNlIHNwZWVkdGVzdCBzZXJ2ZXJzIDotKQo+Cj4gQmVzdCBSZWdhcmRzCj4gCVNlYmFzdGlh
bgo+Cj4KPj4gU2ViYXN0aWFuCj4+Cj4+Pgo+Pj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

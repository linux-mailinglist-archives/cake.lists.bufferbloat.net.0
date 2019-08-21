Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9597FAF
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:07:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B9B83CB38;
	Wed, 21 Aug 2019 12:07:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566403664;
	bh=9RkHLRNEpBHXcLqqNCWBis0oMztzLHJn918IdxedYPE=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=djRX7SpLufb2iY5Nx4Tg3lhWRZIbKiPZpPrOkr3aOaTo0BGpCUd7Tw2Ha2NaLFLia
	 jHNoiwYMdw5cr4o5cTIC32Z0eRUg3bxX4ROFI1g25u6mwlDP7t7iDaXMMGgY5RzAK3
	 S73W03TA3i07WLyEjWjGOOJ5al5WIgqpg7F7pLN8nzSc35NzkunirT6ajdC0fjB5yS
	 +yxC2QR6CBpmq7SiOmY4OipI/2+o2r8tufjtZig/JoabJaLC4MHwtSu5aLqtXp8T9B
	 +x1mVrhPCNFd92a9HsDu/c6sBF2sYoO5W+KMdxmBij0Cw2ceVDdZcVxIMr+wWN1Xm3
	 GcakUuH1UDTvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C2F123CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 12:07:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=AjbQoPT/vu+Prnz79AyuL0OakQ+9wYduik1PKydPldY=; 
 b=aqA/u/MyFZYL0C3bTS9C0m37vYFoSX+EFEWC156lnVJUGHWU6Nb510OlEH7A6ciO23DH2MCUkn5cWBPfh4bYwWyICEPTtzNxq8V13ABp1iIOBrIXITsA3LP6/JrY8QuDhxRcDc8W83rbhluPkzPf+0qlsd9nMljDveLHt2Rh9XE=;
To: Dave Taht <dave.taht@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <EDCD1D95-BEA1-45A8-B6A2-4FD4BE418450@gmx.de>
 <d9f3d04b-61e7-a77f-e242-b4b99c49fe9a@newmedia-net.de>
 <CAA93jw6G3ZHeYk3cx5EZTOyAiB=c3ZSyE0taGyD=1XqrkFiYnw@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3b622537-5c80-d73a-dd7c-6e00809013c0@newmedia-net.de>
Date: Wed, 21 Aug 2019 18:06:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw6G3ZHeYk3cx5EZTOyAiB=c3ZSyE0taGyD=1XqrkFiYnw@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0T9J-0004Nw-Ih; Wed, 21 Aug 2019 18:07:49 +0200
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

CkFtIDIxLjA4LjIwMTkgdW0gMTU6MjAgc2NocmllYiBEYXZlIFRhaHQ6Cj4gT24gV2VkLCBBdWcg
MjEsIDIwMTkgYXQgMTI6NTEgQU0gU2ViYXN0aWFuIEdvdHRzY2hhbGwKPiA8cy5nb3R0c2NoYWxs
QG5ld21lZGlhLW5ldC5kZT4gd3JvdGU6Cj4+Pj4gaSBoYXZlIHNlZW4gdGhpcyBhbHJlYWR5LiBv
dXQgcGxhbiBoZXJlIGlzIHRoYXQgdGhlIHVzZXIgc3BlY2lmaWVzIHRoZSBpbnRlcm5ldCBjb25u
ZWN0aW9uIHR5cGUgbGlrZSB2ZHNsMiwgY2FibGUsIHdoYXRldmVyIGluIGNhc2Ugb2YgY2FrZSB3
aGljaCB0aGVuIHdpbGwgYmUgdXNlZAo+Pj4+IGFzIGFyZ3VtZW50Cj4+PiAgICAgICAgR29vZCBn
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
b3RoZXIgMjAgYnl0ZXMpLgo+Pj4gICAgICAgIElkZWFsbHkgb25lIHdvdWxkIGp1c3QgZW1waXJp
Y2FsbHkgbWVhc3VyZSB0aGUgZWZmZWN0aXZlIG92ZXJoZWFkIGFuZCB1c2UgdGhlICJvdmVyaGVh
ZCBOTiBtcHUgTk4iIGtleXdvcmRzIGluc3RlYWQsIGJ1dCB0aGF0IGhhcyBpc3N1ZXMgYXMgbWVh
c3VyaW5nIG92ZXJoZWFkIGVtcGlyaWNhbGx5IGlzIHNpbXBseSBoYXJkLi4uIFRoZSBiZXN0IGJl
dCB3b3VsZCBiZSB0byBsZXZlcmFnZSBCRVJFQyB0byByZXF1aXJlIElTUHMgdG8gZXhwbGljaXRs
eSBpbmZvcm0gdGhlaXIgY3VzdG9tZXJzIG9mIHRoZSBlZmZlY3RpdmUgZ3Jvc3MtcmF0ZXMgYW5k
IGFwcGxpY2FibGUgb3ZlcmhlYWRzIGZvciBlYWNoIGxpbmssIGJ1dCBJIGFtIG5vdCBob2xkaW5n
IG15IGJyZWF0aC4gT3ZlciBhdCBodHRwczovL29wZW53cnQub3JnL2RvY3MvZ3VpZGUtdXNlci9u
ZXR3b3JrL3RyYWZmaWMtc2hhcGluZy9zcW0gd2UgdHJpZWQgdG8gZ2l2ZSBzaW1wbGlmaWVkIGlu
c3RydWN0aW9ucyBmb3Igc2V0dGluZyB0aGUgb3ZlcmhlYWRzIGZvciBkaWZmZXJlbnQgYWNjZXNz
IHRlY2hub2xvZ2llcywgYnV0IHRoZXNlIGFyZSBub3QgZ3VhcmFudGVlZCB0byBmaXQgZXZlcnli
b2R5IChub3QgZXZlbiBtb3N0IHVzZXJzLCBhcyB3ZSBoYXZlIG5vIG51bWJlcnMgYWJvdXQgdGhl
IHJlbGF0aXZlIGRpc3RyaWJ1dGlvbnMgb2YgdGhlIGRpZmZlcmVudCBlbmNhcHN1bGF0aW9uIG9w
dGlvbnMpLgo+Pj4KPj4+IEJlc3QgUmVnYXJkcwo+Pj4gICAgICAgICJhbm90aGVyIiBTZWJhc3Rp
YW4KPj4gYXMgaSBzYWlkLiBpIGp1c3Qgc3RhcnRlZC4gbGV0cyBzZWUgaWYgaSBjYW4gZmluZCBh
IGJldHRlciBzb2x1dGlvbiBvciBhCj4+IGNsZXZlciB3YXkgb2YgYXV0byBkZXRlY3RpbmcvbWVh
c3VyaW5nIHRoZSBvdmVyaGVhZAo+ICsxLiBPbmUgb2YgbXkgZmF2b3JpdGUgZmV5bm1hbiBzYXlp
bmdzIGlzICJkaXNyZWdhcmQiIGFuZCB3ZSBuZWVkIG5ldwo+IHRoaW5raW5nIGhlcmUuCj4KPiBJ
IG5vdGUgdGhhdCBJIG1haW50YWluIGFueXdoZXJlIGJldHdlZW4gNi0xNiBmbGVudCAobmV0cGVy
ZiBhbmQgaXJ0dCkKPiBzZXJ2ZXJzIGFyb3VuZCB0aGUgd29ybGQsCj4gYW5kIHRoZXkgYXJlIG1v
c3RseSB1bmRlcnVzZWQuLi4uCj4KPiBTb21ldGltZXMgSSd2ZSB0aG91Z2h0IHRoYXQgYSAicmln
aHQiIGFwcHJvYWNoIHdvdWxkIGJlIHRvIHNlbmQgYSAxMAo+IHNlYyBmdWxsIHVkcCBidXJzdCwK
PiBlYWNoIHBhY2tldCBwcmUtdGltZXN0YW1wZWQgaW50ZXJuYWxseSwgYXQsIHNheSwgMTAwTWJp
dC4uLgo+IGFuZCB0aGVuIG1lYXN1cmUgInNtb290aG5lc3MiIGF0IHRoZSByZWNlaXZlciBhbmQg
aWZjb25maWcgaW50ZXJmYWNlCj4gKGFjY291bnRpbmcgZm9yIGFueSBvdGhlcgo+IHRyYWZmaWMg
YWxvbmcgdGhlIHdheSkuCm5vdCBzdXJlIGlmIDE2IGFyZSBlbm91Z2ggaWYgd2UgaGF2ZSB0byBo
YW5kbGUgbWlsbGlvbnMgb2YgaG9tZSByb3V0ZXJzLiAKc28gYSBkeW5hbWljIG9uIHRoZSBmbHkg
YXBwcm9hY2ggb3IgbW9yZSBkZXRlbWluaXN0aWMgd291bGQgYmUgY29vbCB0b28uCmkgbWVhbiBt
dHUgbWVhc3VyaW5nIGlzIHNpbXBsZSBieSB0ZXN0aW5nIHRoZSB0Y3AgZnJhZ21lbnRhdGlvbiwg
YnV0IAp0aGlzIGRvZXNudCBoZWxwIGZvciBpcHY2IHdoaWNoIGRvZXNudCBhbGxvdyBmcmFnbWVu
dGF0aW9uIGluIGEgZWFzeSB3YXkKPgo+Cj4+IFNlYmFzdGlhbgo+Pgo+Pj4KPj4+Cj4KPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B48430128
	for <lists+cake@lfdr.de>; Sat, 16 Oct 2021 10:39:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5A6283CB52;
	Sat, 16 Oct 2021 04:38:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634373539;
	bh=5VhFY8sUKTd9oHrJfqj7EyWN6kUK/DkiAMeXeMds8r0=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=caPssph3UT0tbnmDBEQlY9bhJ4knTUfBpePFy8oHnw9asXHU6IMgpzcjxLyicjjK8
	 4sifHKGBBcXXkStd3576/dvjHEv2sof4dzfG6BRCSAVRLcbRYrrf3hfqFWqO/jcypf
	 QjM/uySU0oJHCnncaJJ9fi2rJocl/43dJaJHcIiXWtG84W0FbZsyfwNg4dEWBskd5c
	 /JTcrc1EJ9cDLP8O3FIO7KV2L3h9MJJEIQ+yW6/FQwSSDg6fe9H2tvt4JOf0xOWYg6
	 kvEsefF/xPGA0VFdXwNXJPivW+kwbdyi0JVLEwb0ggEAIIBi6y7kvLpwk8xQPSTHCt
	 ZFL+DQMvkBRtA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0E3843B2A4;
 Sat, 16 Oct 2021 04:38:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634373536;
 bh=jr3pRqR1C4z82h66SD+DGpyeDANsITb/SUJEMRnberg=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=FthymOkLhUeOFt2sB1D/IVcWkv/P0wQxyoPanJrsDKpKuHC2x2LrDDNib/ObXDiuv
 UR7s0FhWM5aoKwoqAs0LwXXb7FLq7LHE4GmraQ6QrdJVNanNZ/kSxNJM++ONSZR5iZ
 SaOAtS9Hql1CXzXU1ul44AaU01XLRaotkakBnp5k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.229] ([95.116.180.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N3siA-1mkQdr46G8-00zmtJ; Sat, 16
 Oct 2021 10:38:56 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <95231AF9-DCCA-4D41-9BF4-8F55307F45F6@gmail.com>
Date: Sat, 16 Oct 2021 10:38:55 +0200
Message-Id: <1F8C74DF-1384-4F72-904A-8293369DE95D@gmx.de>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <95231AF9-DCCA-4D41-9BF4-8F55307F45F6@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Provags-ID: V03:K1:0SpUR72snEQelaPc0YtxhnSzp0H+DrheMgKgDHiEE01nZVRKD5T
 Qjr8hZmaNpd0Ncltx6IMfPc4Ckfs9R8dnIJObGDR9Q8bnypEGd3NYyMBoPkzAMfLPB1OC2E
 Sx2ZhmXUsjzshZIeos1GupoW6nPVwsTELMO0atD+CHIaoehKXxGEUo2WndNr3WChe0YosKj
 KGXyb/ARBdGfq3c24APww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t+TYcqAD6DM=:GmKbbqQOwGqw6ku4EZR3IP
 nVjKlhdCw03+EOJqo49qf2DUY9kMwDb28Q7sgIcUii2MOk3qZJH2qSmGlqJ13MmLZB+C9YE3h
 TLEKD+YDn+Rr/WoF9WzrTgqq0VY0uU3rJ07cMzPT9V+RjLpkFlizxDl+kJhdi4u7dxYAH4jQu
 7TGv1dEuTRe1b2sINzYXaENkL4bLi5ExJKH6+QMsBWH/sMSxY5QLjIc6DiZtWvxSqDjqVvb5f
 1QJeSvvfbFY3Ld/c+1SXDN2gxraCQ6d6ISxuDTP92xeQH1p1eFRYwkXmsERLtBRquNcxa/pmE
 0YhO3BR75I+lHBmxqd1ybRThw3kfeI+6lANx0AcWDiW9Pz6qiDdQr6hf79Vm0VvUUS8bFx4iG
 fMxkUcHNJYUbM6aoOHdgopQNudly98lrG3euAS536y+nBuq/1gKScWvzG+qna1BZutS+naSZ0
 UGkfC5vAwkLBU6FRuWApUANrCsbfAd6tBVnWIa0FSNmwUJZoKRm7H+aiim9kphiv2lfihMh0H
 b/RPbNHXp8SWOQ8MtK31FH6UHum0Y2ITW+piMcLuXyLgBBi1G7jNVloFffNVK5v2b1MwP7yrm
 +maM7dYaGfOR3VONQpEMzasPTNA6OC2gSnM0CB1xXpeKP4QWTefjeZ7Cv3aqZhEuE4rThSDgv
 M3t1fsvgqdDya0+iTJdt8XpP1EM/x4qVYt01aNzimKUzY+YY+3dQ/+NqU1GBh3yjM8Zwj6UZv
 MTAo8JW78fI+EH9eCB3iBT047QaZJP1kF3sI1mxTnXtWRqZ2Gn8wMCtQo/Dj9rB8tPxluIQ12
 bg4K/3Zqptz3sfCEW/xF63VSABkiZcpalWI46hVPfQiSs6CKJPuVPkLHpaFlqb7Vy4ubcTP8r
 lEFyv1O41uGDLq9g9xoAwJmBoe5cyXBcjpqoRYvWs0+U+bq2K/hOowtBo/ige34pnN78MtauP
 3eVBJswprHf9d4I+66Npq+vrLo4lB30kyYQphr0TiiEIzimd/V6A9Z2jEktxRW4YAhD+u9jUy
 6b3ZZZ0KbUiYZ0mrIFddyXk8IwQI4ES7cjeAi3a2sqQShSKbG2zv0cGR1A9TY5vBPZjnn+txM
 C/S8xJQN9gSHb4=
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4sCgoKPiBPbiBPY3QgMTYsIDIwMjEsIGF0IDEwOjA0LCBKb25hdGhhbiBNb3J0
b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4+IE9uIDE1IE9jdCwgMjAyMSwg
YXQgMToxNyBhbSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPj4gCj4+
PiBZb3UgY2FuIGFsc28gc3Vic2NyaWJlIHRvIExpbnV4IGxpc3RzIGJ5IGltcG9ydGluZyB0aGUg
bWFpbHMgZnJvbSBMb3JlLAo+Pj4gYXMgb25lIG9mIHRoZSByZXBsaWVzIGluIHRoZSB0aHJlYWQg
YWJvdmUgcG9pbnRlZCBvdXQuIEJlZW4gbWVhbmluZyB0bwo+Pj4gc3dpdGNoIHRvIHRoYXQgbXlz
ZWxmLCBidXQgaGF2ZW4ndCBnb3R0ZW4gYXJvdW5kIHRvIGl0IHlldC4uLgo+PiAKPj4gSSBhdHRl
bXB0ZWQgdG8gc3Vic2NyaWJlIGFnYWluLCBub3RoaW5nIGhhcHBlbmVkLgo+PiAKPj4gZmlndXJp
bmcgb3V0IGxvcmUuLi4gaXMgdG9vIG11Y2ggd29yayBmb3IgdG9kYXkuIEknZCByYXRoZXIgaGFt
bWVyCj4+IHNtYWxsIHRoaW5ncyBpbnRvIG9ibGl2aW9uIG9uIG15IGJvYXQuCj4+IAo+PiBwbGVh
c2UgZmVlbCBmcmVlIHRvIHBhc3MgYWxvbmcgbXkgY29tbWVudHMgYW5kIHRoZSBzY2UgdGVhbXMg
ZmluZGluZ3MKPj4gaW50byB0aGF0IHRocmVhZC4KPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvMzA4Qzg4QzYtRDQ2NS00RDUwLTgwMzgtNDE2MTE5QTM1MzVDQGdtYWlsLmNvbS8KPiAK
PiBJIGhhdmVuJ3QgeWV0IHBvc3RlZCBhIGxpbmsgdG8gdGhlIFdHTEMgT2JqZWN0aW9ucyBkb2N1
bWVudC4gIEkgd2lsbCBpZiBpdCBzZWVtIHMgbmVjZXNzYXJ5IHRvIGRvIHNvLgoKCUkgdGhpbmsg
dGhhdCBtaWdodCBoZWxwLCBidXQgSSBhbHNvIHRoaW5rIHRoYXQgc29tZSBvbmUgc3Vic2NyaWJl
ZCBzaG91bGQgd2VpZ2h0IGluIG9uIHRoZSBleGVtcHQgb25lIHBhY2tldCBmcm9tIG1hcmtpbmcs
IGVzcGVjaWFsbHkgaW4gdGhlIGxpZ2h0IG9mIEdSTy9HU08uIEkgd291bGQgYnV0IGEpIEkgYW0g
bm90IHN1YnNjcmliZWQgYW5kIGIpIHRlbmQgdG8gZ2V0IHRvbyBhZ2dyZXNzaXZlIGluIGRpc2N1
c3Npb25zIHdpdGggQm9iLCBub3QgaGVscGluZyB0byBtYWtlIG15IHBvaW50cy4KClJlZ2FyZHMK
CVNlYmFzdGlhbgoKCj4gCj4gLSBKb25hdGhhbiBNb3J0b24KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

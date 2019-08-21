Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA07973CF
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 09:48:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F09493CB38;
	Wed, 21 Aug 2019 03:48:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566373717;
	bh=QrRXsSMNFhRuoUqrZYi2pHlrD3Kyatd2PiHlPjsGRkQ=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P0Ov100U8+tgpJD7UrJMpY26qzhLzxuyV1vcXj8VWiO1Wvjbf51RjmXFoz3tL5M2r
	 aa+/j+JW9+k3Z9x1hoghRwpS3Xjqjh0DIw6L3w3RnZnVieNyPYMqnvdCKQs6Pc/ijG
	 KeT3wiWIUinKINIJROHGHa1YxjeKW+2hBggY6l2ovxlxgWZXY73Ym40iG2cQI/KaXw
	 nnP418OJYlkEH0dlqELcmhUqFWFzJoX4RJbBuPeg05ohfea6D19q042BEMG3d536Zc
	 En+WlrlJ+ln07iYWO3ml9nI/cfVChwxMPIvZZJWBvBXnlSAfkuBw29sbj1Y1IxV8eQ
	 +IoNCbLjkXUmw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8608C3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 03:48:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=54T7R4qUAh/KvuzrabdjNGR1b5vpqN8LUoe1Lxg1t+o=; 
 b=XpNhntuhzl5KqnWBse9nPN4mQSc7hyO5yW5pnixqLMd7WlHeLGfCxyPGj2ssh/2omYUNMOOtR1WvN93tssNUbtnwstbnzgyw0YB6bRC3KJGIAMFe5UygxXVsLyPMaXf8ud2EHx9pdoygpOmO5EsFUiIFf7Wg7EJrOMlbg6lBA2A=;
To: Dave Taht <dave@taht.net>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <7165ee2c-df04-c7ab-ca5c-cdf5aa14ed54@newmedia-net.de>
 <87k1b7flba.fsf@taht.net>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3af64941-adc5-1ea9-e396-be16aa47e277@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:47:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87k1b7flba.fsf@taht.net>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0LMI-0007WT-Vl; Wed, 21 Aug 2019 09:48:43 +0200
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIxLjA4LjIwMTkgdW0gMDE6NTAgc2NocmllYiBEYXZlIFRhaHQ6Cj4gU2ViYXN0aWFuIEdv
dHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRlczoKPgo+PiB0byBt
YWtlIGl0IHNob3J0LiBpIGFkZGVkIG5vdyBmcV9jb2RlbF9mYXN0IHRvIGRkLXdydCB0b28uCj4g
VGhhbmsgeW91LiBJIG5vdGUgdGhhdCBpdCByZXF1aXJlcyBhIHBhdGNoIHRoYXQgaXMgaW4gdGMt
YWR2LgpsaWtlIGNha2UgdG9vLiBpIGFscmVhZHkgbWVyZ2VkIHRoZSBtb2R1bGUuIGkgbWFpbnRh
aW4gYSBvd24gdmVyc2lvbiBvZiB0YwoKd2hpY2ggaXMgbXVjaCBzbWFsbGVyLiBzbyBpIGhhZCBu
b3QganVzdCB0byBtZXJnZSwgaSBhbHNvIGhhZCB0byByZXdyaXRlIAppdCBhIGxpdHRsZSBiaXQu
CgpteSB0YyB2ZXJzaW9uIGRvZXMgbm90IHN1cHBvcnQgYWxsIHRoYXQgdXNlbGVzcyBqc29uIGNy
YXAuIHNvIGl0cyAKc3RyaXBwZWQgZG93biB3aXRoIG5vIHVzZWxlc3Mgc3R1ZmYKCj4KPiAqIEZp
eGVkICgxMDI0KSBudW1iZXIgb2YgcXVldWVzCj4gKiBOTyB0YyBmaWx0ZXIgc3VwcG9ydAo+ICog
Y2xvc2VyIHRvIE8oMSkgYnVsayBkcm9wcGVyCj4gKiBsZXNzIGRldGVybWluaXN0aWMgYnVsayBk
cm9wCj4gKiBnc28gc3BsaXR0aW5nIHdpdGggdmVyeSBwcmVsaW1pbmFyeSBTQ0Ugc3VwcG9ydAo+
ICogdG9uIG9mIHN0YXRzIHJpcHBlZCBvdXQKPgo+IEFzIHRvIHdoZXRoZXIgb3Igbm90IGFueSBv
ZiB0aGVzZSBhcmUgImtpbGxlciIgZmVhdHVyZXMsIEkgZG9uJ3Qga25vdy4gSQo+IGNlcnRhaW5s
eSB3b3VsZG4ndCBzaGlwIGl0IGFzIGEgYnVpbHQtaW4gcGFja2FnZSBpbiBhIGZpbmFsIHJlbGVh
c2UgLQo+IGJ1dCBJIHdvdWxkIGNlcnRhaW5seSBsb3ZlIHRvIGtub3cgaWYgaXQgbWFkZSBhIGRp
ZmZlcmVuY2UgaW4gY3B1IHVzZSBvbgo+IGxvd2VyIGVuZCBwbGF0Zm9ybXMgb24geW91ciB1c2Vy
YmFzZS4KPgo+IE1heWJlIHdpdGggc29tZSBmZWVkYmFjayBmcm9tIHRoZSBmaWVsZCBJJ2QgYmUg
aW5zcGlyZWQgdG8gZG8gbW9yZSB3aXRoCj4gaXQuCgppIGd1ZXNzIGkgZ2V0IHNvbWUgZmVlZGJh
Y2sgc29vbiBzaW5jZSBpIHVwbG9hZCBhIG5ldyBidWlsZCB0byBteSAKc2VydmVycyByaWdodCBu
b3cgYW5kIHNvbWUgb2YgdGhlIHVzZXJzIGFyZSBxdWljayBpbiByZXNwb25zZQoKCj4KPj4gQW0g
MTguMDguMjAxOSB1bSAxODozMyBzY2hyaWViIERhdmUgVGFodDoKPj4+IGh0dHBzOi8vc3ZuLmRk
LXdydC5jb20vdGlja2V0LzU3OTYKPj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IENha2UgbWFpbGluZyBsaXN0Cj4+IENha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cj4+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

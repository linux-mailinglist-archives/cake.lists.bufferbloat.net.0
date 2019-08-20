Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5FF96855
	for <lists+cake@lfdr.de>; Tue, 20 Aug 2019 20:12:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 141863CB38;
	Tue, 20 Aug 2019 14:12:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566324722;
	bh=Ltq9Q5cmxdG0MY9rmFLbVhUCmFl6sIGG75U/homTSw8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tw6CWioTjopUyHTPhlOaQBrU33dKmW/BLsbc+IfWE4IsfBJ7KdgivdYCVDKChQCeQ
	 5YdLXZ+vL7Y9BUX6Ga5itofLsuRpvU0ljQps/BOVajDIEAZkV/K/ILLBUsWjkfGSUW
	 LrsJdsubyAuIHgqm09MlYFnw8JmdqWIuZmlw1tF3Xip1yi0GO3JyGW5WgNV1EF6T0L
	 hRSeMdS3gJ7C0qcpj4uGSXb7c6m9NEtw1Cc/xIHn8uVprlWK8eYmIzkuzTsOFlT30F
	 gt3R2uwYqFWh8s4HT7rTwVqBHPcayiA5QPOokzIA+nIShKGrmLF6jWd7CMnj2Z5jfO
	 3wlLeYkKh5PuA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DBED33B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 14:12:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=WuX5T/NswmDn3d6uzsXKtodn52qyRtcyHaqQrg4eUPs=; 
 b=s5o4EJSmWwDYrl4DW7ENe03qJbXLC8Ha/iEsH8m6u0ObQfX7xCSlCSRMRw+ZdiapiVUgm23wwnftK/Q9d9ayiLKqL3a7YtLqq9axM7pX/pdgTc80a4s+TOHK/QhGDRasrkapUO/wOPnOPMkQd6M+yDZ6ifcACtWtiMDKI2WrEBA=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Dave Taht <dave.taht@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
Date: Tue, 20 Aug 2019 20:10:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87tvabsp99.fsf@toke.dk>
X-Received: from [2003:c9:3f25:1300:e947:ab73:1d88:4792]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i08c3-0007cx-89; Tue, 20 Aug 2019 20:12:07 +0200
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

Cj4+IHdlIGFyZSBhbHJlYWR5IHVzaW5nIGZpbHRlcnMuIHllcy4gaXRzIGp1c3QgdGhhdCBjYWtl
IGlzIGFjdGluZyBhbHdheXMKPj4gYXMgcm9vdCBhbmQgd2UgaGF2ZSBkaWZmZXJlbnQgc29ydHMg
b2YgcW9zIGNvbmZpZ3VyYXRpb25zLiBzbyB5b3UgaGF2ZQo+PiB3YW4uIGJ1dCB3ZSBtYXkgaGF2
ZSBtdWx0aXBsZSBsYW4gaW50ZXJmYWNlcyB3aXRoIGluZGl2aWR1YWwgcW9zCj4+IHNldHRpbmdz
LiB0aGUgc2FtZSBmb3IgbWFjIC8gaXAgYmFzZWQgdXNlciBzZXR0aW5ncy4gc28gaW4gZmFjdCB3
ZSBuZWVkCj4+IHRvIGNyZWF0ZSBhIGluZGl2aWR1YWwgcWRpc2MgZm9yIGVhY2ggb2YgdGhlc2Ug
c2V0dGluZyB0eXBlcyBpbiB3b3JzdAo+PiBjYXNlLCBidXQgaW4gdGhhdCBjYXNlIHdlIGNhbm5v
dCB0YWtlIGluIGFjY291bnQgdGhlIGdsb2JhbCBhdmFpbGFibGUKPj4gYmFuZHdpZHRoIGFueW1v
cmUuCj4gQWgsIHJpZ2h0LCBJIHNlZS4gU28gdGhpcyBpcyB0aGluZ3MgbGlrZSB1c2VycyB3YW50
aW5nIHRvIGxpbWl0IGEKPiBzcGVjaWZpYyB0eXBlIG9mIHRyYWZmaWMgdG8gYSBjZXJ0YWluIGJh
bmR3aWR0aD8KYmFzaWNseSB5ZXMuIHRoZXJlIGFyZSBtdWx0aXBsZSB3YXlzLiBwbGFpbiB0cmFm
ZmljIHNoYXBpbmcgYnkgbG9jYWwgCmludGVyZmFjZSBuYW1lLCBieSBsb2NhbCBtYWMsIGJ5IGxv
Y2FsIGlwL25ldAphbmQgaW4gYWRkaXRpb24gdGhlcmUgaXMgc2hhcGluZyBieSBwb3J0IGJhc2Vk
IG9yIGRwaSBiYXNlZCBwYWNrZXQgCmRldGVjdGlvbiBhbmQgc2luY2UgZWFjaCBpbnN0YW5jZSBv
ZiBjYWtlIGRvZXNudCBrbm93IG9mIGFueSBvdGhlcgp1c2Ugb2YgY2FrZSBxZGlzY3MgaXRzIGdl
dHRpbmcgY29tcGxpY2F0ZWQuIGJ1dCB3ZSBqdXN0IHN0YXJ0ZWQgd2l0aCAKd29ya2luZyBvbiBp
dC4gaSdtIHN1cmUgaSBmaW5kIGEgc29sdXRpb24gZm9yIGl0CgoKU2ViYXN0aWFuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

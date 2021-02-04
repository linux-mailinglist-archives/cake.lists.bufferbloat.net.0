Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBCC30EBD4
	for <lists+cake@lfdr.de>; Thu,  4 Feb 2021 06:24:26 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5F3FC3CB38;
	Thu,  4 Feb 2021 00:24:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1612416265;
	bh=pUqbLAFdSW0O7RDn1PNitSYjVAg5tQxUdSwtY4X5GNA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VznCpJD5cGxLbCC1sbw8ycQvRJmh61lSEpZF7LtBCc2O/YMOA06fq7yTCQVXqghhT
	 yjnVnzEKNSJPsw2jN3SGvLlY4aqTzf9EKofrYEPCNz7FZ0AbXXACQveoSMROhocMy8
	 j43L7rZJhCdzCiSWKflG/qcW9/GS0x3ITwRQKPfyPECB2rCOx6/ZhFSWJHxn0/2nN3
	 riTZIDsTS0ycGnFSjQAQqXpAo2fBE8wC3XIDNwR6J6uw9/Fw83wK16PKrfGVl0LmmT
	 XjiGclt9esGmzYa0PptOq3xQ7RD412tZ3P9X2UGMEcl6D85S7eJr3mRWvE7xo8LGTu
	 c+jda0eXrzCFQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 38D4E3B29E
 for <cake@lists.bufferbloat.net>; Thu,  4 Feb 2021 00:24:24 -0500 (EST)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 5066FE9367;
 Wed,  3 Feb 2021 21:24:23 -0800 (PST)
Date: Wed, 3 Feb 2021 21:24:23 -0800 (PST)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: xnor <xnoreq@gmail.com>
In-Reply-To: <5d192438-aaec-fe04-88dc-a9fac1abc698@gmail.com>
Message-ID: <nycvar.QRO.7.76.6.2102032119240.10981@qynat-yncgbc>
References: <nycvar.QRO.7.76.6.2102031317110.10981@qynat-yncgbc>
 <5d192438-aaec-fe04-88dc-a9fac1abc698@gmail.com>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: Re: [Cake] bringing up a new router/connection
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBtYWRlIHRoZSBtaXN0YWtlIG9mIGluc3RhbGxpbmcgaHRvcCBhbmQgbm93IGV2ZW4gYWZ0ZXIg
dW5pbnN0YWxsaW5nIHRoZSBodG9wIApwYWNrYWdlLCBzdGlsbCBoYXZlIHRoZSBodG9wIGRpc3Bs
YXkgOi0oCgpJJ3ZlIG1vdmVkIG9uIHRvIHRoZSB0dXJyaXMgb21uaSwgaGljaCBpcyBzdXBwb3Nl
ZCB0byBiZSBwcmV0dHkgZ29vZCAKcGVyZm9ybWFuY2UuIERvd25sb2FkIGlzIHN0aWxsIG9uIHRo
ZSBzbG93IHNpZGUsIGJ1dCBJJ20gbm93IHRocm90dGxpbmcgaXQgd2l0aCAKY2FrZSB0byBhcm91
bmQgMzAwTSwgYnV0IEknbSBzdGlsbCBnZXR0aW5nIGhvcnJpYmxlIHVwbG9hZCBwZXJmb3JtYW5j
ZSAoMTBNLTE1TSAKaW5zdGVhZCBvZiAzNU0pLCBwcm9jZXNzaW5nIHBvd2VyIGRvZXNuJ3QgZXhw
bGFpbiB0aGUgdXBsb2FkIGlzc3VlLgoKRGF2aWQgTGFuZwoKICBPbiBUaHUsIDQgRmViIDIwMjEs
IHhub3Igd3JvdGU6Cgo+IERhdGU6IFRodSwgNCBGZWIgMjAyMSAwMjoxMTozMiArMDEwMAo+IEZy
b206IHhub3IgPHhub3JlcUBnbWFpbC5jb20+Cj4gVG86IERhdmlkIExhbmcgPGRhdmlkQGxhbmcu
aG0+LCBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IFN1YmplY3Q6IFJlOiBbQ2FrZV0gYnJp
bmdpbmcgdXAgYSBuZXcgcm91dGVyL2Nvbm5lY3Rpb24KPiAKPiBIZWxsbyBEYXZpZCwKPgo+IGNv
bm5lY3QgdG8gdGhlIHJvdXRlciBvdmVyIHNzaCBhbmQgcnVuIHRvcC4gV2hhdCdzIHRoZSB0b3Ag
bG9hZCBsaW5lKHMpIHdpdGggCj4gdXNyLCBzeXMsIC4uLiBzb2Z0aXJxIGxvb2sgbGlrZSBkdXJp
bmcgYSBkb3dubG9hZCBzcGVlZHRlc3Q/Cj4KPiBBbnl3YXksIGFjY29yZGluZyB0byBzb21lIHJl
dmlldyBpdCBzaG91bGQgYmUgYWJsZSB0byByb3V0ZSBhYm91dCA3MDAtODAwIAo+IE1icHMgV0FO
LT5MQU4sIHdpdGggdGhlIG9yaWdpbmFsIGZpcm13YXJlLiBUaGlzIGlzIHByb2JhYmx5IG9ubHkg
cG9zc2libGUgCj4gd2l0aCBoYXJkd2FyZSBvZmZsb2FkaW5nLgo+IEV2ZW4gaWYgdGhlcmUgd2Fz
IG5vIGJvdHRsZW5lY2sgSSB3b3VsZG4ndCBleHBlY3QgZ2V0dGluZyBldmVuIHJlbW90ZWx5IGNs
b3NlIAo+IHRvIHRoYXQgd2l0aCBjYWtlIGFsc28gb24gaW5ncmVzcy4KPgo+IFRoZSBvbmx5IGRl
dmljZSBJIGhhdmUgdG8gY29tcGFyZSB0byB5b3VycyBpcyBhIHNtYWxsZXIgVFAtTGluayByb3V0
ZXIgd2l0aCAKPiB0aGUgc2FtZSByb3V0aW5nIHBlcmZvcm1hbmNlIGJ1dCBhIFFDQTk1NjMgKDc1
MCBNSHogc2luZ2xlIGNvcmUpIGFuZCBJIAo+IHdvdWxkbid0IHVzZSB0aGF0IGZvciBhbnl0aGlu
ZyBhYm92ZSAxMDAgTWJwcy4KPgo+Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

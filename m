Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B15863505BB
	for <lists+cake@lfdr.de>; Wed, 31 Mar 2021 19:50:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 91D843CB48;
	Wed, 31 Mar 2021 13:50:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617213028;
	bh=LD6o+v8vpDcD0pKNXteXFhadI+dLxO8PLKlGH7aQcQA=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VQ9a8JShTH/4cHjYR/6Ss4pGR9uHJhFt5H1qrrrCRR72Tpmq2WGUGtPslCdDCyMrU
	 LPIL1ya485qxEo/1n2gBO1J+45mGpYA4bK1mqLYmxvMLUimap04KVwhizuhmWwyq4Z
	 xRBwY4mFLTaDflyzQ0B3jNfhSFdquFJT78uwFZKrI8C66IB/0/nPyUWJZOKqv62NQL
	 e0dNZrNxBzhjwUOYt92uHy69wPR/mANKo7Y5VF/UZ9zDDh7AsxB7V41D3PdMsxfgc5
	 HPN5lhdeji1GzRGB2KP+WQwTgkY7FjCkZUDa8kQ3jIpb3+dxY7uinQHb7TBY28P0RK
	 Y7U/aycoWyGgA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B2D563B29E;
 Wed, 31 Mar 2021 12:55:52 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:281:8300:104d::5f6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 9CD6931A;
 Wed, 31 Mar 2021 16:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net 9CD6931A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
 t=1617209751; bh=g2di3mtyaG+3Y7cXhitbTyrH/uBtzWIhLxB8hY1ntqk=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=bg4yIvWO1uTwBrauPHRVLuxTfa6TdoeuWQd1dEb1oiRA33/Wcfoyq6iFq6IrH9vpH
 OprmG58Fq4QfaVxK6LoR0XQYtF9nYvtQvtAH/mhI8LeA8jvk9UuV0g6HoxH3D88U8R
 aYKDeUKaU0VY5nnL40AM/iYu4+XlDGXvrGrgAVg2gi6EAui0sROzmEbe3dP3OUwiBe
 onUDRu9tI4wjZ0VksjofAOk6iy4Uh4vRJ3tyDJR0Rj8f1HCKOy6WF+cFIEbtCL63NZ
 IgeQcKvbJHdvyf39gOg0SZ7ORXN37D6qlJiBuu5oWplRakfy59bfClz4gWbIjr5+6b
 cvvLawjJRDQxw==
From: Jonathan Corbet <corbet@lwn.net>
To: "David P. Reed" <dpreed@deepplum.com>, Theodore Ts'o <tytso@mit.edu>
In-Reply-To: <1617153830.6256867@apps.rackspace.com>
References: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
 <1617049691.187521510@apps.rackspace.com> <YGKEbCGX57z9+PdA@mit.edu>
 <1617153830.6256867@apps.rackspace.com>
Date: Wed, 31 Mar 2021 10:55:50 -0600
Message-ID: <875z17mfe1.fsf@meer.lwn.net>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 31 Mar 2021 13:50:27 -0400
Subject: Re: [Cake] [Bloat] [Cerowrt-devel] wireguard almost takes a bullet
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

IkRhdmlkIFAuIFJlZWQiIDxkcHJlZWRAZGVlcHBsdW0uY29tPiB3cml0ZXM6Cgo+IFJlZ2FyZGlu
ZyB0aGUgb3JnYW5pemF0b24gb2YgIkxpbnV4LCBJbmMuIiBhcyBhIGhpZXJhY2hpY2FsIGNvbnRy
b2wKPiBzdHJ1Y3R1cmUgLSBJJ2xsIGp1c3QgcG9pbnQgb3V0IHRoYXQgaGllcmFyY2hpY2FsIGNv
bnRyb2wgb2YgdGhlCj4gZGV2ZWxvcG1lbnQgb2YgTGludXggc3VnZ2VzdHMgdGhhdCBpdCBpcyBu
b3QgYXQgYWxsIGEgImNvbW11bml0eQo+IHByb2plY3QiIChpZiBpdCBldmVyIHdhcykuIEl0J3Mg
YSBwcm9kdWN0IGRldmVsb3BtZW50IG9yZ2FuaXphdGlvbgo+IHdpdGggbXVsdGlwbGUgbGV2ZWxz
IG9mIG1hbmFnZW1lbnQuCj4gIAo+IFlldCB0aGUgZGV2ZWxvcGVycyBhcmUgZW1wbG95ZWVzIG9m
IGEgc21hbGwgbnVtYmVyIG9mIG1ham9yCj4gY29ycG9yYXRpb25zLiBJbiB0aGlzIHNlbnNlLCBp
dCBpcyBsaWtlIGEgImpvaW50IHZlbnR1cmUiIGFtb25nIHRob3NlCj4gY29tcGFuaWVzLgoKLi4u
d2hlcmUgImEgc21hbGwgbnVtYmVyIiA9PSAyMjUgZm9yIHRoZSA1LjExIGRldmVsb3BtZW50IGN5
Y2xlOyB0aGUKYmlnZ2VzdCBvZiB0aG9zZSBjb250cmlidXRlZCBqdXN0IHVuZGVyIDEwJSBvZiB0
aGUgcGF0Y2hlcy4KCglodHRwczovL2x3bi5uZXQvQXJ0aWNsZXMvODQ1ODMxLwoKSXQgc2VlbXMg
cmF0aGVyIGxlc3MgY29uY2VudHJhdGVkIHRoYW4gbWFueSBwcm9qZWN0cyBvdXQgdGhlcmUsIGFu
ZCBpdApoYXMgYmVjb21lIGxlc3Mgc28gb3ZlciB0aW1lLgoKPiBUbyB0aGUgZXh0ZW50IHRoYXQg
dGhvc2UgY29tcGFuaWVzIGdhaW4gKHBhcnRpYWwpIGNvbnRyb2wgb2YgdGhlIExpbnV4Cj4ga2Vy
bmVsLCBhcyBhcHBlYXJzIHRvIGJlIHRoZSBjYXNlLCBJIHRoaW5rIExpbnV4IG1pc3JlcHJlc2Vu
dHMgaXRzZWxmCj4gYXMgYSAiY29tbXVuaXR5IHByb2plY3QiLCBhbmQgaW4gcGFydGljdWxhciwg
dGhlIGFjdHVhbCB1c2VycyBvZiB0aGUKPiBzb2Z0d2FyZSBtYXkgaGF2ZSBsaXR0bGUgc2F5IGlu
IHRoZSBkaXJlY3Rpb24gZGV2ZWxvcG1lbnQgdGFrZXMgZ29pbmcKPiBmb3J3YXJkcy4KPiAgCj4g
VGhlcmUncyBsaXR0bGUgc2FmZWd1YXJkLCBmb3IgZXhhbXBsZSwgYWdhaW5zdCAic2VuaW9yIG1h
bmFnZW1lbnQiCj4gYmlhc2VzIGluIHN1cHBvcnQgb2YgY2VydGFpbiB2ZW5kb3JzLCBpZiBvdGhl
ciB2ZW5kb3JzIGFyZSBleGNsdWRlZAo+IGZyb20gZWZmZWN0aXZlIHBhcnRpY2lwYXRpb24gYnkg
b25lIG9mIG1hbnkgdGVjaG5pcXVlcy4gSW4gb3RoZXIKPiB3b3JkcywgdGhlcmUncyBubyB3YXkg
aXQgY2FuIGJlIGEgbGV2ZWwgcGxheWluZyBmaWVsZCBmb3IgaW5ub3ZhdGlvbi4KCkkgd291bGQg
YmUgY3VyaW91cyB0byBoZWFyIHdoZXRoZXIgeW91IHRoaW5rIHRoZXJlIGlzIGV2aWRlbmNlIG9m
CnZlbmRvcnMgYmVpbmcgZXhjbHVkZWQ/ICBObyBkb3VidCBzb21ldGhpbmcgaGFzIGhhcHBlbmVk
IHNvbWV3aGVyZSwgYnV0CkkgYW0gdW5hd2FyZSBpZiB3aWRlc3ByZWFkIHVzZSBvZiAib25lIG9m
IG1hbnkgdGVjaG5pcXVlcyIgYW5kIHdvdWxkCmNlcnRhaW5seSBhcHByZWNpYXRlIGJlaW5nIGVu
bGlnaHRlbmVkLgoKVGhlIGJpZ2dlc3QgaW1wZWRpbWVudCB0byBpbm5vdmF0aW9uIGluIExpbnV4
LCBJIHRoaW5rLCBpcyB0aGUgbWFzc2l2ZQppbnN0YWxsZWQgdXNlciBiYXNlIGFuZCB0aGUgbmVl
ZCB0byBuZXZlciBicmVhayBhbnl0aGluZyBmb3IgYW55Ym9keSDigJQKYWxvbmcgd2l0aCB0aGUg
aW5jcmVhc2UgaW4gY29tcGxleGl0eSBvdmVyYWxsLiAgSnVzdCBsb29rIGF0IHdoYXQgaXQgaGFz
CnRha2VuIChhbmQgaXMgc3RpbGwgdGFraW5nKSB0byBnZXQgdXMgcGFzdCB0aGUgeWVhci0yMDM4
IHByb2JsZW0KcmVsYXRpdmUgdG8gaG93IHNvbWUgb3RoZXIgc3lzdGVtcyBoYXZlIGJlZW4gYWJs
ZSB0byBqdXN0IGRlYWwgd2l0aCBpdCwKZm9yIGV4YW1wbGUuCgpXaXJlR3VhcmQsIHdoaWNoIHN0
YXJ0ZWQgdGhpcyBkaXNjdXNzaW9uLCBpcyBhIGdvb2QgZXhhbXBsZSB0byBsb29rIGF0Cml0LiAg
VGhpcyB3YXMgZGVmaW5pdGVseSBhbiBpbm5vdmF0aXZlIGRldmVsb3BtZW50LCBicm91Z2h0IGlu
IGJ5IGEKZGV2ZWxvcGVyIHByZXZpb3VzbHkgdW5rbm93biB0byB0aGUgY29tbXVuaXR5IGFuZCwg
YXMgZmFyIGFzIEkga25vdywgbm90CmluIHRoZSB0aHJhbGwgb2YgYW55IG9mIHRoZSBjb3Jwb3Jh
dGlvbnMgY29udHJpYnV0aW5nIHRvIHRoZSBMaW51eAprZXJuZWwuICBKYXNvbiBoYWQgdG8ganVt
cCB0aHJvdWdoIGFsbCBzb3J0cyBvZiBob29wcyB0byBnZXQgaXQgaW4sIGJ1dAp0aGF0IHdhc24n
dCB0aGUgcmVzdWx0IG9mIGFueWJvZHkgdHJ5aW5nIHRvIGJsb2NrIGl0IC0gd2Ugd2FudGVkIGl0
IQpCdXQgaXQgZGlkIG5lZWQgdG8gZml0IGludG8gd2hhdCB3ZSBoYWQgYWxyZWFkeSwgYW5kIHRo
YXQgdG9vayBzb21lCndvcmsuIAoKVGhhbmtzLAoKam9uCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

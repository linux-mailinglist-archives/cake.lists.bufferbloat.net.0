Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 360E673F2ED
	for <lists+cake@lfdr.de>; Tue, 27 Jun 2023 05:42:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 140233CB43;
	Mon, 26 Jun 2023 23:42:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687837322;
	bh=laM9Q0M/+nREck2st8RZMvh20JZPULP99zG25btYnKU=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=GmGWSksS5vasF5Uo4oX1uYhdBw78uPFOo4lN10lNfGTN5cddftXO6K6HWoJUIRP6W
	 PkhoyQCbdwfAPjpGbgtt+Ek2e/gXkiUcIQ9m9N4yiiPESIqv4pt364b0AKGcETJ3Vq
	 gQJJbdn+ckDv0o1/q4sP/dig4yKtPqa0kSLLzhylncmhufSdCmrMcQX5QWljmtpeoQ
	 xRwlpFHHbefawHZrYxSeIY14Y9Ww/Qr+0WvF654NwIYZkkC5y5zUeXYdAPqJQ49BbR
	 kmXBwIECiZXR4EyQgKgoEg5APP5Bqg1pJJd9Hp/cN8aNG1qUOpODonzqVlIf7Uo038
	 2wVMXqnEX4G5g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp123.iad3a.emailsrvr.com (smtp123.iad3a.emailsrvr.com
 [173.203.187.123])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 307903CB37
 for <cake@lists.bufferbloat.net>; Mon, 26 Jun 2023 23:42:00 -0400 (EDT)
Received: from app27.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp8.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 8992A1C46;
 Mon, 26 Jun 2023 23:41:59 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app27.wa-webapps.iad3a (Postfix) with ESMTP id 6E5F821B92;
 Mon, 26 Jun 2023 23:41:59 -0400 (EDT)
Received: by mobile.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 26 Jun 2023 23:41:59 -0400 (EDT)
Date: Mon, 26 Jun 2023 23:41:59 -0400 (EDT)
To: stephen@networkplumber.org
MIME-Version: 1.0
Message-ID: <1687837319.447910185@mobile.rackspace.com>
X-Mailer: mobile/8.0.1
X-Classification-ID: fe47097c-a53e-44f3-ac9d-52ceafac4d0e-1-1
Subject: Re: [Cake] [Bloat] Two questions re high speed congestion
	management anddatagram protocols
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U29ycnkgZm9yIHRvcCBwb3N0aW5nLCBidXQgLi4uIEJpZ2dlciBxdWVzdGlvbjoKV2h5IHdvdWxk
IERDQ1AgYmUgZGVwcmVjYXRlZCBieSBMaW51eCBrZXJuZWw/CldobyBtYWtlcyB0aGF0IGRlY2lz
aW9uPyBXaG8gYXJndWVzIGFnYWluc3QgaXQ/CgpJdCdzIGEgcHJldHR5IGdvb2QgYXBwcm9hY2gg
dG8gcHJvcGVybHkgY29uZ2VzdGlvbiBjb250cm9sbGluZyBtYW55IG5vbi1UQ1AgY29tbXVuaWNh
dGlvbnMgcHJvdG9jb2xzIHRoYXQgbWlnaHQgYmUgaW1wbGVtZW50ZWQgb24gVURQIGFuZCBsYWNr
IGdvb2QgY29uZ2VzdGlvbiBjb250cm9sIG90aGVyd2lzZS4KRS5nLiBRVUlDIG9yIFJUUCAoZm9y
IG5vbiBDQlIgdHJhZmZpYykgb3IgdmFyaW91cyBSUEMtc3R5bGUgIHByb3RvY29scy4gTGFycnkg
UGV0ZXJzb24gcmVjZW50bHkgd3JvdGUgYSBwaWVjZSBhc2tpbmcgd2h5IFJQQyB3YXNuJ3Qgd2Vs
bCBzdXBwb3J0ZWQgaW4gZGlzdHJpYnV0ZWQgY29tcHV0aW5nIGV2ZW4gYWZ0ZXIgYWxtb3N0IDUw
IHllYXJzLiBMYWNrIG9mIENvbmNlcHRpb24gQ29udHJvbCB0aGF0IHdvcmtzIGlzIGEgYmlnIGlz
c3VlLiBRVUlDIGFpbid0IGl0LiBRVWlDIGlzIGEgSFRUUCByZXBsYWNlbWVudCBmb3IgUkVTVCBw
cm90b2NvbCBzZW1lbnRpY3MuCgpTbyB3aHkgZGlzY2FyZCBhIGdvb2QgdGhpbmcgdGhhdCB3b3Jr
cz8KCgotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQpGcm9tOiAiU3RlcGhlbiBIZW1taW5nZXIi
IDxzdGVwaGVuQG5ldHdvcmtwbHVtYmVyLm9yZz4KU2VudDogU3VuLCBKdW4gMjUsIDIwMjMgYXQg
Mjo1MSBwbQpUbzogIkRhdmlkIFAuIFJlZWQgdmlhIEJsb2F0IiA8YmxvYXRAbGlzdHMuYnVmZmVy
YmxvYXQubmV0PgpDYzogIkRhdmlkIFAuIFJlZWQgdmlhIEJsb2F0IiA8YmxvYXRAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0PiwgIkNha2UgIExpc3QiIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4K
U3ViamVjdDogUmU6IFtCbG9hdF0gVHdvIHF1ZXN0aW9ucyByZSBoaWdoIHNwZWVkIGNvbmdlc3Rp
b24gbWFuYWdlbWVudCBhbmRkYXRhZ3JhbSBwcm90b2NvbHMKCk9uIFNhdCwgMjQgSnVuIDIwMjMg
MTQ6NDE6NTIgLTA0MDAgKEVEVCkKIkRhdmlkIFAuIFJlZWQgdmlhIEJsb2F0IiAgd3JvdGU6Cgo+
IEkgYWxzbyB3YXMgbG9va2luZyBiYWNrIHRvIERDQ1AgYXMgYSB1c2VmdWwgd2F5IHRvIGdldCBh
IFVEUCB0aGF0IGhhbmRsZWQgY29uZ2VzdGlvbiB3aXRob3V0IGVuZ2FnaW5nIHRoZSBoaWdoZXIg
bGF5ZXJzLCBhbmQgcHJlc2VydmluZyB0aGUgb3RoZXIgZmxleGliaWxpdHkgb2YgVURQLgoKREND
UCBuZXZlciBnb3Qgd2lkZWx5IHVzZWQsIGFuZCBMaW51eCBpcyBvbiB0aGUgcGF0aCBvZiBkZXBy
ZWNhdGluZyBpdC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

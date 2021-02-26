Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F268132621E
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 12:47:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 516CE3CB49;
	Fri, 26 Feb 2021 06:47:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614340048;
	bh=nwED5r69yUaP76dNh7aOsxl3Cot7K724v3g94IAxS9g=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OJ6uqrTrtSBL8Q/5KqSovh5QcYPOUYlkIxq1ildjYoyxm1+Ya++yFCoE7kvLexvaW
	 optVdINELHN2sJeVGy8/ojCDVcYVY9Y+u/kUH8Gol2Rr6WI5dfPqB21e+4+DJnivDH
	 yNT2PhFFFpvB1oIwLGVHcfm+Jt0pItNBIHUVTOLyWYjMwh3dvA6HIYeZR80x0X7x/+
	 MaOCanFAOMwj6r80Ker8eyka0qDjSKsr6gzFRzZ4EADlg8RCi1Cd/liPon3fdLDZOy
	 I0aclEybEIVik1zLdHejbGMmMPR0jR47KupokSkSt2SUPk6s/SY0H6jJDZHU6SkADU
	 J3I5KJPIegIBg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BC0CA3B29E;
 Fri, 26 Feb 2021 06:47:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614340045; bh=Qo86fr7vgqHMhscvCVu8bkHABaN568NlWRnDndQA8q8=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=UCmxhvYjOU+N6LOEW2ICQhipzsnNfZY+V5axBS7s7QaW0c2gfDnFnj6A2kJaGkn3Z
 VXvoi3SVev+DwjqKEcyr3rh6lsMSBPESfW4sfmbLWrUCysvRXkzHIN+fC6aCeKpdwl
 HboYkwHFBKMgYOxuDqYkEhP0Ak//XaUAslSiAr/hn8j1efTUhXRHT18MbJtdxGTya5
 CrT2tLgoa2SHaxiL7NR6MP/IHW9fR4/piNvwz83reNR2Gn64xBLV3v1eKE4arzXc2i
 SNJYN+/D9qNF8hwdqI7M4PTEl1RzR3BA1guy8BoA9qRW3Zqyek+W2sKrx7x1GGLG2j
 Y29ac14v4M3mA==
To: Nils Andreas Svee <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>
In-Reply-To: <86692246-90d3-4b5b-bcb3-5a67a29d67f7@lochnair.net>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
 <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
 <87wnuw1luc.fsf@toke.dk>
 <86692246-90d3-4b5b-bcb3-5a67a29d67f7@lochnair.net>
Date: Fri, 26 Feb 2021 12:47:25 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87mtvryrsi.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Simon Sundberg <Simon.Sundberg@kau.se>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TmlscyBBbmRyZWFzIFN2ZWUgPG1lQGxvY2huYWlyLm5ldD4gd3JpdGVzOgoKPiBPbiAyLzI1LzIx
IDExOjMwIEFNLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4KPj4gQWgsIHdpcmVn
dWFyZCBkb2Vzbid0IGhhdmUgWERQIHN1cHBvcnQsIHNvIHRoYXQncyBsaWtlbHkgbm90IGdvaW5n
IHRvCj4+IHdvcms7IGFuZCBpZiB5b3UgcnVuIGl0IG9uIHRoZSBwaHlzaWNhbCBpbnRlcmZhY2Us
IGV2ZW4gaWYgeW91IGRpZG4ndAo+PiBnZXQgZHJpdmVyIGVycm9ycywgdGhlIHRvb2wgd291bGQg
anVzdCBzZWUgdGhlIGVuY3J5cHRlZCBwYWNrZXRzIHdoaWNoCj4+IGlzIG5vdCB0ZXJyaWJseSBo
ZWxwZnVsIChpdCBwYXJzZXMgVENQIHRpbWVzdGFtcHMgdG8gbWF0Y2gKPj4gaW5jb21pbmcvb3V0
Z29pbmcgcGFja2V0cyBhbmQgY29tcHV0ZSB0aGUgUlRUKS4KPgo+IEkgZmlndXJlZCB0aGF0IG1p
Z2h0IGJlIHRoZSBjYXNlLiBZZXMgSSB3b3VsZCd2ZSBkaXNhYmxlZCB0aGUgVlBOIGlmIEkgCj4g
ZGlkbid0IGdldCBkcml2ZXIgZXJyb3JzLgo+IEkgY2hhbmdlZCB0aGUgbmV0d29yayBpbnRlcmZh
Y2UgdG8gdXNlIGFuIGVtdWxhdGVkIEludGVsIEUxMDAwIHRvbmlnaHQsIAo+IGFuZCBpZiBJIGJ5
cGFzcyB0aGUgVlBOIGl0IHdvcmtzIGFzIGl0IHNob3VsZC4KClJpZ2h0LCBhd2Vzb21lIQoKPj4g
SSBndWVzcyB3ZSBzaG91bGQgYmUgbW9yZSBmbGV4aWJsZSBhYm91dCB3aGljaCBob29rcyB3ZSBz
dXBwb3J0LCBzbyBpdAo+PiBjYW4gYWxzbyBiZSB1c2VkIG9uIGRldmljZXMgd2l0aCBubyBYRFAg
c3VwcG9ydC4gQWRkaW5nIGluIFNpbW9uLCB3aG8gaXMKPj4gd3JpdGluZyB0aGUgY29kZTsgSSB0
aGluayBoZSBpcyBmb2N1c2VkIG9uIGdldHRpbmcgYSBjb3VwbGUgb2Ygb3RoZXIKPj4gZmVhdHVy
ZXMgZG9uZSBmaXJzdCwgYnV0IHRoaXMgY291bGQgZ28gb24gdGhlIFRPRE8gbGlzdCA6KQo+Cj4g
SXQncyBub3QgbGlrZSBJJ20gaW4gYSBodXJyeSwgYW5kIEknZCBwcm9iYWJseSBuZWVkIHNvbWUg
dGltZSB0byBmaWd1cmUgCj4gb3V0IGhvdyB0byB0d2VhayB0aGUgQ0FLRSBwYXJhbWV0ZXJzIGNv
cnJlY3RseSB3aXRoIHRoaXMgYW55d2F5IDspCj4KPiBTcGVha2luZyBvZiwgaXNuJ3Qgb25lIG9m
IHRoZSBjaGFsbGVuZ2VzIHdpdGggc29sdXRpb25zIGxpa2UgdGhlc2UgdGhhdCAKPiBpdCdzIGhh
cmQgdG8gdGVsbCB3aGVuIGNvbmRpdGlvbnMgaGF2ZSBpbXByb3ZlZCBhbmQgYWxsb3cgZm9yIG1v
cmUgCj4gdGhyb3VnaHB1dD8gQXQgbGVhc3QgdGhhdCdzIHdoYXQgSSByZW1lbWJlciBiZWluZyB0
aGUgaXNzdWUgd2hlbiBJIAo+IHRlc3RlZCBDQUtFJ3MgYXV0b3JhdGUtaW5ncmVzcyBiYWNrIGlu
IHRoZSBkYXkuCgpZZWFoLCB0aGVyZSB3b3VsZCBoYXZlIHRvIGJlIHNvbWUga2luZCBvZiBwcm9i
aW5nIHRvIGRpc2NvdmVyIHdoZW4gdGhlCmJhbmR3aWR0aCBnb2VzIHVwIChtYXliZSBzb21ldGhp
bmcgbGlrZSB3aGF0IEJCUiBkb2VzPykuIFdvcmtpbmcgb3V0IHRoZQpkZXRhaWxzIG9mIHRoaXMg
aXMgc3RpbGwgaW4gdGhlIGZ1dHVyZSwgdGhpcyBpcyBhbGwganVzdCBsb29zZSBwbGFucwp0aGF0
IEknbGwgdHJ5IHRvIGdldCBiYWNrIHRvIG9uY2Ugd2UgaGF2ZSB0aGUgbWVhc3VyZW1lbnQgdG9v
bCB3b3JraW5nCnJlYXNvbmFibHkgd2VsbC4gSW5wdXQgYW5kIGV4cGVyaW1lbnRzIHdlbGNvbWUs
IG9mIGNvdXJzZSEKCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

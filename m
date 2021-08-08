Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BA23E4AAD
	for <lists+cake@lfdr.de>; Mon,  9 Aug 2021 19:17:43 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6BCFC3CB50;
	Mon,  9 Aug 2021 13:17:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628529462;
	bh=PIuVmo21jZIk4xJjoq0/hnxsdUEDm8z4USJZI0ucYhc=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=lWaBboPF/dH0vUHIadWV4Lqh50PyLxRJsILhWDbsFF2VCBkCWGfzeLqsy1cR3d2L6
	 HVa50L/CfXW5mQFQDLrQ1+NSzNKr0RTENNk5Th7voO80RDpDDmT7y8ReVByHuFUS/v
	 iPo9WL76rkg61SWqf9wxJDs9gV+d57qOYzNYgndu6B2+healIId3bcoxZv0ZsuZ6mT
	 U9lYhYo+ovoIXYoOdTYuDxzU26CKgaDtCOn7Db4emKxSsohYY/yLZArQj49nJYnCyc
	 j2s5PfahtAIDWzoFtemp0jn7Q7QM+jrV3D5OkRUxpludTiMea8+PttFMvpkW6c+7VG
	 fww5UzRyGtXaQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout06.eigbox.net (bosmailout06.eigbox.net [66.96.189.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7FFA73B2A4;
 Sun,  8 Aug 2021 00:20:34 -0400 (EDT)
Received: from bosmailscan03.eigbox.net ([10.20.15.3])
 by bosmailout06.eigbox.net with esmtp (Exim)
 id 1mCaIc-0002aN-2L; Sun, 08 Aug 2021 00:20:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U9JkLY0INat6+Ewe0d8rhTpypZ5BH2bMCMB1HTSf48A=; b=TtHE/TfAmH45QG+LZXOQvrx9s9
 1C3sBlAhrKZqoNnwe4nMisHU5oyyulBk10ZViECAmSEZEf+KSeMFBb3qbrp/YrihWU+QI1ilWvZtL
 O0q1dZIeDfOnEUSuRbo8UrZvVU0QA4SOpGbn43LvEYmX9Wu4+82yh99tx6BFhPnPSPsXe7roSUb+V
 woCgD5YvFU5VmwnA4QnLtyL3JZfzIKbHoOMkaTGzX8wiJa375imOy/B1Xr35YF/ETP057ly2XGlBI
 N7SLcAxKX9QaW9+7JwSQ+ZAPeDE2M0Tsxjef3gvv/d8I2et6Q61yMJTC1xJVopxqpRwhpQYw2nitw
 HA6U4h+A==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan03.eigbox.net with esmtp (Exim)
 id 1mCaIb-0006at-Q1; Sun, 08 Aug 2021 00:20:33 -0400
Received: from bosauthsmtp17.yourhostingaccount.com ([10.20.18.17])
 by bosimpout12 with 
 id esLW250010N5uqq01sLZCJ; Sun, 08 Aug 2021 00:20:33 -0400
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=f4kFLigMKr8AH7rIJ//qJA==:117 a=x+7tlP9+fMpTIVJEmcsKvw==:17
 a=kj9zAlcOel0A:10 a=MhDmnRu9jo8A:10 a=Wo7qeYC63mUA:10 a=kurRqvosAAAA:8
 a=ZdOKaNPWnYhI3Xz9-HgA:9 a=CjuIK1q_8ugA:10 a=kbxRQ_lfPIoQnHsAj2-A:22
Received: from c-73-222-32-85.hsd1.ca.comcast.net ([73.222.32.85]:62291
 helo=SRA6) by bosauthsmtp17.eigbox.net with esmtpa (Exim)
 id 1mCaIX-0006Kh-JN; Sun, 08 Aug 2021 00:20:29 -0400
From: "Dick Roy" <dickroy@alum.mit.edu>
To: "'Leonard Kleinrock'" <lk@cs.ucla.edu>,
	"'David Lang'" <david@lang.hm>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <8677F5C4-1893-4A61-A13C-3C8BE17CB789@cs.ucla.edu>
In-Reply-To: <8677F5C4-1893-4A61-A13C-3C8BE17CB789@cs.ucla.edu>
Date: Sat, 7 Aug 2021 21:20:17 -0700
Organization: SRA
Message-ID: <EB7FFE78D4BE43D88A392B5EBC5F6E9E@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdeLuSNoqzPg3tuuQlWLUOoeRuYbhAAUbHBg
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 73.222.32.85
X-EN-OrigHost: c-73-222-32-85.hsd1.ca.comcast.net
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:17:41 -0400
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
	Internet Quality workshop CFP for the internet architecture board
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
Reply-To: dickroy@alum.mit.edu
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>,
 'Bob McMahon' <bob.mcmahon@broadcom.com>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 'cerowrt-devel' <cerowrt-devel@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCkZyb206IFN0YXJsaW5rIFttYWlsdG86c3Rhcmxp
bmstYm91bmNlc0BsaXN0cy5idWZmZXJibG9hdC5uZXRdIE9uIEJlaGFsZiBPZgpMZW9uYXJkIEts
ZWlucm9jawpTZW50OiBNb25kYXksIEF1Z3VzdCAyLCAyMDIxIDU6MzggUE0KVG86IERhdmlkIExh
bmcKQ2M6IHN0YXJsaW5rQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldDsgTWFrZS1XaWZpLWZhc3Q7IEJv
YiBNY01haG9uOyBDYWtlIExpc3Q7CmNvZGVsQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldDsgY2Vyb3dy
dC1kZXZlbDsgYmxvYXQKU3ViamVjdDogUmU6IFtTdGFybGlua10gW0Nha2VdIFtNYWtlLXdpZmkt
ZmFzdF0gW0Nlcm93cnQtZGV2ZWxdIER1ZSBBdWcgMjoKSW50ZXJuZXQgUXVhbGl0eSB3b3Jrc2hv
cCBDRlAgZm9yIHRoZSBpbnRlcm5ldCBhcmNoaXRlY3R1cmUgYm9hcmQKClRoZXNlIGNhc2VzIGFy
ZSB3aGF0IG15IHN0dWRlbnQsIEZvdWFkIFRvYmFnaSBhbmQgSSBjYWxsZWQgdGhlIEhpZGRlbgpU
ZXJtaW5hbCBQcm9ibGVtICh3aXRoIHRoZSBCdXN5IFRvbmUgc29sdXRpb24pIGJhY2sgaW4gMTk3
NS4KCltSUl0gQWxzbyBrbm93biBhcyB0aGUgImhpZGRlbiBub2RlIiBwcm9ibGVtIQoKTGVuIAoK
Cj4gT24gQXVnIDIsIDIwMjEsIGF0IDQ6MTYgUE0sIERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+
IHdyb3RlOgo+IAo+IElmIHlvdSBhcmUgZ29pbmcgdG8gc2V0dXAgYSB0ZXN0IGVudmlyb25tZW50
IGZvciB3aWZpLCB5b3UgbmVlZCB0byBpbmNsdWRlCnRoZSBhYmlsaXR5IHRvIG1ha2UgYSBmZSBj
YXNlcyB0aGF0IG9ubHkgaGFwcGVuIHdpdGggUkYsIG5vdCB3aXRoIHdpcmVkCm5ldHdvcmtzIGFu
ZCBhcmUgY29tbW9ubHkgb3Zlcmxvb2tlZAo+IAo+IDEuIHN0YXRpb24gQSBjYW4gaGVhciBzdGF0
aW9uIEIgYW5kIEMgYnV0IHRoZXkgY2Fubm90IGhlYXIgZWFjaCBvdGhlcgpbUlJdIExvdHMgb2Yg
cmVhc29ucyBmb3IgdGhhdCBpbiB0aGUgd2lyZWxlc3Mgd29ybGQgb2YgbW9iaWxpdHkuCgo+IDIu
IHN0YXRpb24gQSBjYW4gaGVhciBzdGF0aW9uIEIgYnV0IHN0YXRpb24gQiBjYW5ub3QgaGVhciBz
dGF0aW9uIEEgCgpbUlJdIFRoaXMgaXMgbGFyZ2VseSBkdWUgdG8gbGluayBpbWJhbGFuY2UuIElu
IFRERCBzeXN0ZW1zIGxpa2UgV2ktRmksIHRpbWUKdmFyaWFiaWxpdHkgb2YgdGhlIFJGIGNoYW5u
ZWxzIGlzIGFsc28gYW4gaXNzdWUgdGhhdCBpcyBkZWFsdCB3aXRoIGJ5IGhhdmluZwp0dXJuIGFy
b3VuZCB0aW1lcyB0aGF0IGFyZSBtdWNoIGxlc3MgdGhhbiB0aGUgIihkZS0pY29oZXJlbmNlIHRp
bWUiIG9mIHRoZQpjaGFubmVsLiBMaW5rIGltYmFsYW5jZSBpcyBsYXJnZWx5IGR1ZSB0byBkaWZm
ZXJlbmNlcyBpbiB0eCBwb3dlciBhbmQgcngKZnJvbnQgZW5kIG5vaXNlIGZpZ3VyZS4gU21hcnQg
YW50ZW5uYSB0ZWNobm9sb2d5IG1ha2VzIHRoaXMgYSBiaXQgbW9yZQpjb21wbGljYXRlZCwgYnV0
IHRoZSBlc3NlbnRpYWxzIGFyZSBzdGlsbCB0aGUgc2FtZS4KCjMuIHN0YXRpb24gQSBjYW4gaGVh
ciB0aGF0IHN0YXRpb24gQiBpcyB0cmFuc21pdHRpbmcsIGJ1dCBub3Qgd2l0aCBhIHN0cm9uZwpl
bm91Z2ggc2lnbmFsIHRvIGRlY29kZSB0aGUgc2lnbmFsICh5ZXMgaW4gdGhlb3J5IHlvdSBjYW4g
d29yayBhcm91bmQKaW50ZXJmZXJlbmNlLCBidXQgaW4gcHJhY3RpY2UgaW50ZXJmZXJlbmNlIGlz
IHN0aWxsIGEgcmVhbCB0aGluZykKCltSUl0gWWVzLCBlbmVyZ3kgY2FuIGJlIGRldGVjdGVkIGF0
IGxldmVscyB0aGF0IGFyZSBpbnN1ZmZpY2llbnQgZm9yCmRlY29kaW5nLiAgVGhhdCBzYWlkLCBp
ZiB5b3UgY2FuJ3QgZGVjb2RlIHRoZSBzaWduYWwsIHlvdSBnZW5lcmFsbHkgY2Fubm90Cmtub3cg
d2hvIHNlbnQgaXQgOl4pKSkKPiAKPiBEYXZpZCBMYW5nCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpTdGFybGluayBtYWlsaW5nIGxpc3QKU3Rhcmxp
bmtAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL3N0YXJsaW5rCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

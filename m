Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9BE3DE347
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 01:55:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 042BA3CB4C;
	Mon,  2 Aug 2021 19:55:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1627948510;
	bh=/tYdWDs5YMV1wcZTT0KxUQbvLvfv8Sdj931mr0pMJUg=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lDICzDCkL7CHil6WcuzPpKw9jv/TchJh/rdtvC3JwrIusbu8xDP444SYjgZzYQImZ
	 XkAfQTGlL2cW13VjJt2SlmfhCJYWzk5yS7SihbcBjc5f9sDdo9c39JzfbcUKTYk+r3
	 gs8gWPtucp7tNucXZPkVGW9uJs40ZRUIRXTLw2anuLbMWQdxHoE5qhqa/L6oV2ikCz
	 X3rTlGX80FzNWl9sEAG5kxPaRrhCpydVmPUcyOkFmKx37Wm3jxMjibcllmfqi40mSN
	 UZVW4LEIJI13vO/X9n2nf9aujgwUcObYifH65A+RaTETuHm6ICpk+mIJ0v46+b8INM
	 JifeyuAyhujgA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1ECC03B29D;
 Mon,  2 Aug 2021 19:55:08 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.202])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 34EEB1A006A;
 Mon,  2 Aug 2021 23:55:06 +0000 (UTC)
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 8029380066; Mon,  2 Aug 2021 23:55:05 +0000 (UTC)
Received: from [192.168.254.6] (unknown [50.34.183.227])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 5B66213C2B1;
 Mon,  2 Aug 2021 16:55:04 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 5B66213C2B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1627948505;
 bh=eW0nKmM+sftalpf58mlb1lWP1CNG+dGs0zu9aJsaYSU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=mSX54r8GZOxJTJOIy9h2in3tIDr9yIcVCAwLLNsivUkMn8sDK4qAcOj/2PWmwiCNu
 zhPVrQ8bcYPpswMqedse77LivCPDDeDcFWCGnv7GY9q9K0mp9S0qjCp/vsj8h15gSH
 Bnh8oNcDs75N8GrdRGeJ1R1Ye3SK4bGwC9BGInco=
To: David Lang <david@lang.hm>, Bob McMahon <bob.mcmahon@broadcom.com>
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
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
Date: Mon, 2 Aug 2021 16:55:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
Content-Language: en-MW
X-MDID: 1627948506-NKYOAo82XhfD
Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug 2:
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gOC8yLzIxIDQ6MTYgUE0sIERhdmlkIExhbmcgd3JvdGU6Cj4gSWYgeW91IGFyZSBnb2luZyB0
byBzZXR1cCBhIHRlc3QgZW52aXJvbm1lbnQgZm9yIHdpZmksIHlvdSBuZWVkIHRvIGluY2x1ZGUg
dGhlIGFiaWxpdHkgdG8gbWFrZSBhIGZlIGNhc2VzIHRoYXQgb25seSBoYXBwZW4gd2l0aCBSRiwg
bm90IHdpdGggd2lyZWQgbmV0d29ya3MgYW5kIAo+IGFyZSBjb21tb25seSBvdmVybG9va2VkCj4g
Cj4gMS4gc3RhdGlvbiBBIGNhbiBoZWFyIHN0YXRpb24gQiBhbmQgQyBidXQgdGhleSBjYW5ub3Qg
aGVhciBlYWNoIG90aGVyCj4gMi4gc3RhdGlvbiBBIGNhbiBoZWFyIHN0YXRpb24gQiBidXQgc3Rh
dGlvbiBCIGNhbm5vdCBoZWFyIHN0YXRpb24gQSAzLiBzdGF0aW9uIEEgY2FuIGhlYXIgdGhhdCBz
dGF0aW9uIEIgaXMgdHJhbnNtaXR0aW5nLCBidXQgbm90IHdpdGggYSBzdHJvbmcgZW5vdWdoIHNp
Z25hbCB0byAKPiBkZWNvZGUgdGhlIHNpZ25hbCAoeWVzIGluIHRoZW9yeSB5b3UgY2FuIHdvcmsg
YXJvdW5kIGludGVyZmVyZW5jZSwgYnV0IGluIHByYWN0aWNlIGludGVyZmVyZW5jZSBpcyBzdGls
bCBhIHJlYWwgdGhpbmcpCj4gCj4gRGF2aWQgTGFuZwo+IAoKVG8gYWRkIHRvIHRoaXMsIEkgdGhp
bmsgeW91IG5lZWQgbG90cyBvZiBkaWZmZXJlbnQgc3RhdGlvbiBkZXZpY2VzLCBkaWZmZXJlbnQg
Y2FwYWJpbGl0aWVzICgvbiwgL2FjLCAvYXgsIGV0YykKZGlmZmVyZW50IG51bWJlcnMgb2Ygc3Bh
dGlhbCBzdHJlYW1zLCBhbmQgZGlmZmVyZW50IGRpc3RhbmNlcyBmcm9tIHRoZSBBUC4gIEZyb20g
ZG93bmxvYWQgcXVldWVpbmcgcGVyc3BlY3RpdmUsIGNoYW5naW5nCnRoZSBjYXBhYmlsaXRpZXMg
bWF5IGJlIHN1ZmZpY2llbnQgd2hpbGUga2VlcGluZyBhbGwgc3RhdGlvbnMgYXQgc2FtZSBkaXN0
YW5jZS4gIFRoaXMgYXNzdW1lcyB5b3UgYXJlIG5vdAphY3R1YWxseSB0ZXN0aW5nIHRoZSB3aWZp
IHJhdGUtY3RybCBhbGcuIGl0c2VsZiwgc28gZGlmZmVyZW50IHRocm91Z2hwdXQgbGV2ZWxzIGZv
ciBkaWZmZXJlbnQgc3RhdGlvbnMgd291bGQgYmUgZW5vdWdoLgoKU28sIGEgZ29vZCBzdGF0aW9u
IGVtdWxhdG9yIHNldHVwIChhbmQvb3IgcGlsZSBvZiByZWFsIHN0YXRpb25zKSBhbmQgYSBmZXcg
UkYgY2hhbWJlcnMgYW5kCnByb2dyYW1tYWJsZSBhdHRlbnVhdG9ycyBhbmQgeW91IGNhbiB0ZXN0
IHRoYXQgc2V0dXAuLi4KCiBGcm9tIHVwbG9hZCBwZXJzcGVjdGl2ZSwgSSBndWVzcyBzYW1lIHNl
dHVwIHdvdWxkIGRvIHRoZSBqb2IuICBRdWV1aW5nL2ZhaXJuZXNzIG1pZ2h0IGRlcGVuZCBhIGJp
dCBtb3JlIG9uIHRoZQpzdGF0aW9uIGRldmljZXMsIGVtdWxhdGVkIG9yIG90aGVyd2lzZSwgYnV0
IEkgZ3Vlc3MgYSBjbGV2ZXIgQVAgY291bGQgZW5mb3JjZSBmYWlybmVzcyBpbiB1cHN0cmVhbSBk
aXJlY3Rpb24KdG9vIGJ5IGltcGxlbWVudGluZyBwZXItc3RhIHF1ZXVlcy4KClRoYW5rcywKQmVu
CgotLSAKQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+CkNhbmRlbGEgVGVjaG5v
bG9naWVzIEluYyAgaHR0cDovL3d3dy5jYW5kZWxhdGVjaC5jb20KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

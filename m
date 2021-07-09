Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1710A3C2BAC
	for <lists+cake@lfdr.de>; Sat, 10 Jul 2021 01:37:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3F6613CBD4;
	Fri,  9 Jul 2021 19:37:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625873844;
	bh=kacLwoKnEFQ0eaddgt7i5VWFw+AouConoSIY4fqWWvI=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fwvk9us0Fl/sfV1TZOyMcCP4YgS2o32K86UtTYACjEP90czKWE8TupNJ6tJMbeBoP
	 Qb2Xgwob7ng2S7QoCsc5M/HzRsYMz2siyJnZIDfrx9z7F26Ks5guxWAMG2E07NcMYy
	 RcB+AX3lmUiPysmBSws4tkzOW4kC+aiRhJ22KZrGOK8pZnvJLXll2DmsEMoc8mKdMF
	 +3qVyb2m/+f+0kJWVVYRSeq1t38XydOARLb4X02WCNvVdi2PGDPtHOIiFKgM1aW6ip
	 O/jP1Qi9xBRFOMAW7fNNq8KpDE+/hLVt2SMDXwqmY7rzPcPnV8HBi5X1OKK/T4xVbt
	 ud1Odg1ah8AOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 22D0A3B2A4;
 Fri,  9 Jul 2021 19:37:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1625873838; bh=hD53ZZX4RMQeMQTMoVcHvmlXochqpRPdC0IOq+IH33Q=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=HtDKcGOoyfz2un//+OdaJ5FJUoUMESdaxJZjGkHZg1Qvfmxr1S5GBm+cKdP2kDbEo
 H/d6oA4UwlyuEhdXifJGnIbZrkBxYbwY4+Pthy4LzUvLUVaSTxAxE40zVWhA3VW7jz
 INr+/qjQmtnUkpgFHiwyaxu6C2+C8GaEHE20Y0xcBZKteckkV6FdBvo1bGikYNzsuB
 +EVDpwVwX3mzlAzic47XeQd0Y8iIDNTYGYf5cmXwujcmARbuHGHHHoy7KOBrkPBVXn
 pMrxFz8K6wmBt9Sc0Oq/3mtlZej5DASF62fbvnv6uY5VXdAo1Et84IuCLlLfXSvumP
 HVjHoRFnV6UOA==
To: "Holland, Jake" <jholland@akamai.com>, "David P. Reed"
 <dpreed@deepplum.com>, Luca Muscariello <muscariello@ieee.org>
In-Reply-To: <BCD9F979-341F-4292-9D11-FAE91FC3967E@akamai.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <BCD9F979-341F-4292-9D11-FAE91FC3967E@akamai.com>
Date: Sat, 10 Jul 2021 01:37:16 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87a6mvdpoz.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
	but not invalidating my main point
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

IkhvbGxhbmQsIEpha2UgdmlhIEJsb2F0IiA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3
cml0ZXM6Cgo+IEhpIERhdmlkLAo+Cj4gVGhhdOKAmXMgYW4gaW50ZXJlc3RpbmcgcG9pbnQsIGFu
ZCBJIHRoaW5rIHlvdeKAmXJlIHJpZ2h0IHRoYXQgcGFja2V0Cj4gYXJyaXZhbCBpcyBwb29ybHkg
bW9kZWxlZCBhcyBhIFBvaXNzb24gcHJvY2VzcywgYmVjYXVzZSBpbiBwcmFjdGljZQo+IHBhY2tl
dCB0cmFuc21pc3Npb25zIGFyZSB2ZXJ5IHJhcmVseSB1bnJlbGF0ZWQgdG8gb3RoZXIgcGFja2V0
Cj4gdHJhbnNtaXNzaW9ucy4KPgo+IEJ1dCBub3cgeW914oCZdmUgZ290IG1lIHdvbmRlcmluZyB3
aGF0IHRoZSByaWdodCBhcHByb2FjaCBpcy4gRG8geW91Cj4gaGF2ZSBhbnkgYWR2aWNlIGZvciBo
b3cgdG8gaW1wcm92ZSB0aGlzIGtpbmQgb2YgbW9kZWxpbmc/CgpJIGFjdHVhbGx5IHRyaWVkIG15
IGhhbmQgYXQgZmluZGluZyBzb21ldGhpbmcgYmV0dGVyIGZvciBteSBtYXN0ZXIncwp0aGVzaXMg
YW5kIGNhbWUgYWNyb3NzIHNvbWV0aGluZyBjYWxsZWQgYSBNYXJrb3YtTW9kdWxhdGVkIFBvaXNz
b24KUHJvY2VzcyAoTU1QUC9ELzEgcXVldWUpWzBdLiBJdCBsb29rZWQgcHJvbWlzaW5nLCBidXQg
dW5mb3J0dW5hdGVseSBJCmZhaWxlZCB0byBtYWtlIGl0IHByb2R1Y2UgYW55IHVzZWZ1bCBwcmVk
aWN0aW9ucy4gTW9zdCBsaWtlbHkgdGhpcyB3YXMKYXMgbXVjaCBhIHJlc3VsdCBvZiBteSBvd24g
ZmFpbGluZ3MgYXMgYSBxdWV1ZWluZyB0aGVvcmlzdCBhcyBpdCB3YXMgdGhlCmZhdWx0IG9mIHRo
ZSBtb2RlbCAoSSB3YXMgaW4gd2F5IG92ZXIgbXkgaGVhZCBieSB0aGUgdGltZSBJIGdvdCB0byB0
aGF0Cm1vZGVsKTsgc28gSSBmaWd1cmVkIEknZCBtZW50aW9uIGl0IGhlcmUgaW4gY2FzZSBhbnlv
bmUgbW9yZSBxdWFsaWZpZWQKd291bGQgaGF2ZSBhbnkgb3BpbmlvbiBvbiBpdC4KCkkgZGlkIG1h
bmFnZSB0byBnZXQgdGhlIExpbnV4IGtlcm5lbCB0byBwcm9kdWNlIHF1ZXVlaW5nIGJlaGF2aW91
ciB0aGF0CnJlc2VtYmxlZCB0aGF0IG9mIGEgc3RhbmRhcmQgTS9NLzEgcXVldWUgKGlmIHlvdSBz
cXVpbnQgYSBiaXQpOyBhbGwgeW91CmhhdmUgdG8gZG8gaXMgdG8gdXNlIGEgdHJhZmZpYyBnZW5l
cmF0b3IgdGhhdCBlbWl0cyBwYWNrZXRzIHdpdGggdGhlCmRpc3RyaWJ1dGlvbiB0aGUgbW9kZWwg
YXNzdW1lcy4uLiA6KQoKVGhlIGZ1bGwgdGhlc2lzIGlzIHN0aWxsIGF2YWlsYWJsZVsxXSBmb3Ig
dGhlIHBlcnVzYWwgb2YgbW9yYmlkbHkgY3VyaW91cy4KCi1Ub2tlCgpbMF0gaHR0cHM6Ly93d3cu
c2NpZW5jZWRpcmVjdC5jb20vc2NpZW5jZS9hcnRpY2xlL2Ficy9waWkvMDE2NjUzMTY5MzkwMDM1
UwpbMV0gaHR0cHM6Ly9ydWNmb3Jzay5ydWMuZGsvd3MvZmlsZXMvNTc2MTM4ODQvdGhlc2lzLWZp
bmFsLnBkZgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

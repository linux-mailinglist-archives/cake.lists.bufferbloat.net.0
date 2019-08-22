Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id DF05A9A028
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 21:37:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 827893CB3C;
	Thu, 22 Aug 2019 15:37:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566502664;
	bh=d6W/Bip4jJG8oGuegc4BpG4pGEJGKEaoRm7ejs6Xmpw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FveqzYTP+RXEiT6CrCRLw3o5PYz7uDLxyaPBrPKsyv5SONIAXP5cDrcqJQzBUZ2Lz
	 R1y9G1ZyWIXCQNKwmgjVIqe0axhjQGoZ2BNfbstNMKCRTeHK+Ty1ikDYY5VgQu2y7A
	 T/14/5FGB6ugbBlBHmUkPv7nr3ORnx1WEXAdBUxjuFHgsooDyrkHyrDDNaDlheRQD4
	 6G7Hv/SnjQ5613KbDDdqS9sIe5vnQJ8mtagwBqWD1rl2tGfHBzlnqEEoOFIosSFQuq
	 gQrLZOl9ell95Y/9n7camxr26EHA0mHBrYcsTu7tz1hHYl9CHN3d/qtztTi1JXfSd+
	 cvkMjQHRz48gg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 494353CB36
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 15:37:43 -0400 (EDT)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 528DF7BDAE
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 19:37:42 +0000 (UTC)
Received: by mail-ed1-f71.google.com with SMTP id u3so3946169edm.13
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 12:37:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=FL9VPPp3yTD9fTdX+QksmVSSpDGorzTRhHdxOZ2CiQk=;
 b=m1JX6GQDdVxwFPWMk4aQjbbcStsKkDd6F5NilgDK0WfDFAeYr0ZGFQpZSeCa+4C233
 aD6JYRIcph1/sOMusfgrnL6n/7c1b2AfuwiypEOCBA8BcBgz7RdZXJvdNsDktkMCBzC/
 YSs34yf0ZeRk7tiqXfsLH2LnfyoxSlnpLg0J2kZY1mX74Us1p90aMYpEJY7XFqsO9Ju2
 9x5RmIrwxIxXLYsOYonj3lS5MZ+ic7qCaqzh+LNeDGFCax2XTak8lGNrQA3qrl1fgCGx
 jq5ChKmtwAt0xHdegpQyy0t1WNMGN+qkNbzzUUifFteE5S+opdbX0YQfJO9I6DVCI5K6
 6sHw==
X-Gm-Message-State: APjAAAXyEq8D+fPd7HQoPGLN6jrSRN2GFXsf7PzhKoqdCuvGifC6gq01
 ix/vXFRxuf5N45J3nHbIomZIRgs67ueQs0YB1LT7G4/o1CUfb7+wof8e3AcJGHMtvqFPKcL3QLE
 7uSQ2vCGPbpuwBb5S8Drq0A==
X-Received: by 2002:a17:906:80da:: with SMTP id
 a26mr923835ejx.222.1566502661065; 
 Thu, 22 Aug 2019 12:37:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyCvq/bVyvt5eTzWyZOiZv7tXRBcq+3zw+g7QRnC6o224aAF7VkHn8MzkBg0568B7MZ8GBHug==
X-Received: by 2002:a17:906:80da:: with SMTP id
 a26mr923812ejx.222.1566502660781; 
 Thu, 22 Aug 2019 12:37:40 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id y37sm68656edb.42.2019.08.22.12.37.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 12:37:40 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5048C181CEF; Thu, 22 Aug 2019 21:37:39 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw7kSn9gwZsqqgO9w031oz5PgpUw1nhQwt5Y1x9dQ63MoA@mail.gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
 <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
 <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
 <dcb92eaf-928e-f909-981d-c2baf74fbc90@newmedia-net.de>
 <87ftltdter.fsf@taht.net>
 <e7e08148-5791-2afc-f26c-6c4a0a3f1a9d@newmedia-net.de>
 <87pnkxnjo4.fsf@toke.dk>
 <CAA93jw7kSn9gwZsqqgO9w031oz5PgpUw1nhQwt5Y1x9dQ63MoA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 22 Aug 2019 21:37:39 +0200
Message-ID: <87ef1dng8s.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Battlemesh] Wifi Memory limits in small platforms
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
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFRodSwgQXVnIDIy
LCAyMDE5IGF0IDExOjIzIEFNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQu
Y29tPiB3cm90ZToKPj4KPj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdt
ZWRpYS1uZXQuZGU+IHdyaXRlczoKPj4KPj4gPiBBbSAyMi4wOC4yMDE5IHVtIDE5OjAzIHNjaHJp
ZWIgRGF2ZSBUYWh0Ogo+PiA+PiBTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxsQG5l
d21lZGlhLW5ldC5kZT4gd3JpdGVzOgo+PiA+Pgo+PiA+Pj4gQW0gMjIuMDguMjAxOSB1bSAxNTox
NSBzY2hyaWViIERhdmUgVGFodDoKPj4gPj4+PiBJdCdzIHZlcnkgZ29vZCB0byBrbm93IGhvdyBt
dWNoIGZvbGsgaGF2ZSBiZWVuIHN0cnVnZ2xpbmcgdG8ga2VlcAo+PiA+Pj4+IHRoaW5ncyBmcm9t
IE9PTWluZyBvbiAzMk1CIHBsYXRmb3Jtcy4gSSdkIGxpa2UgdG8gaG9wZSB0aGF0IHRoZQo+PiA+
Pj4+IHVuaWZpZWQgbWVtb3J5IG1hbmFnZW1lbnQgaW4gY2FrZSAodnMgYSBjb2xsZWN0aW9uIG9m
IFFvUyBxZGlzY3MpIGFuZAo+PiA+Pj4+IHRoZSBuZXcgZnFfY29kZWwgZm9yIHdpZmkgc3R1ZmYg
KGN1dHRpbmcgaXQgZG93biB0byAxIGFsbG9jIGZyb20gZm91cikKPj4gPj4+PiBoZWxwLCBtYXNz
aXZlbHkgb24gdGhpcyBpc3N1ZSwgYnV0IHVudGlsIHRvZGF5IEkgd2FzIHVuYXdhcmUgb2YgaG93
Cj4+ID4+Pj4gbXVjaCB0aGUgZmllbGQgbWF5IGhhdmUgYmVlbiBwYXRjaGluZyB0aGluZ3Mgb3V0
Lgo+PiA+Pj4+Cj4+ID4+Pj4gVGhlIGRlZmF1bHQgMzJNQiBtZW1vcnkgbGltaXRzIGluIGZxX2Nv
ZGVsIGNvbWVzIGZyb20gdGhlIHN0cmVzc2luZwo+PiA+Pj4+IGFib3V0IDEwR2lnRSBuZXR3b3Jr
aW5nIGZyb20gZ29vZ2xlLiA0TUIgaXMgbGltaXQgaW4gb3BlbndydCwKPj4gPj4+PiB3aGljaCBp
cyBzdWl0YWJsZSBmb3IgfjFHYml0LCBhbmQgaXMgc29ydCBvZiB0aGVyZSAgZHVlIHRvIDgwMi4x
MWFjJ3MKPj4gPj4+PiBtYXhpbXVtIChpbXBvc3NpYmxlIHRvIGhpdCkgb2YgYSB0eG9wIHRoYXQg
bGFyZ2UuCj4+ID4+IEkgZGlkIGtpbmQgb2YgY29uZmxhdGUgInFvcyArIGZxX2NvZGVsIiB2cyB3
aWZpIGluIHRoaXMgbWVzc2FnZS4gSXQKPj4gPj4gbG9va3MgbGlrZSB5ZXIgc3RheWluZyB3aXRo
IG1lLgo+PiA+Pgo+PiA+Pj4+IFNvbWV0aGluZyBhcyBzbWFsbCBhcyAyNTZLIGlzIGVzc2VudGlh
bGx5IGFib3V0IDEyOCBmdWxsIHNpemUgcGFja2V0cwo+PiA+Pj4+IChhbmQgb2Z0ZW4sIGFja3Mg
ZnJvbSBhbiBldGhlcm5ldCBkZXZpY2UncyByeCByaW5nIGVhdCAyaykuCj4+ID4+PiB3aGF0IGkg
bWlzcyBpbiBtYWM4MDIxMSBpcyB0aGUgZm9sbG93aW5nIG9wdGlvbiAiZnFfY29kZWwgPSBvZmYi
Cj4+ID4+PiBpdHMgZXNzZW50aWFsIGFuZCBpIHdpbGwgZGVmaW5pdGx5IHdvcmsgb24gYSBwYXRj
aCB0byBkZWFsIHdpdGggdGhpcwo+PiA+Pj4gd2F5IGZvciBsb3cgbWVtb3J5IDgwMi4xMW4gcGxh
dGZvcm1zLgo+PiA+PiBXZWxsLCBpdCB3b3VsZCBiZSBteSBob3BlIHRoYXQgdHVybmluZyBpdCBv
ZmYgd291bGQgQSkgbm90IGhlbHAgdGhhdAo+PiA+PiBtdWNoIG9uIG1lbW9yeSBvciBjcHUgYW5k
IEIpIHNob3cgc3VjaCBhIGRyYW1hdGljIHJlZHVjdGlvbiBpbgo+PiA+PiBtdWx0aS1zdGF0aW9u
IHBlcmZvcm1hbmNlIHRoYXQgeW91J2QgaW1tZWRpYXRlbHkgdHVybiBpdCBvbiBhZ2Fpbi4KPj4g
PiBpc250IGl0IGJldHRlciB0byBoYXZlIGEgd29ya2luZyBwbGF0Zm9ybSB3aXRoIGxlc3MgcGVy
Zm9ybWFuY2UgdGhhbiBhCj4+ID4gY3Jhc2hpbmcgcGxhdGZvcm0gd2l0aCBubyBwZXJmb3JtYW5j
ZT8KPj4gPiBpIG1lYW4gaSBjYW4gdXNlciBvbGRlciBtYWM4MDIxMSB2ZXJzaW9ucyB3aXRob3V0
IHRoYXQgaXNzdWUgb24gYQo+PiA+IHR5cGljYWwgbmFub3N0YXRpb24gMi81IHdoaWNoIGlzIG9m
dGVuIHVzZWQganVzdCBhcyBDUEUgZGV2aWNlCj4+Cj4+IFNvIGJlZm9yZSB0aGUgcXVldWVpbmcg
cGF0Y2hlcyB0byBtYWM4MDIxMSwgdGhlIG1heGltdW0gcGFja2V0IHF1ZXVlCj4+IHNpemUgZm9y
IGF0aDlrIHdhcyAzTUIgaW4gdG90YWwsIG9yIDIuMk1CIGlmIG9ubHkgYSBzaW5nbGUgQUMgd2Fz
IHVzZWQKPj4gb24gdGhlIFdpRmkgbGluayAodGhhdCdzIDEyOCBwYWNrZXRzIGluIHRoZSBkcml2
ZXIgKyAxMDAwIGluIHRoZQo+PiBwZmlmb19mYXN0IHFkaXNjICogMjA3NCBieXRlcyBmb3IgdGhl
IHRydWVzaXplIG9mIGEgZnVsbC1zaXplIHBhY2tldCkuCj4+IFdoZXJlYXMgbm93IHRoZSBkZWZh
dWx0IGlzIDRNQiBmb3IgYSBub24tdmh0IGRldmljZS4gU28gaXQncyBub3QKPj4gYWN0dWFsbHkg
dGhhdCBiaWcgb2YgYSBkaWZmZXJlbmNlLCBhbmQgYXMgeW91J3ZlIGFscmVhZHkgZGlzY292ZXJl
ZCB0aGUKPj4gZGVmYXVsdHMgY2FuIGJlIGNoYW5nZWQuCj4+Cj4+IFdvdWxkIGl0IGJlIGhlbHBm
dWwgdG8gYWRkIHN1cHBvcnQgZm9yIHNldHRpbmcgdGhlIG1lbW9yeSBsaW1pdCBpbgo+PiBob3N0
YXBkICh0byBhdm9pZCBoYXZpbmcgdG8gcGF0Y2ggdGhlIGtlcm5lbCBkZWZhdWx0KT8KPgo+IGht
bS4gSSBndWVzcyBleHBvc2luZyB0aGF0IHZpYSBuZXRsaW5rLCBldGMgaXMgYSBnb29kIGlkZWEu
IE1lIEkganVzdAo+IHdyaXRlIHRoZSBzeXMva2VybmVsL2RlYnVnLyovKi9hcW0gZmlsZXMuCgpJ
dCBhbHJlYWR5IGlzLCBhbmQgeW91IGNhbiBzZXQgaXQgdGhyb3VnaCBpdyAoYXMgSSBwb2ludGVk
IG91dAp1cC10aHJlYWQpOgoKaXcgcGh5IHBoeTAgc2V0IHR4cSBtZW1vcnlfbGltaXQgMjA5NzE1
MgoKQnV0IGl0J3Mgbm90IHN1cHBvcnRlZCBpbiBob3N0YXBkLCBzbyB5b3UgaGF2ZSB0byBkbyB0
aGF0IG1hbnVhbGx5IGFzIGl0CmlzIG5vdy4KCj4gYnR3Ogo+Cj4gcW9zX21hcCBpbiBteSBtaW5k
LCBmb3IgQVBzIGF0IHRoaXMgcG9pbnQsIHNob3VsZCBkZWZhdWx0IHRvIHRoZSBiZXN0Cj4gZWZm
b3J0IHF1ZXVlIG9ubHkuIE5vdCBzdXJlIGhvdyB0byBzZXQgdGhhdCBpbiBvcGVud3J0IChJIGp1
c3QgcGF0Y2hlZAo+IGl0IG91dCBvZiB0aGUga2VybmVsKS4KClRoaW5rIGl0J3MgcG9zc2libGUg
dG8gc2V0IHRoaXMgaW4gaG9zdGFwZCBjb25maWc7IGhhdmVuJ3QgdHJpZWQgaXQuLi4KCi1Ub2tl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 797F63205DB
	for <lists+cake@lfdr.de>; Sat, 20 Feb 2021 16:09:57 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 04F2F3CB38;
	Sat, 20 Feb 2021 10:09:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613833796;
	bh=2PUW436dN5GMeVPOjSNCCWj4MJlEnRScgsAgexBJsUQ=;
	h=Cc:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GO+EiVtcwV/gYF5DJzmS21k2vHH1xon2f1SqXPD6v9sIzWjfybXQ8mU04NG3BK1MW
	 YTIHHk53LTATLBKLkD+jH1e8csL6Xj0zG3zqJzW4P2YnNUS4OzYr1NjyD/KKPdxx+p
	 uv8qW0eSKrRMitskgoRV2DpZI96IsNmVUs6gnmM7f63rEKME4+jImzEoiX0Efr8uQ9
	 0E+VxykI0XjFzOcUhMM5PZ3lyWrSG7gDFjX5yXwnzJw0sFvvCNojU7JLFDn8vJwNDB
	 dEJQ6vDrowIUqfher4ohlJlHQesXHa+VD2i2a5hvvKsJr0YqKAp9ot3VvlL8tOnh39
	 2SKmQvO54o4lg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail268c50.megamailservers.eu (mail1463c50.megamailservers.eu
 [91.136.14.63])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 191713B29E
 for <cake@lists.bufferbloat.net>; Sat, 20 Feb 2021 10:09:54 -0500 (EST)
X-Authenticated-User: sagermail@sager.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1613833793;
 bh=IQg49pgVttk0L0Vo5O5WUKDgaWak/HhrVdKwwgzB014=;
 h=Subject:Cc:References:From:Date:In-Reply-To:From;
 b=Vt8hjpZ4jwkghLoL6jnYjoiTwdwy5rF/AACtXfGgZfvRwF4JaCAr6NXeC7RXCtLUh
 oa78gInJ0AJbF50h4GFuQkr507PiLvG0LnqahBxP7+7DwBRBWm8wnig6t2g4YT/Aka
 W7wOvF2PMcOQNq0FTixK0t+AHKNkZUPYdRFdU7HA=
Feedback-ID: john@sager.me.u
Received: from mainserver.wc (97.83.2.81.in-addr.arpa [81.2.83.97])
 (authenticated bits=0)
 by mail268c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 11KF9qmZ005017
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <cake@lists.bufferbloat.net>; Sat, 20 Feb 2021 15:09:53 +0000
Received: from
 1.4.7.2.4.7.8.0.a.e.2.c.c.0.5.d.0.0.0.0.3.e.b.c.0.b.8.0.1.0.0.2.ip6.arpa
 ([2001:8b0:cbe3:0:d50c:c2ea:874:2741])
 by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>) id 1lDTtH-000kKJ-5b
 for cake@lists.bufferbloat.net; Sat, 20 Feb 2021 15:09:51 +0000
Cc: cake@lists.bufferbloat.net
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
 <CANmPAYGP0pM5ngV3AJGCumy=CKqgdvyNu6A23w4EXvA20yOs+w@mail.gmail.com>
 <406344b9-49af-54f0-15fd-a17c5f3b604c@sager.me.uk> <87im6nhs52.fsf@toke.dk>
From: John Sager <john@sager.me.uk>
Message-ID: <44401139-5a31-5129-f546-e598e202e6e3@sager.me.uk>
Date: Sat, 20 Feb 2021 15:09:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87im6nhs52.fsf@toke.dk>
Content-Language: en-GB
X-CTCH-RefID: str=0001.0A742F19.60312641.001A:SCFSTAT79219218, ss=1, re=-4.000,
 recu=0.000, reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: -4.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=c//Vvi1l c=1 sm=1 tr=0 a=dws6IJh5fU+Ftmrx3Eq8JA==:117
 a=dws6IJh5fU+Ftmrx3Eq8JA==:17 a=9cW_t1CCXrUA:10 a=xqWC_Br6kY4A:10
 a=IkcTkHD0fZMA:10 a=qa6Q16uM49sA:10 a=GQ3UrkdYAAAA:8
 a=4z6lSjSeexRwK0fjzOUA:9 a=QEXdDO2ut3YA:10 a=UrkXBYOGhgNlFfmH13Sb:22
X-Origin-Country: GB
Subject: Re: [Cake] Enforcing video quality question
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CgpPbiAyMC8wMi8yMDIxIDExOjUzLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4g
Sm9obiBTYWdlciA8am9obkBzYWdlci5tZS51az4gd3JpdGVzOgo+IAo+PiBZb3Ugd2lsbCBuZWVk
IHRvIHNwZWNpZnkgdGhlIGhvc3RzIGV4cGxpY2l0bHksIHVubGVzcyB5b3UgY2FuIGxpdmUgd2l0
aCB0aGVtCj4+IGFsbCBzaGFyaW5nIG9uZSBiYW5kd2lkdGggY2xhc3MuIEluIHRoYXQgY2FzZSBp
ZiB5b3UgaGF2ZSBtb3JlIHRoYW4gb25lCj4+IHVzaW5nIGJhbmR3aWR0aCB0aGV5IHdvdWxkIHNo
YXJlIHRoZSBiYW5kd2lkdGggaW4gdGhhdCBjbGFzcyBlcXVhbGx5LiBJCj4+IGFzc3VtZSBmcm9t
IHlvdXIgb3JpZ2luYWwgcG9zdCB0aGF0IHlvdSB3YW50IGVhY2ggaG9zdCB0byBiZSBsaW1pdGVk
IGluCj4+IGJhbmR3aWR0aCB0byBhIHNwZWNpZmljIHZhbHVlLCBidXQgdG8gZG8gdGhhdCB5b3Ug
bmVlZCBhIGNsYXNzIGZvciBlYWNoIGhvc3QKPj4gaW4gdGhlIGluZ3Jlc3MgSFRCLgo+IAo+IEp1
c3QgZG8gZW5vdWdoIGNsYXNzZXMgdGhhdCB5b3UgY2FuIGNvdmVyIHRoZSB3aG9sZSBJUCBzcGFj
ZT8gQXQgbGVhc3QKPiBmb3IgSVB2NCB0aGF0J3MgdHJpdmlhbDsgZm9yIElQdjYgeW91J2xsIHBy
b2JhYmx5IG5lZWQgdG8gaGFzaCBhbmQgaG9wZQo+IHRoYXQgdGhlcmUgYXJlIG5vdCB0b28gbWFu
eSBjb2xsaXNpb25zLi4uCgpUaGlua2luZyBhYm91dCB0aGF0LCBvbmUgY291bGQgc2V0IHVwLCBz
YXkgMTYgY2xhc3NlcyBmb3IgMTYgbWFya3MgYW5kIApnZW5lcmF0ZSB0aGUgbWFya3MgdXNpbmcg
dGhlIEhNQVJLIHRhcmdldC4gVGhhdCBjb3VsZCBoYXNoIG9uIHNyYyxkc3QgYW5kIAppbmNsdWRl
IHRoZSBwb3J0cyBpZiBuZWNlc3NhcnkuIFRoZW4gdGhlIGNvbm5lY3Rpb25zIHdvdWxkIGRpc3Ry
aWJ1dGUgYWNyb3NzIAp0aGUgSFRCIGNsYXNzZXMuIEhvd2V2ZXIgb25lIHZpZGVvIGNvbm5lY3Rp
b24gd291bGQgZ2VuZXJhdGUgbXVsdGlwbGUgZmxvd3MgCihETlMsIG1ldGFkYXRhLCBldGMgYmVm
b3JlICYgcGVyaGFwcyBkdXJpbmcgdGhlIHZpZGVvIGZsb3cpIHNvIHNpbXVsdGFuZW91cyAKdmlk
ZW8gc2Vzc2lvbnMgZnJvbSBzZXZlcmFsIHVzZXJzIHdvdWxkIGxpa2VseSBpbnRlcmZlcmUgd2l0
aCBlYWNoIG90aGVyLgoKTXkgY3VycmVudCBzb2x1dGlvbiBtYXJrcyBvbiBzb3VyY2UgSVAgYWRk
cmVzcyBvciBNQUMgYWRkcmVzcyBzbyBhbGwgdGhlIAp0cmFmZmljIGZvciBvbmUgaG9zdCBnb2Vz
IGludG8gb25lIGNsYXNzLgoKSm9obgoKPiAKPj4gV2hhdCB5b3UgcHJvYmFibHkgbmVlZCBpcyBh
IHNjaGVkdWxlciB0aGF0IGhhcyBhIGxpbWl0IHBlciBmbG93IHVwIHRvCj4+IGFuIG92ZXJhbGwg
Y2VpbGluZyBiZXlvbmQgd2hpY2ggaXQgc2hhcmVzIGVxdWFsbHkuIEknbSBub3QgYXdhcmUgdGhh
dAo+PiBhbnkgb2YgdGhlIHNjaGVkdWxlcnMgZG8gYW55dGhpbmcgbGlrZSB0aGF0Lgo+IAo+IElm
IHlvdSB1c2UgRlEtQ29EZWwgYXMgdGhlIGxlYWYgcWRpc2MgaW4gSFRCIHlvdSdsbCBnZXQgZmxv
dyBzY2hlZHVsaW5nCj4gdG8gZWFjaCBob3N0LiBUaGVyZSB3b24ndCBiZSBhIHBlci1mbG93ICps
aW1pdCosIGJ1dCB5b3UnbGwgZ2V0IG5pY2UKPiBzY2hlZHVsaW5nIG9mIGFsbCBmbG93cyBnb2lu
ZyB0b3dhcmRzIGVhY2ggaG9zdC4KPiAKPiAtVG9rZQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==

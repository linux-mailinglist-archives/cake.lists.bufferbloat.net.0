Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD00320183
	for <lists+cake@lfdr.de>; Sat, 20 Feb 2021 00:06:39 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A768A3CB38;
	Fri, 19 Feb 2021 18:06:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613775997;
	bh=6GSGdmUGORnosNjkYFBLR08iGoFVc5p/WdRtfzb2RME=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XVsS62tc+xEOIgKfy9w616FbrpNwNvCIcYvmSBKYvrttKH37UHtkEBn3FQ6ARH03I
	 vrh/YgFpCOH3yVKZc7gowqiJsKCFucNg38NmwsR2AWbOnV23KGNQMz3i8QDSDaZjzP
	 ubrYUFZzpYSYD5sOmityj+Z7yHBdb87k3ATvhMl7LGMt4ezKqMeRtxToySxSj1xCuI
	 xlw6AFXU8vOAgHZi1IY7QCXAgrrHKDdC+N4JdT8Hqp+G4let37heDo19B9C7MoeLYU
	 DtrzOmLsGDAHJTxJbpPa1Mc7h7pIj/HlYe3e55SBTch4uSH/Fd5naPw2/YGF617VK3
	 i7d/IPFRWMeRA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail118c50.megamailservers.eu (mail1477c50.megamailservers.eu
 [91.136.14.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0830C3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 18:06:35 -0500 (EST)
X-Authenticated-User: sagermail@sager.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1613775986;
 bh=LIKtrBtHB+UIwHLUzdM7TqYe3YKC+DSX9GtNY6ZZrhI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=skj03OgC+QckhcjDzmjb0kdLG2uD60UnCBwnq0/KwgLhr/BPHVgeC79zxXRZwFODy
 P1eJiVD+xDtc0q0gI3PpSEG6Iof6GpGto03fC5rT4MR6T4mu63dDfbTg15H2SIytlw
 zloniJDBw1Yc5pK4cY05s/nTfUknK9Ss0vnlchcE=
Feedback-ID: john@sager.me.u
Received: from mainserver.wc (97.83.2.81.in-addr.arpa [81.2.83.97])
 (authenticated bits=0)
 by mail118c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 11JN6Pem032239
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 19 Feb 2021 23:06:26 +0000
Received: from
 1.4.7.2.4.7.8.0.a.e.2.c.c.0.5.d.0.0.0.0.3.e.b.c.0.b.8.0.1.0.0.2.ip6.arpa
 ([2001:8b0:cbe3:0:d50c:c2ea:874:2741])
 by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>)
 id 1lDEqu-000hfd-IU; Fri, 19 Feb 2021 23:06:24 +0000
To: Peter Lepeska <bizzbyster@gmail.com>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
 <CANmPAYGP0pM5ngV3AJGCumy=CKqgdvyNu6A23w4EXvA20yOs+w@mail.gmail.com>
From: John Sager <john@sager.me.uk>
Message-ID: <406344b9-49af-54f0-15fd-a17c5f3b604c@sager.me.uk>
Date: Fri, 19 Feb 2021 23:06:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CANmPAYGP0pM5ngV3AJGCumy=CKqgdvyNu6A23w4EXvA20yOs+w@mail.gmail.com>
Content-Language: en-GB
X-CTCH-RefID: str=0001.0A742F25.60304472.002F:SCFSTAT79219218, ss=1, re=-4.000,
 recu=0.000, reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: -4.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=S8OnP7kP c=1 sm=1 tr=0 a=dws6IJh5fU+Ftmrx3Eq8JA==:117
 a=dws6IJh5fU+Ftmrx3Eq8JA==:17 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=qa6Q16uM49sA:10 a=GQ3UrkdYAAAA:8 a=pGLkceISAAAA:8 a=kurRqvosAAAA:8
 a=gTsPf4vavtkvjg4r40oA:9 a=QEXdDO2ut3YA:10 a=UrkXBYOGhgNlFfmH13Sb:22
 a=kbxRQ_lfPIoQnHsAj2-A:22
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

WW91IHdpbGwgbmVlZCB0byBzcGVjaWZ5IHRoZSBob3N0cyBleHBsaWNpdGx5LCB1bmxlc3MgeW91
IGNhbiBsaXZlIHdpdGggdGhlbSAKYWxsIHNoYXJpbmcgb25lIGJhbmR3aWR0aCBjbGFzcy4gSW4g
dGhhdCBjYXNlIGlmIHlvdSBoYXZlIG1vcmUgdGhhbiBvbmUgCnVzaW5nIGJhbmR3aWR0aCB0aGV5
IHdvdWxkIHNoYXJlIHRoZSBiYW5kd2lkdGggaW4gdGhhdCBjbGFzcyBlcXVhbGx5LiBJIAphc3N1
bWUgZnJvbSB5b3VyIG9yaWdpbmFsIHBvc3QgdGhhdCB5b3Ugd2FudCBlYWNoIGhvc3QgdG8gYmUg
bGltaXRlZCBpbiAKYmFuZHdpZHRoIHRvIGEgc3BlY2lmaWMgdmFsdWUsIGJ1dCB0byBkbyB0aGF0
IHlvdSBuZWVkIGEgY2xhc3MgZm9yIGVhY2ggaG9zdCAKaW4gdGhlIGluZ3Jlc3MgSFRCLiBXaGF0
IHlvdSBwcm9iYWJseSBuZWVkIGlzIGEgc2NoZWR1bGVyIHRoYXQgaGFzIGEgbGltaXQgCnBlciBm
bG93IHVwIHRvIGFuIG92ZXJhbGwgY2VpbGluZyBiZXlvbmQgd2hpY2ggaXQgc2hhcmVzIGVxdWFs
bHkuIEknbSBub3QgCmF3YXJlIHRoYXQgYW55IG9mIHRoZSBzY2hlZHVsZXJzIGRvIGFueXRoaW5n
IGxpa2UgdGhhdC4KCkpvaG4KCk9uIDE5LzAyLzIwMjEgMjA6MzMsIFBldGVyIExlcGVza2Egd3Jv
dGU6Cj4gIkknbGwgcHV0IHRvZ2V0aGVyIGEgdG95IGlwdGFibGVzIHJ1bGVzIGZpbGUgYW5kIGEg
dG95IHNjcmlwdCB3aXRoIHRoZQo+IG5lY2Vzc2FyeSB0YyBjb21tYW5kcy7CoCIKPiAKPiBXb3cg
LS0gdGhhdCB3b3VsZCBiZSByZWFsbHkgYXBwcmVjaWF0ZWQuIFF1ZXN0aW9uOiB3aWxsIHlvdSBu
ZWVkIHRvIAo+IGV4cGxpY2l0bHkgY2FsbCBvdXQgdGhlIGluc2lkZSBJUCBhZGRyZXNzIG9mIHRo
ZSBob3N0IGJlaW5nIHNoYXBlZD8gT3IsIGNhbiAKPiBpdCBiZSBzZXQgdG8gc2hhcGUgZWFjaCBp
bnNpZGUgaG9zdD8KPiAKPiBJJ20gbm90IHN1cmUgeW91IGNhbiBwb3N0IHRvIG1haWxpbmcgbGlz
dCBidXQgbWF5YmUgZ2l2ZSBpdCBhIHNob3QgKHNpbmNlIAo+IHRoZXJlIG1heSBiZSBnZW5lcmFs
IGludGVyZXN0KSBhbmQgaWYgaXQgZmFpbHMgZW1haWwgbWUgZGlyZWN0bHk/Cj4gCj4gVGhhbmtz
ISEhCj4gCj4gUGV0ZXIKPiAKPiBPbiBGcmksIEZlYiAxOSwgMjAyMSBhdCAyOjA0IFBNIEpvaG4g
U2FnZXIgPGpvaG5Ac2FnZXIubWUudWsgCj4gPG1haWx0bzpqb2huQHNhZ2VyLm1lLnVrPj4gd3Jv
dGU6Cj4gCj4gICAgIFllcy4gVGhlIG1hcmtzIGFyZSBzZXQgb24gZWdyZXNzIHNvIHlvdSBjYW4g
c2VsZWN0IG9uIGluc2lkZSBJUCBhZGRyZXNzLAo+ICAgICBwb3J0LCBwcm90b2NvbCAtIGluIGZh
Y3QgbWFueSBjaGFyYWN0ZXJpc3RpY3MgdGhhdCBpcHRhYmxlcyBydWxlcyBjYW4gdGVzdAo+ICAg
ICBmb3IuIEknbGwgcHV0IHRvZ2V0aGVyIGEgdG95IGlwdGFibGVzIHJ1bGVzIGZpbGUgYW5kIGEg
dG95IHNjcmlwdCB3aXRoIHRoZQo+ICAgICBuZWNlc3NhcnkgdGMgY29tbWFuZHMuIEl0J2xsIHRh
a2UgbWUgYSBmZXcgZGF5cyB0aG91Z2ggYXMgSSdtIGJ1c3kgd2l0aAo+ICAgICBvdGhlciBzdHVm
ZiBjdXJyZW50bHkuCj4gCj4gICAgIFBTIGRvZXMgdGhlIGNha2UgbGlzdCBhbGxvdyBhdHRhY2ht
ZW50cz8gSXQgd2lsbCBiZSBhIHNtYWxsIHppcCBmaWxlLgo+IAo+ICAgICBKb2huCj4gCj4gICAg
IE9uIDE5LzAyLzIwMjEgMTU6MDIsIFBldGVyIExlcGVza2Egd3JvdGU6Cj4gICAgICA+IEhpIEpv
aG4KPiAgICAgID4KPiAgICAgID4gRG9lcyB0aGlzwqByZXN1bHQgaW4gdGhlIGFiaWxpdHkgdG8g
c2V0IHBlciBpbnRlcm5hbCBob3N0IG1heCBpbmdyZXNzCj4gICAgICA+IGJhbmR3aWR0aD8gSWYg
c28sIGFueSBjaGFuY2UgeW91IGNhbiBzaGFyZSBhIHNuaXBwZXQgb2YgYSBzY3JpcHQ/IEkKPiAg
ICAgd2lsbCBiZQo+ICAgICAgPiB0cnlpbmcgdG8gcmVwcm9kdWNlIHlvdXIgc2V0dXAuCj4gICAg
ICA+Cj4gICAgICA+IFRoYW5rIHlvdSEKPiAgICAgID4KPiAgICAgID4gUGV0ZXIKPiAgICAgID4K
PiAgICAgID4gT24gRnJpLCBGZWIgMTksIDIwMjEgYXQgNzoxNiBBTSBKb2huIFNhZ2VyIDxqb2hu
QHNhZ2VyLm1lLnVrCj4gICAgIDxtYWlsdG86am9obkBzYWdlci5tZS51az4KPiAgICAgID4gPG1h
aWx0bzpqb2huQHNhZ2VyLm1lLnVrIDxtYWlsdG86am9obkBzYWdlci5tZS51az4+PiB3cm90ZToK
PiAgICAgID4KPiAgICAgID7CoCDCoCDCoFRoYXQncyBiYXNpY2FsbHkgd2hhdCBJIGRvLiBJIHNl
dCBtYXJrcyBvbiBvdXRnb2luZyB0cmFmZmljIGluCj4gICAgIHRoZSBtYW5nbGUKPiAgICAgID7C
oCDCoCDCoHRhYmxlIHdoaWNoIGFyZSBjb3BpZWQgdG8gY29ubm1hcmsgYmVmb3JlIGVncmVzcy4g
VGhlbiBvbiBpbmdyZXNzIHRoZQo+ICAgICAgPsKgIMKgIMKgY29ubm1hcmsgaXMgcmVzdG9yZWQg
dG8gdGhlIHBhY2tldCBhbmQgcHVudGVkIHRvIGlmYjAgdXNpbmcgJ2FjdGlvbgo+ICAgICAgPsKg
IMKgIMKgY29ubm1hcmsKPiAgICAgID7CoCDCoCDCoGFjdGlvbiBtaXJyZWQgZWdyZXNzIHJlZGly
ZWN0IGRldiAkSUZCJyBhcyBhbiBpbmdyZXNzIGZpbHRlciBvbiB0aGUKPiAgICAgID7CoCDCoCDC
oGluY29taW5nCj4gICAgICA+wqAgwqAgwqBpbnRlcmZhY2UgKHBwcDAgaW4gbXkgY2FzZSkuIFRo
ZW4gSSBoYXZlIEhUQiBjbGFzc2VzIG9uIGlmYjAKPiAgICAgd2hpY2ggc2V0IHJhdGUKPiAgICAg
ID7CoCDCoCDCoGxpbWl0cyBmb3IgZGlmZmVyZW50IHRyYWZmaWMgY2xhc3NlcyBpbmRpY2F0ZWQg
YnkgdGhlIG1hcmtzLiBJCj4gICAgIGhhdmUgb25seSA2Cj4gICAgICA+wqAgwqAgwqB0cmFmZmlj
IGNsYXNzZXMgKEkgYnVuZGxlIGFsbCB2aWRlbyBpbnRvIG9uZSBjbGFzcyksIGJ1dCBhcyBtYXJr
cwo+ICAgICBhcmUgMzIKPiAgICAgID7CoCDCoCDCoGJpdHMgd2lkZSB0aGVyZSBpcyBsb3RzIG9m
IHNjb3BlIGZvciBjbGFzc2VzIGZvciBpbmRpdmlkdWFsIElQCj4gICAgIGFkZHJlc3Nlcy4KPiAg
ICAgID4KPiAgICAgID7CoCDCoCDCoEpvaG4KPiAgICAgID4KPiAgICAgID7CoCDCoCDCoE9uIDE4
LzAyLzIwMjEgMTk6MjgsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB2aWEgQ2FrZSB3cm90ZToK
PiAgICAgID7CoCDCoCDCoCA+IFBldGVyIExlcGVza2EgPGJpenpieXN0ZXJAZ21haWwuY29tCj4g
ICAgIDxtYWlsdG86Yml6emJ5c3RlckBnbWFpbC5jb20+IDxtYWlsdG86Yml6emJ5c3RlckBnbWFp
bC5jb20KPiAgICAgPG1haWx0bzpiaXp6YnlzdGVyQGdtYWlsLmNvbT4+Pgo+ICAgICAgPsKgIMKg
IMKgd3JpdGVzOgo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7CoCDCoCDCoCA+PiBBIHVzZXIg
b24gdGhlIE9wZW5XcnQgZm9ydW0gc3VnZ2VzdGVkIGhhc2hsaW1pdCBydWxlcwo+ICAgICBzdXBw
b3J0ZWQgYnkKPiAgICAgID7CoCDCoCDCoCA+PiBpcHRhYmxlcy4gSG93IGRvZXMgdGhhdCBpZGVh
IHNvdW5kIHRvIHlvdT8KPiAgICAgID7CoCDCoCDCoCA+Cj4gICAgICA+wqAgwqAgwqAgPiBUaGF0
IHdpbGwgcmVzdWx0IGluIGEgY2xpZmYtZWRnZSBwb2xpY2VyIChpLmUuLCBhcyBzb29uIGFzIGEK
PiAgICAgZGV2aWNlIGdvZXMKPiAgICAgID7CoCDCoCDCoCA+IG92ZXIgaXRzIGxpbWl0cyBpdCB3
aWxsIHNlZSBldmVyeSBwYWNrZXQgZ2V0IGRyb3BwZWQpLiBUaGlzCj4gICAgIGRvZXNuJ3QKPiAg
ICAgID7CoCDCoCDCoCA+IGludGVyYWN0IHRvbyB3ZWxsIHdpdGggdGhlIGJ1cnN0aW5lc3Mgb2Yg
VENQLCBzbyB5b3UnbGwgbGlrZWx5IGdldAo+ICAgICAgPsKgIMKgIMKgID4gZXJyYXRpYyBiZWhh
dmlvdXIgb2YgdGhlIHRyYWZmaWMgaWYgeW91IGRvIHRoYXQuIERvaW5nIHRoZQo+ICAgICBzYW1l
IHRoaW5nCj4gICAgICA+wqAgwqAgwqAgPiB3aXRoIEhUQiBtZWFucyB0aGUgcm91dGVyIHdpbGwg
cXVldWUrc2hhcGUgZWFjaCBjbGFzcyAoYW5kCj4gICAgIHdpdGggRlEtQ29EZWwKPiAgICAgID7C
oCDCoCDCoCA+IG9uIHRoZSBsZWF2ZXMsIHlvdSdsbCBnZXQgYSBuaWNlIEFRTSBiZWhhdmlvdXIg
YXMgd2VsbCksIHNvCj4gICAgIHRoYXQgd2lsbCBiZQo+ICAgICAgPsKgIMKgIMKgID4gc21vb3Ro
ZXIgYW5kIGxlc3MgcHJvbmUgdG8gYmxvYXQgOikKPiAgICAgID7CoCDCoCDCoCA+Cj4gICAgICA+
wqAgwqAgwqAgPiAtVG9rZQo+ICAgICAgPsKgIMKgIMKgID4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiAgICAgID7CoCDCoCDCoCA+IENha2UgbWFpbGlu
ZyBsaXN0Cj4gICAgICA+wqAgwqAgwqAgPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCA8bWFp
bHRvOkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+ICAgICA8bWFpbHRvOkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0IDxtYWlsdG86Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Pgo+ICAg
ICAgPsKgIMKgIMKgID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo+ICAgICAgPsKgIMKgIMKgID4KPiAgICAgID7CoCDCoCDCoF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gICAgICA+wqAgwqAgwqBDYWtlIG1haWxpbmcg
bGlzdAo+ICAgICAgPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCA8bWFpbHRvOkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Pgo+ICAgICA8bWFpbHRvOkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0IDxtYWlsdG86Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Pgo+ICAgICAgPiBodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCj4gICAgICA+Cj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B109C3E10A0
	for <lists+cake@lfdr.de>; Thu,  5 Aug 2021 10:55:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3765B3CB41;
	Thu,  5 Aug 2021 04:55:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628153745;
	bh=VBFvK3iKF9rMeeHlcyCVxOL6Hd4vq0ME1mjIpackf4A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kzh8n2NcoP4n0Iuq6S2WTm32eYpv9moXLhWg9YzlQjNZm6OPMUNG2hq+fiqn5UIb3
	 eX5QG2EnzxpFya8uO9Wo4frBeokP/UxCUoIqQ8n7Yi6ABYJIU8CCL+l2mE3qtixMCJ
	 mHssSYLNoTiSyUrI5+4vOIPl+1HFG/Ju7AcniMpdIPT3PZDl0cGvezqd/HHyE4qlNT
	 rq/wlJflNL/vGQIZL6p/SSFca/YVJVlgehhSUDqusLIx9QTm4Ymhh/nNFR457oNgZF
	 J0sfNJfc+IPvfg/naXMWvbOW3AtKoKolbi/bTRzg6J+1HuJUrn6eQXPzTFfGmak++F
	 /fbUZg822qJHA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1CB6F3CB38
 for <cake@lists.bufferbloat.net>; Thu,  5 Aug 2021 04:55:43 -0400 (EDT)
Received: by mail-ej1-x634.google.com with SMTP id hs10so8418441ejc.0
 for <cake@lists.bufferbloat.net>; Thu, 05 Aug 2021 01:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=KaN4CwF6oSZdTgBH7HAi15oXYpnGQKpmASv6gYuTtmk=;
 b=V1sx+t0j03tQDepSHU9rmwqG7fBmNq10+MyrSKslSdkZJUHqYM8I10saTvTnuwhH72
 cLSTEv82khvxkhQfNpcxyfPjNoSiHLwAx3NxtqoXyWR2lFzmajT4q2jhmbHkiKoKLy7n
 yiLz2K0JzR4c17ImvL1jP1UpR8hj2k06O3Vj21D56+EOy2r6QLPdcEWVNRiRv54A2Jkr
 0R8KeNod+pDiDhhPyiWl2kDazYkm+aRhOY09A5i6rSbdPBmih3kE/vhmRhhQ7rH9+gMz
 pGM7qVpDNREFpULPjoyAP/REBV2t33aMlBTtZ2w1+dzYF0Gw1X/zRGyE9z4iTDuiEwAE
 3VVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=KaN4CwF6oSZdTgBH7HAi15oXYpnGQKpmASv6gYuTtmk=;
 b=Ptt2J3mwuzxCB8LWi4V7eRpivct8U+UIbU4DLUUvRROiazFCKjbdqD89h37Pm6LjVh
 dbE+23Nmr1P20/20hkBi1UgauQhUzjpAiRo9INYfVZoQH+TFakbqJq6fpo/mN5DJX0n9
 Nq6ex9sQ6BhhiI72+2Uc8QpFjLD2gJJDZufd0ihcztnpLuiUQZmTQa3saOubBEyNQMoV
 6OrbaVL4bJJmzHDKb+lAU5+8YgW7JiMx3VL8qlFHogIJCGESYFC5nD0Dg071VxVtVvVV
 tuyARg7fypAtU3x4WoIgPB83hzlFOpcc+06T8nvrFKEzYOk9I5wiyAJgv4tm1GoS2ydJ
 +hBQ==
X-Gm-Message-State: AOAM531RIIUbRomSd1cvDAbn2HSlGJbGElRI8Ua/tIvrszEqgHNGFFRa
 g458QHP+BeS9KyAyRPMwX9LlJA==
X-Google-Smtp-Source: ABdhPJyYAJqoPYHJ69jiMXjaAevKp8tN6xRJfqf9q1uHJloUI2vZuOCySuUYbkbkNW8Kkcc4Z1BG2Q==
X-Received: by 2002:a17:906:350c:: with SMTP id
 r12mr3770337eja.44.1628153741989; 
 Thu, 05 Aug 2021 01:55:41 -0700 (PDT)
Received: from sova.luk.heistp.net (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id mf11sm1503188ejb.27.2021.08.05.01.55.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 01:55:41 -0700 (PDT)
Message-ID: <fb6cb1e5015b0e28ebf13869eb329acc0a2b79e2.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Date: Thu, 05 Aug 2021 10:55:39 +0200
In-Reply-To: <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
 <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
 <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
User-Agent: Evolution 3.40.3 
MIME-Version: 1.0
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QXMgZm9yIHRyaXBsZS1pc29sYXRlLCBJIGFkZGVkIGEgdGVzdCBKb24gc3VnZ2VzdGVkOgoKIkkg
d291bGQgcmVjb21tZW5kIGEgVyBjb25maWd1cmF0aW9uIG9mIGZsb3dzCgpvbmUgb2YgdGhlIHRo
cmVlIGhvc3RzIHNlbmRzIHRvIG9yIGZyb20gYm90aCBvZiB0aGUgdHdvIGhvc3RzLCB3aGlsZQp0
aGUgb3RoZXIgdHdvIHNlbmQgdG8gb3IgZnJvbSBvbmx5IG9uZSBlYWNoCgp0aGlzIHNob3VsZCBy
ZXN1bHQgaW4gdGhlIHR3byBob3N0cyBnZXR0aW5nIGVxdWFsIHRocm91Z2hwdXQgZWFjaCwgYW5k
CmVxdWFsIHRocm91Z2hwdXQgaW4gZWFjaCBvZiB0aGVpciB0d28gZmxvd3MiCgpUaGlzIGlzIHRo
ZSBsYXN0IHRlc3QgaW4gdGhlIG91dHB1dCwgYW5kIEkgdGhpbmsgdGhlIGJlaGF2aW9yIGxvb2tz
CmNvcnJlY3QgZm9yIGJvdGggdGhlIHVucGF0Y2hlZCBhbmQgcGF0Y2hlZCB2ZXJzaW9uczoKCmh0
dHBzOi8vd3d3LmhlaXN0cC5uZXQvZG93bmxvYWRzL2Nha2UtaG9zdGZhaXIvY2FrZS1ob3N0ZmFp
ci11bnBhdGNoZWQudHh0CgpodHRwczovL3d3dy5oZWlzdHAubmV0L2Rvd25sb2Fkcy9jYWtlLWhv
c3RmYWlyL2Nha2UtaG9zdGZhaXItcGF0Y2hlZC50eHQKClRoYW5rcyBndXlzLCBhbmQgdGhhdCwg
SSBiZWxpZXZlLCBpcyBmaW5hbGx5IGl0IGZvciBub3cuLi4gOikKClBldGUKCk9uIFRodSwgMjAy
MS0wOC0wNSBhdCAwMDo1MiArMDIwMCwgUGV0ZSBIZWlzdCB3cm90ZToKPiBJIGVuZGVkIHVwIHRl
c3RpbmcgZWFjaCBvZiB0aGUga2V5d29yZHMsIHdpdGggdHdvIHNyYyBJUHMgdGhlbiB0d28gZHN0
Cj4gSVBzLCBhbmQgSSB0aGluayBldmVyeXRoaW5nIG1ha2VzIHNlbnNlOgo+IAo+IGh0dHBzOi8v
d3d3LmhlaXN0cC5uZXQvZG93bmxvYWRzL2Nha2UtaG9zdGZhaXIvY2FrZS1ob3N0ZmFpci1wYXRj
aGVkLnR4dAo+IAo+IEknbSBvbmx5IG5vdCBzdXJlIGlmIHdlIGNhbiB0ZWxsIGZyb20gdGhpcyB0
ZXN0IGlmIHRyaXBsZS1pc29sYXRlIGlzCj4gZG9pbmcgd2hhdCBpdCBzaG91bGQuLi4KPiAKPiBQ
ZXRlCj4gCj4gT24gV2VkLCAyMDIxLTA4LTA0IGF0IDIyOjQ5ICswMjAwLCBQZXRlIEhlaXN0IHdy
b3RlOgo+ID4gR3JlYXQsIHRoYXQgc2VlbXMgdG8gZml4IGl0LiA6KSBGb3Igc2FuaXR5LCBJIGNv
bmZpcm1lZCB0aGF0IEkgY2FuCj4gPiBhcHBseS91bmFwcGx5IHRoZSBwYXRjaCB0byBmaXgvYnJl
YWsgaXQsIHNvIGFsbCBzZWVtcyB3ZWxsLgo+ID4gCj4gPiBJcyB0aGVyZSBhbnl0aGluZyB0aGF0
IHlvdSdkIHdhbnQgdG8gbWFrZSBzdXJlIHN0aWxsIHdvcmtzIGFmdGVyIHRoZQo+ID4gcGF0Y2g/
IEkgZG9uJ3QgaGF2ZSBhbnkgb2ZmaWNpYWwgcmVncmVzc2lvbiB0ZXN0cyB0byBydW4sIGJ1dCB3
aXRoCj4gPiB0aGlzCj4gPiBzZXR1cCByZWFkeSBJIHNob3VsZCBiZSBhYmxlIHRvIHRlc3Qgc29t
ZXRoaW5nIGVhc2lseSBpZiBuZWVkZWQuLi4KPiA+IAo+ID4gUGV0ZQo+ID4gCj4gPiBPbiBXZWQs
IDIwMjEtMDgtMDQgYXQgMTM6MTQgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90
ZToKPiA+ID4gUGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cj4gPiA+IAo+ID4g
PiA+IE9uZSBtb3JlIHRpcCwgcmV2ZXJ0aW5nIHRoaXMgY29tbWl0IHNlZW1zIHRvIGZpeCBpdDoK
PiA+ID4gPiAKPiA+ID4gPiBodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvY29tbWl0
L2IwYzE5ZWQ2MDg4YWI0MWRkMmE3MjdiNjA1OTRiNzI5N2MxNWQ2Y2UKPiA+ID4gCj4gPiA+IEFo
LCBJIHRoaW5rIEkgc2VlIHdoYXQgdGhlIHByb2JsZW0gaXM7IGNvdWxkIHlvdSBwbGVhc2UgdHJ5
IHRoZQo+ID4gPiBwYXRjaAo+ID4gPiBiZWxvdz8KPiA+ID4gCj4gPiA+IC1Ub2tlCj4gPiA+IAo+
ID4gPiBkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2NoX2Nh
a2UuYwo+ID4gPiBpbmRleCA5NTE1NDI4NDNjYWIuLmE4M2M0ZDQzMjZkYSAxMDA2NDQKPiA+ID4g
LS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiA+ID4gKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtl
LmMKPiA+ID4gQEAgLTcyMCw3ICs3MjAsNyBAQCBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3Qg
Y2FrZV90aW5fZGF0YSAqcSwKPiA+ID4gY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiA+ID4g
wqBza2lwX2hhc2g6Cj4gPiA+IMKgwqDCoMKgwqDCoMKgIGlmIChmbG93X292ZXJyaWRlKQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmxvd19oYXNoID0gZmxvd19vdmVycmlk
ZSAtIDE7Cj4gPiA+IC3CoMKgwqDCoMKgwqAgZWxzZSBpZiAodXNlX3NrYmhhc2gpCj4gPiA+ICvC
oMKgwqDCoMKgwqAgZWxzZSBpZiAodXNlX3NrYmhhc2ggJiYgZmxvd19tb2RlICYgQ0FLRV9GTE9X
X0ZMT1dTKQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmxvd19oYXNoID0g
c2tiLT5oYXNoOwo+ID4gPiDCoMKgwqDCoMKgwqDCoCBpZiAoaG9zdF9vdmVycmlkZSkgewo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHN0aG9zdF9oYXNoID0gaG9zdF9vdmVy
cmlkZSAtIDE7Cj4gPiAKPiA+IAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

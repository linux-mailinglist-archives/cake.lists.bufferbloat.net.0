Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id DC283AD02D
	for <lists+cake@lfdr.de>; Sun,  8 Sep 2019 19:27:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 84D033CB45;
	Sun,  8 Sep 2019 13:27:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1567963628;
	bh=ErbMENH7f1K9//HVNxhhcdZ5/Gb0HWo9Pq+gjSEmWus=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nwhIn1Xttzw3RvGl8z5KI2jNdQp3a9ZUm6WGDA2+aSD51dlXSwgF+CCc0DN+Kh7cc
	 EUhlTcbtgYkAdA2Rl8619rXAYjlSg5yKgetoA/eJ2A61ETYLuD94jdu2zOOJQtujIY
	 gR9V/pwuypcy0W6AFrT9yNGdkzeieX9rWKN7egAB1d4OOGKsWhyIlZLwcsiVNdwO8d
	 DaGf3Wi4jNClYKXpij65p/oWQWk5X5hFumQMCmGHenV+0sDYy2XWtxe/65rC42n1p6
	 yjlZP/GNwvqZy76z25qcVnecO5+GricISvkFfP5vxszxgrA5Tt881A5FsZPhlNMhB/
	 EcYtZu7n63myw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC6663B29E
 for <cake@lists.bufferbloat.net>; Sun,  8 Sep 2019 13:27:06 -0400 (EDT)
Received: by mail-lj1-x241.google.com with SMTP id a22so10492917ljd.0
 for <cake@lists.bufferbloat.net>; Sun, 08 Sep 2019 10:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=V4FJpXaqXSNZ1dWk6HKSSJHRHFLNJa3J4JWK7ZGV9gA=;
 b=EwEg81h7OaVrqCUFP4stKqqDcnRVG+r6JlUlg9sXkYHaq/QF9vwkAx4lNeY5xl86lB
 wRss0oJfjn31oxoEZS3aszzGWDF+l4VsGD4mh1NpE1APiBRtygUUDPE9/RpBq7GS16rc
 aTK9FquK7TSkvgxtIpHCV+Wht8J3smX9gwmwd61OWs7cyXsPyqXwTCZiSEIKm8+9jpXy
 zcLi/Bc6hXdTwucEJeHC61jxh1TS1Ex3JSTmRNsn+BvvGETbsMt1cggcwEvzGEWSSpmt
 C/GX7IvtacxWWBCqp5k9+v6XN18huMFnepVtUgACXymSl89NleurSwDy7q3nbyErjrRW
 pP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=V4FJpXaqXSNZ1dWk6HKSSJHRHFLNJa3J4JWK7ZGV9gA=;
 b=Oh6uj5OJy/TgZHLo40DbXWZ6i76sCwHshkZTPRy2+mFlTcz9wZ7nq5ahOirwudhI3C
 giCyFZTXmL2yfDylPFaAdU895cZ3W6ZjDBA/iSCvtChnyfxP3FG6s7zWfjg85iamPDRy
 hcLA+OyshCJESqQ241rdsuKD/Cn9iILK//K95On3Z1/xW23LELSQNn5TWDrIktvqryMP
 fWCnS1ok2TREsD8CENeTtARI1FTrXbZQbuY19mDMcLIKoKOVgNemrhBImdwsnugVgMQ/
 Gba7UGIJ7K1B+m2H2QVHmObsdyoSkYfIPFpmyIwaJxKVa75rtfQJlmXh7d0fu2UGE8sB
 pThg==
X-Gm-Message-State: APjAAAXJprwm+SrqUH0VMzFD833mkqa8h94fJ3AbKxq9eH8c51jGlJ+O
 1Tx86Vnz0CS1wr9kdJjOY8I=
X-Google-Smtp-Source: APXvYqwQah9J8EhcAD7vrPWqsyT9hLZbMNEOKVTGntfcj26BqFGffapTIfeduV/BZT1Z2hREjJGMeQ==
X-Received: by 2002:a2e:9b43:: with SMTP id o3mr1929240ljj.214.1567963625796; 
 Sun, 08 Sep 2019 10:27:05 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-193-nat-p.elisa-mobile.fi.
 [83.245.237.193])
 by smtp.gmail.com with ESMTPSA id t6sm2086779lji.3.2019.09.08.10.27.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Sep 2019 10:27:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
Date: Sun, 8 Sep 2019 20:27:03 +0300
Message-Id: <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Fighting bloat in the face of uncertinty
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Pj4gWW91IGNvdWxkIGFsc28gc2V0IGl0IGJhY2sgdG8gJ2ludGVybmV0JyBhbmQgcHJvZ3Jlc3Np
dmVseSByZWR1Y2UgdGhlIAo+PiBiYW5kd2lkdGggcGFyYW1ldGVyLCBtYWtpbmcgdGhlIENha2Ug
c2hhcGVyIGludG8gdGhlIGFjdHVhbCBib3R0bGVuZWNrLiAKPj4gVGhpcyBpcyB0aGUgY29ycmVj
dCBmaXggZm9yIHRoZSBwcm9ibGVtLCBhbmQgeW91IHNob3VsZCBub3RpY2UgYW4gCj4+IGluc3Rh
bnQgaW1wcm92ZW1lbnQgYXMgc29vbiBhcyB0aGUgYmFuZHdpZHRoIHBhcmFtZXRlciBpcyBjb3Jy
ZWN0Lgo+IAo+IEhhbmQgdHVuaW5nIHRoaXMgb25lIGxpbmsgaXMgbm90IGEgcHJvYmxlbS4gSSdt
IHNlYXJjaGluZyBmb3IgYSBzZXQgb2Ygc2V0dGluZ3MgdGhhdCB3aWxsIHByb3ZpZGUgZ2VuZXJh
bGx5IGdvb2QgcGVyZm9ybWFuY2UgYWNyb3NzIGEgd2lkZSByYW5nZSBvZiBkZXZpY2VzLCBsaW5r
cywgYW5kIHNpdHVhdGlvbnMuIAo+IAo+IEZyb20gd2hhdCB5b3UndmUgaW5kaWNhdGVkIHNvIGZh
ciB0aGVyZSdzIG5vdGhpbmcgYXMgZWZmZWN0aXZlIGFzIGEgY29ycmVjdCBiYW5kd2lkdGggZXN0
aW1hdGlvbiBpZiB3ZSBjb25zaWRlciB0aGUgYW50ZW5uYSAobGluaykgYSBibGFjayBib3guIEV4
cGVjdGluZyB0aGUgdXNlciB0byBpbnB1dCBleHBlY3RlZCB0aHJvdWdocHV0IGZvciBldmVyeSBs
aW5rIGFuZCB0aGVuIG1hbmFnaW5nIHRoYXQgaW5mb3JtYXRpb24gaXMgZXNzZW50aWFsbHkgYSBu
b24tc3RhcnRlci4gCj4gCj4gUmFkaW8gdHVuaW5nIHByb3ZpZGVzIHNvbWUgaW1wcm92ZW1lbnQs
IGJ1dCB1bnRpbCB1YmlxdWl0aSBzdGFydHMgc2hpcHBpbmcgd2l0aCBDb2RlbCBvbiBub24tcm91
dGVyIGRldmljZXMgSSBkb24ndCB0aGluayB0aGVyZSdzIGEgZ29vZCBzb2x1dGlvbiBoZXJlLiAK
PiAKPiBBbnkgd2F5IHRvIGhhdmUgdGhlIHJlY2VpdmluZyBkZXZpY2UgZGV0ZWN0IGJsb2F0IGFu
ZCBpbnNlcnQgYW4gRUNOPwoKVGhhdCdzIHdoYXQgdGhlIHFkaXNjIGl0c2VsZiBpcyBzdXBwb3Nl
ZCB0byBkby4KCj4gSSBkb24ndCB0aGluayB0aGUgdGltZSBzcGVudCBpbiB0aGUgaW50ZXJtZWRp
YXRlIGRldmljZSBpcyBkZXRlY3RhYmxlIGF0IHRoZSBrZXJuZWwgbGV2ZWwgYnV0IHdlIGtlZXAg
dHJhY2sgb2YgbGF0ZW5jeSBmb3Igcm91dGluZyBkZWNpc2lvbnMgYW5kIGNvdWxkIGRldGVjdCBi
bG9hdCB3aXRoIHNvbWUgYWNjdXJhY3ksIHRoZSBwcm9ibGVtIGlzIGhvdyB0byByZXNwb25kLgoK
QXMgbG9uZyBhcyB5b3UgY2FuIGRldGVjdCB3aGljaCBsaW5rIHRoZSBibG9hdCBpcyBvbiAoYW5k
IGluIHdoaWNoIGRpcmVjdGlvbiksIHlvdSBjYW4gcmVzcG9uZCBieSByZWR1Y2luZyB0aGUgYmFu
ZHdpZHRoIHBhcmFtZXRlciBvbiB0aGF0IGhhbGYtbGluayBieSBhIHNtYWxsIGFtb3VudC4gIFNp
bmNlIHlvdSBoYXZlIGEgY29vcGVyYXRpbmcgbmV0d29yaywgbWFpbnRhaW5pbmcgYSB0aW1lIHN0
YW5kYXJkIG9uIGVhY2ggbm9kZSBzdWZmaWNpZW50IHRvIG9ic2VydmUgb25lLXdheSBkZWxheXMg
c2VlbXMgZmVhc2libGUsIGFzIGlzIGVzdGFibGlzaGluZyBhIG5vcm1hbCBiYXNlbGluZSBsYXRl
bmN5IGZvciBlYWNoIGxpbmsuCgpUaGUgY2hhcmFjdGVyaXN0aWNzIG9mIHRoZSBiYW5kd2lkdGgg
cGFyYW1ldGVyIGJlaW5nIHRvbyBoaWdoIGFyZSBlYXN5IHRvIG9ic2VydmUuICBOb3Qgb25seSB3
aWxsIHRoZSBvbmUtd2F5IGRlbGF5IGdvIHVwLCBidXQgdGhlIHJlY2VpdmVkIHRocm91Z2hwdXQg
aW4gdGhlIHNhbWUgZGlyZWN0aW9uIGF0IHRoZSBzYW1lIHRpbWUgd2lsbCBiZSBsb3dlciB0aGFu
IGNvbmZpZ3VyZWQuICBZb3UgbWlnaHQgdXNlIHRoZSBsYXR0ZXIgYXMgYSBoaW50IGFzIHRvIGhv
dyBmYXIgeW91IG5lZWQgdG8gcmVkdWNlIHRoZSBzaGFwZWQgYmFuZHdpZHRoLgoKRGVjaWRpbmcg
d2hlbiBhbmQgYnkgaG93IG11Y2ggdG8gKmluY3JlYXNlKiBiYW5kd2lkdGgsIHdoaWNoIGlzIHBy
ZXN1bWFibHkgZGVzaXJhYmxlIHdoZW4gbGluayBjb25kaXRpb25zIGltcHJvdmUsIGlzIGEgbW9y
ZSBkaWZmaWN1bHQgcHJvYmxlbSB3aGVuIHRoZSBsaW5rIGhhcmR3YXJlIGRvZXNuJ3QgY29vcGVy
YXRlIGJ5IGluZm9ybWluZyB5b3Ugb2YgaXRzIHN0YXR1cy4gIChUaGlzIGlzIHNvbWV0aGluZyB5
b3UgY291bGQgcmVhc29uYWJseSBhc2sgVWJpcXVpdGkgdG8gYWRkcmVzcy4pCgpJIHdvdWxkIGFz
c3VtZSB0aGF0IGxpbmsgY2hhcmFjdGVyaXN0aWNzIHdpbGwgY2hhbmdlIHNsb3dseSwgYW5kIHJ1
biBhbiBvY2Nhc2lvbmFsIGV4cGxpY2l0IGJhbmR3aWR0aCBwcm9iZSB0byBzZWUgaWYgc3BhcmUg
YmFuZHdpZHRoIGlzIGF2YWlsYWJsZS4gIElmIHRoYXQgcHJvYmUgY29tZXMgdGhyb3VnaCB3aXRo
b3V0IGV4aGliaXRpbmcgYmxvYXQsICphbmQqIHRoZSBsaW5rIGlzIG90aGVyd2lzZSBsb2FkZWQg
dG8gY2FwYWNpdHksIHRoZW4gaW5jcmVhc2UgdGhlIHNoYXBlciBieSBhbiBhbW91bnQgd2l0aGlu
IHRoZSBwcm9iZSdzIGNhcGFjaXR5IG9mIG1lYXN1cmVtZW50IC0gYW5kIHNjaGVkdWxlIGEgcmVw
ZWF0LgoKQSBzdWl0YWJsZSBwcm9iZSBtaWdodCBiZSAxMDB4IDE1MDBiIHBhY2tldHMgcGFjZWQg
b3V0IG92ZXIgYSBzZWNvbmQsIGJ5cGFzc2luZyB0aGUgc2hhcGVyLiAgVGhpcyB3aWxsIG9jY3Vw
eSBqdXN0IG92ZXIgMU1icHMgb2YgYmFuZHdpZHRoLCBhbmQgY2FuIGJlIGV4cGVjdGVkIHRvIGlu
ZHVjZSAxMG1zIG9mIGRlbGF5IGlmIGluamVjdGVkIGludG8gYSBzYXR1cmF0ZWQgMTAwTWJwcyBs
aW5rLiAgT2JzZXJ2ZSB0aGUgZGVsYXkgZXhwZXJpZW5jZWQgYnkgZWFjaCBwYWNrZXQgKmFuZCog
dGhlIHF1YW50aXR5IG9mIG90aGVyIHRyYWZmaWMgdGhhdCBhcHBlYXJzIGJldHdlZW4gdGhlbS4g
IE9ubHkgaWYgYm90aCBhcmUgZmF2b3VyYWJsZSBjYW4geW91IHNhZmVseSBvcGVuIHRoZSBzaGFw
ZXIsIGJ5IDFNYnBzLgoKU2luY2Ugd2lyZWxlc3MgbGlua3MgY2FuIGJlIGV4cGVjdGVkIHRvIGNo
YW5nZSB0aGVpciBjYXBhY2l0eSBvdmVyIHRpbWUsIGR1ZSB0byBlZy4gd2VhdGhlciBhbmQgdHJl
ZSBncm93dGgsIHRoaXMgc2VlbXMgdG8gYmUgbW9yZSBnZW5lcmFsbHkgdXNlZnVsIHRoYW4gYSBz
dGF0aWMgZ3Vlc3MuICBZb3UgY291bGQgZGVwbG95IGEgbmV3IGxpbmsgd2l0aCBhIGNvbnNlcnZh
dGl2ZSAiZ3Vlc3MiIG9mIHNheSAxME1icHMsIGFuZCBqdXN0IHByb2JlIGZyb20gdGhlcmUuCgog
LSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

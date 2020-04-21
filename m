Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 148191B2F72
	for <lists+cake@lfdr.de>; Tue, 21 Apr 2020 20:45:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D09843CB42;
	Tue, 21 Apr 2020 14:45:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587494706;
	bh=XNWqSMgnLVTZ0BPR7hm3EGPaOKcf9rttZMPtOfwFae0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XgBu3H6ODlAXnNsO6sgz6rxAKh2cAxICnHcfVjXF9eaMipA3BJmKtC+3/FHJcfR8t
	 6kLo8riwckYYpjZKYJ/G2narPLl+AnHyVSm0r8zz4T5fbIFIGusb1oocitHP3XZMet
	 qd+5ecs+Db7SqjE1bWPxA1/7P7b8ZwHloe0aSjnnZmfVW7vdvZSLLbf1YbBWODaBNb
	 rYxYvNCOxpf4O0/ZTvkcOyR4bBxZRICmHRHm1gYp2KCDm85R0HhQawx8M1O1U68PfN
	 AEp/AE3Zb70CNMnwKnxe2EEMP9aA79CNp+c54Y0T1i902YTrmX8jnNB3syfGYneMUV
	 +Hwbm5PyVS3IQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 97CB93B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 14:45:05 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id e9so8527906iok.9
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 11:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qaVr5qV5XK+eNleFJqyGv5nLtnd1470HUzuGruMBuyg=;
 b=XWT3GouBQDqksBryuwcJJ6tbnNWOOIEuh6g/4rynO+2RAPNVUNPXTSKosyK1vuFaap
 zSljFtIhbvHRBev0DySM6cDqht6jIQXQfrBPKG8TI6bLKrDyYkHynWyS/otTyosaqhGM
 jWZe+YQoicjf06QPpoyAUcfEZ8GXE9Iiq+7CZbGMYvQD7pOAt5Fy58V+ThBx/pM6t/l8
 uCHlI59RvSfz+zXnry1KyY5XGDwB5zMvr0ULvDHufGsLB4LEUvDfWJ/LBJ7PvMqvsdK6
 y/h3VEuDN6Co6HaWk5jLduyTSQl9hHPpaXKZioJswQi6fMXOJcorcKKc89kXA35KvSl0
 iehQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qaVr5qV5XK+eNleFJqyGv5nLtnd1470HUzuGruMBuyg=;
 b=EOhq3oGufUwjxhQ9bGNBAPsYv9U7nmABs150a72zOOD9xepHGTaxvH5u3hdWQGaHn7
 DPIqB5A0Ke1qNF+B71x9rrBeGdaZZCRSPjzP7FB0JuJMSLwf4Tka5FiehTZjJsNQ7pGT
 Gxm6VRSGBMMc/mTofd/rfmv9oSqq7Zr7EI/B1sidWHOgJv20jHNKRVdezbcEZEeFTUIZ
 xdfTuSqBdj4KrUyKbUTnyWAtFSTTYXkMu3in7h0xE4YUenoGY+iV+5zCaTRe+Wtna1gy
 ltE5sgQn8PmWQXfXCQSYUXu/ogZNSNsdwAIfkRV25F2O0WUieX+pXmrb9UlH4tRPZ9wy
 AXgQ==
X-Gm-Message-State: AGi0PubDS/EGNb5klMGW0K+y/Kdgwebol4CjhNgPzCFR+x1sTC6ZBubI
 P4j2658usbKVTPQBiRLn8ZXUs8Gji28itJQmWG9Y9PFcoJE=
X-Google-Smtp-Source: APiQypIt7lS1c5IyDEyujpZiHnnToDgoWxmKgws5sxUeyXE2ZYC2bJMhw6SkMpEYjsxUagbdQEY9ystHv2Xae7ghXMo=
X-Received: by 2002:a6b:b8d6:: with SMTP id
 i205mr22960880iof.123.1587494704923; 
 Tue, 21 Apr 2020 11:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
In-Reply-To: <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 21 Apr 2020 11:44:52 -0700
Message-ID: <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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

SXQgaGFzIGFsd2F5cyBiZWVuIG15IGRyZWFtLCB0aGF0IGF0IGxlYXN0IGZvciBvdXRib3VuZCwg
dGhlcmUgd291bGQKYmUgc3VmZmljaWVudCBiYWNrcHJlc3N1cmUgZnJvbSB0aGUgZHJpdmVyCnRv
IG5vdCBoYXZlIHRvIHNoYXBlIGF0IGFsbCwgb3IgbW9uaXRvciB0aGUgbGluay4gV2UgaGF2ZSB0
aGF0IG5vdyBpbgpCUUwgYW5kIEFRTC4gZnJlZS5mcidzIGRzbCBkcml2ZXIgImRvZXMgdGhlIHJp
Z2h0IHRoaW5nIiAtIG5vIG90aGVyCmRzbCBkcml2ZXIgZG9lcy4gTm9yIHVzYiBuZXR3b3JrIGRl
dmljZXMuIEkgaG9wZSBtb3JlIGZvbGsgcm9sbCB1cAp0aGVpciBzbGVldmVzIGFuZCB0ZXN0IHRo
ZSBhdGgxMGsgc29tZSwgaXQncyBsb29raW5nIGxvdmVseSBmcm9tIGhlcmUuCgpodHRwczovL2Zv
cnVtLm9wZW53cnQub3JnL3QvYXFsLWFuZC10aGUtYXRoMTBrLWlzLWxvdmVseS8KCm5leHQgdXAg
ZWl0aGVyIHRoZSBuZXcgbWVkaWF0ZWsgY2hpcCBvciBpbnRlbC4uCgpPbiBUdWUsIEFwciAyMSwg
MjAyMCBhdCAxMTo0MCBBTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4g
d3JvdGU6Cj4KPiA+IE9uIDIxIEFwciwgMjAyMCwgYXQgOToyMiBwbSwgSnVzdGluIEtpbHBhdHJp
Y2sgPGp1c3RpbkBhbHRoZWEubmV0PiB3cm90ZToKPiA+Cj4gPiBJIGhhdmUgYSBmcmVxdWVudGx5
IGNoYW5naW5nIGxpbmsgSSdtIHVzaW5nIGF1dG9tYXRlZCB0b29scyB0byBtb25pdG9yIGFuZCB0
dW5lIHVzaW5nIENha2UuIEN1cnJlbnRseSBJJ20gb25seSB0dW5pbmcgYmFuZHdpZHRoIHBhcmFt
ZXRlciB1c2luZyBsYXRlbmN5IGFuZCBwYWNrZXQgbG9zcyBkYXRhLgo+ID4KPiA+IE15IHJlYWRp
bmcgb2YgdGhlIGNvZGVsIFJGQyBzZWVtcyB0byBzYXkgdGhhdCB0cnlpbmcgdG8gdHVuZSB0aGUg
J2ludGVydmFsJyB2YWx1ZSB1c2luZyBrbm93biBwYXRoIGFuZCBsaW5rIGxhdGVuY3kgd29uJ3Qg
cHJvdmlkZSBhbnkgYWR2YW50YWdlcyBvdmVyIGp1c3QgdHVuaW5nIHRoZSBiYW5kd2lkdGggcGFy
YW1ldGVyLgo+ID4KPiA+IE9idmlvdXNseSBjb2RlbCBpcyBqdXN0IG9uZSBwYXJ0IG9mIHRoZSBD
YWtlIHNldHVwIGFuZCBJJ20gd29uZGVyaW5nIGlmIHRoZXJlIGFyZSBhbnkgYWR2YW50YWdlcyBJ
J20gbWlzc2luZyBieSBub3QgcHJvdmlkaW5nIHRoaXMgZXh0cmEgaW5wdXQgdXNpbmcgZGF0YSBJ
IGFscmVhZHkgZ2F0aGVyLgo+Cj4gVGhlIGRlZmF1bHQgbGF0ZW5jeSBwYXJhbWV0ZXJzIGFyZSB0
dW5lZCB3ZWxsIGZvciBnZW5lcmFsIEludGVybmV0IHBhdGhzLiAgVGhlIG1lZGlhbiBwYXRoIGxl
bmd0aCBvbiB0aGUgcHVibGljIEludGVybmV0IGlzIGFib3V0IDgwbXMsIGZvciB3aGljaCB0aGUg
ZGVmYXVsdCBpbnRlcnZhbCBvZiAxMDBtcyBhbmQgdGFyZ2V0IG9mIDVtcyB3b3JrcyB3ZWxsLiAg
Q29kZWwgaXMgYWxzbyBkZXNpZ25lZCB0byBhY2NvbW1vZGF0ZSBhIHNpZ25pZmljYW50IGRldmlh
dGlvbiBmcm9tIHRoZSBleHBlY3RlZCBwYXRoIGxlbmd0aCB3aXRob3V0IHRvbyBtdWNoIGRpZmZp
Y3VsdHkuCj4KPiBJIHRoaW5rIGl0J3Mgb25seSB3b3J0aCB0cnlpbmcgdG8gYWRqdXN0IHRoaXMg
aWYgeW91ciB0eXBpY2FsIHBhdGggaXMgc3Vic3RhbnRpYWxseSBkaWZmZXJlbnQgZnJvbSB0aGF0
IG5vcm0uICBJZiBhbGwgeW91ciB0cmFmZmljIGdvZXMgb3ZlciBhIHNhdGVsbGl0ZSBsaW5rLCBm
b3IgZXhhbXBsZSwgdGhlIGRlZmF1bHQgcGFyYW1ldGVycyBtaWdodCBiZSB0b28gdGlnaHQuICBJ
ZiB0aGUgdmFzdCBtYWpvcml0eSBvZiBpdCBnb2VzIHRvIGEgbG9jYWwgQ0ROLCB5b3UgY291bGQg
dHJ5IHRoZSAibWV0cm8iIGtleXdvcmQgdG8gdGlnaHRlbiB0aGluZ3MgdXAgYSBiaXQuICBPdGhl
cndpc2UsIHlvdSdsbCBiZSBmaW5lLgo+Cj4gQWxzbywgbW9zdCBwcm90b2NvbHMgYXJlIGFjdHVh
bGx5IG5vdCB2ZXJ5IHNlbnNpdGl2ZSB0byBob3cgdGlnaHQgdGhlIEFRTSBpcyBzZXQgaW4gdGhl
IGZpcnN0IHBsYWNlLiAgRWl0aGVyIHRoZXkgZG9uJ3QgcmVhbGx5IGNhcmUgYWJvdXQgbGF0ZW5j
eSBhdCBhbGwgKGVnLiBidWxrIGRvd25sb2Fkcykgb3IgdGhleSBhcmUgbGF0ZW5jeS1zZW5zaXRp
dmUgYnV0IGFsc28gc3BhcnNlIChlZy4gRE5TLCBOVFAsIFZvSVApLiAgU28gdGhleSBhcmUgbW9y
ZSBpbnRlcmVzdGVkIGluIGJlaW5nIGlzb2xhdGVkIGZyb20gdGhlIGluZmx1ZW5jZSBvZiBvdGhl
ciBmbG93cywgd2hpY2ggQ2FrZSBkb2VzIHByZXR0eSB3ZWxsIHJlZ2FyZGxlc3Mgb2YgdGhlIEFR
TSBzZXR0aW5ncy4KPgo+IEl0J3MgKmNvbnNpZGVyYWJseSogbW9yZSBpbXBvcnRhbnQgdG8gZW5z
dXJlIHRoYXQgeW91ciBzaGFwZXIgaXMgY29uZmlndXJlZCBjb3JyZWN0bHkuICBUaGF0IG1lYW5z
IHNldHRpbmcgbm90IG9ubHkgdGhlIGJhbmR3aWR0aCBwYXJhbWV0ZXIsIGJ1dCB0aGUgb3Zlcmhl
YWQgcGFyYW1ldGVycyBhcyB3ZWxsLiAgQSBiYWQgc2hhcGVyIHNldHRpbmcgY291bGQgcmVzdWx0
IGluIHNvbWUgb3IgYWxsIG9mIHlvdXIgdHJhZmZpYyBub3Qgc2VlaW5nIENha2UgYXMgdGhlIGVm
ZmVjdGl2ZSBib3R0bGVuZWNrLCBhbmQgdGh1cyBub3QgcmVjZWl2aW5nIGl0cyBjYXJlLiAgVGhp
cyBjYW4gYmUgYW4gb3JkZXJzLW9mLW1hZ25pdHVkZSBlZmZlY3QsIGRlcGVuZGluZyBvbiBqdXN0
IGhvdyBibG9hdGVkIHRoZSB1bmRlcmx5aW5nIGhhcmR3YXJlIGlzLgo+Cj4gIC0gSm9uYXRoYW4g
TW9ydG9uCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKTWFrZSBNdXNpYywg
Tm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJy
ZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4F74688DA
	for <lists+cake@lfdr.de>; Sun,  5 Dec 2021 02:20:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 72E343CB38;
	Sat,  4 Dec 2021 20:20:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638667229;
	bh=gSHjGQ7A30RNRGL9qrqV8zNjfkxdaUfIHwojyWxpfyg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hc267QaEiU9lCr4v+QeWaqDMQEP8DRG0SQxi1CXhLhzG/7fMpYbHmLS27KonV6IA2
	 3FVHrngTzkpW2xaBRKoibjK4opg2JWAnDz3FV0Xj6C0N+skJEJYkteDSo5q3Evcfnu
	 U/2AYKLwp7EiLv07CuugFrjgCR59ANNjhVejI46Jg2PwqFVx8+jQfbqilTEDa0Yoih
	 YfvFncTHgm1iibTgWdVqapJ2us/NsYteMQ8Jm1KiXYEhIdw2UcoXi69utbRkwVVBgz
	 kx+FjN5RgEfLKHZbonWZO7tN2lQBRMYgnIf2WYlxACwOWTyKHQhlvA2Wqme0x9JlhY
	 odlHeX2FinITg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 627FA3B29E
 for <cake@lists.bufferbloat.net>; Sat,  4 Dec 2021 20:20:28 -0500 (EST)
Received: by mail-io1-xd2a.google.com with SMTP id x10so8615756ioj.9
 for <cake@lists.bufferbloat.net>; Sat, 04 Dec 2021 17:20:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LMoLLNqWwmPVWhbzjmq2kFbJfLXGvbN4jokydpODWD0=;
 b=cWWETczI11wjlYtAKRv9ig2C5Qe60U8BDrlbvSWCm/YTqY9rBLdnEtfbeppfS+B/Ha
 WOwpUX6KxKNs0CFwh29tG4QnVcC+zDBn0qVg4I3TdFKnKPr+tTuWKJqD9wqPgyWy9l1W
 zbTcJ1+grD1HbMp08jLJnVIjEd5L4oTFdyfBWbsirAuZ2DCLmFV3gAT+MGmDu/ly+Igi
 VX2KErmYThq9d03kR6pPV4Ya9vC1i/qf7unc1RDkYCE6jREfVE/keiDPW3PhhdnWD94n
 LcCZSvlGcPT3rBynbVBGlNwMP4XRC6AFbj+AwTrMcT8OWrn06/epWFG0/yJxL5wOYr7V
 vsWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LMoLLNqWwmPVWhbzjmq2kFbJfLXGvbN4jokydpODWD0=;
 b=pqSdHFPUIsRS/3tREfHCZEpiemvbBlGpvjAadmeo2GsuN5xBoBGyoBzQrhhR26RCxg
 1baJ0bFO3wwmLvXjJa0ibJjV4LKY/tfIHIYKGN4a8ZkQN3z+O2LpvULDRis3yQGR1esG
 KpuLbIS2DXB27mpoILOOz7bI6pnBWHZwwk6edpTUUrhT2g2GL5OpiQp1gbkj8PMSnf2y
 AlYTrquCyAlSsSXloSXYIDnuaiGRdAqKQ8rbnN9wugfTwVWnh87KwsTV1CJSlWIQRN+s
 ZwzgjYpMjOjgvbcbQK3X1MeOTpkqcAef2FQVvzUB54ie2eWqvuYfvml1+EIOQfBW9ji4
 bUtg==
X-Gm-Message-State: AOAM530nScfSPJC5KFMBOFGwhKjFDSl2rah1T67SWVgc/1Kp1Mpvcaea
 8vYYBp6Ys+BvCwR3dlNBjpLasBECNaxpab34gnc=
X-Google-Smtp-Source: ABdhPJyT1u6zyeqmT2OgrWWAU2YLtG/R1DyacjSzqMsJwgXVRyD1wlh0PCjUUCAYuxLpRIudSY7kmZGffpylxcfWNMg=
X-Received: by 2002:a05:6602:2e81:: with SMTP id
 m1mr25313245iow.55.1638667227607; 
 Sat, 04 Dec 2021 17:20:27 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com>
 <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
 <CAA93jw6GeQxF59zX=Co1t_28CxLhi6M_Rn=TBYK8sZtRV1enQQ@mail.gmail.com>
 <1638656999.711523536@apps.rackspace.com>
In-Reply-To: <1638656999.711523536@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 4 Dec 2021 17:20:15 -0800
Message-ID: <CAA93jw4OXg7e_EcEOnKZ4Vh7FyVoJiWXEcfgy17ZKMS7rohj2A@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] Understanding the Achieved Rate Multiplication Effect in
 FlowQueue-based AQM Bottleneck
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
Cc: jonathan.kua@deakin.edu.au, Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU2F0LCBEZWMgNCwgMjAyMSBhdCAyOjMwIFBNIERhdmlkIFAuIFJlZWQgPGRwcmVlZEBkZWVw
cGx1bS5jb20+IHdyb3RlOgo+Cj4gSSBqdXN0IHdhdGNoZWQgaXQuIEhpcyBhc3N1bXB0aW9uIHRo
YXQgImNhcnJpZXIgbmV0d29ya3MgY2FuJ3Qgc29sdmUgdGhlIHByb2JsZW0gYmVjYXVzZSB0aGV5
IGNhbid0IGNvbnRyb2wgdGhlIGhvc3RzIiBpcyBKVVNUIFdST05HIQoKU3RlcCAxOiBVbmRlcnN0
YW5kIHRoYXQgbWljcm9idXJzdHMgZXhpc3Q6IFdpbgpTdGVwIDI6IEZpbmQgYSB3YXkgdG8gbWVh
c3VyZSB0aGVtIGF0IDEwMEdiaXQgc2NhbGUgdXNpbmcgdGhlIHRvZmlubwpzd2l0Y2ggYW5kIGEg
dmlhYmxlIGRhdGEgc3RydWN0dXJlOiBCaWcgd2luClN0ZXAgMzogRmluZCBhIHdheSB0byB1c2Ug
dGhhdCBtZWFzdXJlbWVudCBpbiB0aGF0IHN3aXRjaCB0byAiZG8Kc29tZXRoaW5nIjo6IG9rLCB5
b3Ugb2JqZWN0IHRvIHRoaXMKU3RlcCA0OiBQdWJsaXNoIGF0IGNvbmV4dDogTm9ybWFsCgpBbHRl
cm5hdGUgc3RlcCAzOiBCZWluZyBhYmxlIHRvIGxldmVyYWdlIHRoaXMgdG9vbCB0byBnYWluIGRh
dGEgYWJvdXQKZTJlIGJlaGF2aW9yIGF0IHRoZXNlIHNjYWxlcyBhbmQgbWFrZSBiZXR0ZXIgYXBw
bGljYXRpb25zCmlzIGEgaHVnZSB3aW4uIEZyb20gbG9va2luZyBhdCB0aGUgYmVmb3JlIHNhd3Rv
b3RoIGluIHdoYXQgdGhleSBkaWQsCnRoZXkgaGFkIGEgYnJpY2sgd2FsbCBlY24gY29uZmlndXJh
dGlvbiBnb2luZyBhZ2FpbnN0IFJGQzMxNjggZmxvd3MsCmFuZCBvcmlnaW5hbGx5IG1hcmtlZCBh
bGwgcGFja2V0cyBvdmVyIHRoZSB0aHJlc2hvbGQsIGxldmVyYWdpbmcKUkZDMzE2OCdzIG5vbi1y
ZXNwb25zZSBmb3IgbW9yZSB0aGFuIG9uZSBwYWNrZXQgbWFya2VkIHBlciBSVFQuCgpUaGUgZ3Jh
cGggbWlzc2luZyBmb3IgbWUgKGFuZCBwZXJoYXBzIEkgc2hvdWxkIGxvb2sgYWdhaW4pIHdhcyB0
aGUKZWZmZWN0IG9mIHRoYXQsIHZzIG5vdCBtYXJraW5nIGF0IGFsbCwgb3IgbWFya2luZyBtb3Jl
IHNtYXJ0bHksIGFzCnRoZXkgZGlkLgoKVGhlIHNlY29uZCBxdWVzdGlvbiBmb3IgbWUgaGFzIGFs
d2F5cyBiZWVuIHRvIHdoYXQgZXh0ZW50IEVDTiBvZiBhbnkKZm9ybSBpcyBiZWluZyB1c2VkIGlu
IHRoZSBkYXRhY2VudGVyIHRvZGF5LCBpbiBSRkMzMTY4IHNlbWktY29tcGxpYW50CndheXMgbGlr
ZSB0aGlzLiBJdCBpcywKZXNzZW50aWFsbHksIGhhbGYgb24gYnkgZGVmYXVsdC4uLi4KCgo+Cj4K
PiBUaGUgSW50ZXJuZXQgc29sdXRpb24gaXMgdG8gcmVxdWlyZSB0aGUgZmxvd3MnIHNvdXJjZSBo
b3N0cyB0byByZWd1bGF0ZSB0aGVpciB0cmFuc21pc3Npb24gYmFzZWQgb24gZHluYW1pYyBmZWVk
YmFjay4KCkZyb20gd2hlcmU/IHRjcCB0aW1lc3RhbXBzIGFyZW4ndCBncmFudWxhciBlbm91Z2gu
Cgo+Cj4KPgo+IEFuZCB0aGlzIGlnbm9yYW5jZSBvbiBoaXMgcGFydCBpcyBjbGVhcmx5IGhpcyBh
ZHZpc29ycycgZmF1bHQuCj4KPgo+Cj4gVGhlIHBhdHRlcm4gaGVyZSBpczoKPgo+Cj4KPiBJIG1h
a2UgYXNzdW1wdGlvbiB0aGF0IHJ1bGVzIG91dCBiZXR0ZXIgc29sdXRpb25zLgo+Cj4KPgo+IEkg
dGhlbiBpbnZlbnQgc29tZSBjb21wbGljYXRlZCBrbHVkZ2UgImluc2lkZSB0aGUgbmV0d29yayIg
YW5kIGNsYWltIGl0IHNvbHZlcyB0aGUgcHJvYmxlbS4KPgo+Cj4KPiBUaGVuIEkgZGVtYW5kIHRo
YXQgbmV0d29ya3MgcHV0IHRoaXMga2x1ZGdlIGludG8gdGhlIG5ldHdvcmsuCj4KPgo+Cj4gSW4g
b3RoZXIgd29yZHMsIGhlIHRha2VzIGFuIGVuZC10by1lbmQgcHJvYmxlbSAocmVndWxhdGluZyBz
b3VyY2UgcmF0ZXMgdG8gYWNoaXZlIGxvdyBpbnRlcm5hbCBxdWV1ZSBkZWxheSksIGFuZCBpbnN0
ZWFkIG9mIGltcGxlbWVudGluZyBhIHNvbHV0aW9uIGF0IHRoZSBlbmRzLCBoZSBhZGRzIG11Y2gg
bW9yZSBjb21wbGV4aXR5IGluc2lkZSB0aGUgbmV0d29yay4KPgo+Cj4KPiBWaW9sYXRpbmcgdGhl
IHdob2xlIGVuZC10by1lbmQgYXJndW1lbnQuCj4KPgo+Cj4gT3IsIHNpbXBsaWZ5aW5nIHRoZSBw
b2ludDogIndlIGhhdmUgc21hcnRzIGluIHRoZSByb3V0ZXJzLCB0aGF0IHdlIGFyZW4ndCB1c2lu
Zywgc28gbGV0J3MgaW52ZW50IHNvbWV0aGluZyB0byB1c2UgdGhlbSwgZXZlbiB0aG91Z2ggdGhl
cmUgYXJlIGJldHRlciBzb2x1dGlvbnMuIgo+Cj4KPgo+IFl1Y2shCj4KPgo+Cj4gVGhpcyBpcyBo
b3cgd2UgZW5kZWQgdXAgd2l0aCBDSVNDIGNvbXB1dGVycywgd2l0aCBvcGVyYXRpbmcgc3lzdGVt
cyB0aGF0IHNob3ZlIGh1Z2UgYW1vdW50cyBvZiBmdW5jdGlvbiBpbnRvIHByb3RlY3RlZCBtb2Rl
IHdpdGggaGVhdnkgdXNlIG9mIHNoYXJlZCBnbG9iYWwgdmFyaWFibGVzIHByb3RlY3RlZCBieSBj
b21wbGljYXRlZCBsb2Nrcy4KPgo+Cj4KPiBPSywgdGhpcyBjcmVhdGVzIHRoZSBuZWVkIGZvciBj
b21wbGljYXRlZCBQaEQgdGhlc2VzIHdoZXJlIHRoZSBjb29sbmVzcyBpcyBob3cgY29tcGxpY2F0
ZWQgdGhlIGNvZGUgd2FzIHRvIGdldCB3b3JraW5nLgo+Cj4KPgo+Cj4KPgo+Cj4gT24gU2F0dXJk
YXksIERlY2VtYmVyIDQsIDIwMjEgMTo0NHBtLCAiRGF2ZSBUYWh0IiA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gc2FpZDoKPgo+ID4gSXQgd2FzIHRoZSBjb25xdWVzdCB0b29sIHRoZXkgcmVmZXJlbmNl
ZCB0aGF0IHJlYWxseSBjYXVnaHQgbXkgZXllCj4gPgo+ID4gaHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj1RM0ZGekIwU1VqYwo+ID4KPiA+ICJDb25RdWVzdDogRmluZS1HcmFpbmVkIFF1
ZXVlIE1lYXN1cmVtZW50IGluIHRoZSBEYXRhIFBsYW5lIgo+ID4KPiA+IE9uIEZyaSwgRGVjIDMs
IDIwMjEgYXQgNDowOSBQTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4K
PiA+IHdyb3RlOgo+ID4gPgo+ID4gPiA+IE9uIDQgRGVjLCAyMDIxLCBhdCAxMjoyNyBhbSwgRGF2
ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+ID4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPgo+
ID4gaHR0cHM6Ly9qb25hdGhhbmt1YS5naXRodWIuaW8vcHJlcHJpbnRzL2prdWEtaWVlZWxjbjIw
MjFfdW5kZXJzdGFuZGluZ19hcl9wcmVwcmludC0yMGp1bDIwMjEucGRmCj4gPiA+ID4KPiA+ID4g
PiBJIHdvdWxkIGxvdmUgaXQgaWYgc29tZWhvdyB0aGUgbWVhc3VyZWQgZWZmZWN0cyBvZiBjaHVu
a2xldHMgYWdhaW5zdAo+ID4gY2FrZSdzIHBlci1ob3N0L3BlciBmbG93IGZxIHdhcyBleGFtaW5l
ZCBvbmUgZGF5Lgo+ID4gPgo+ID4gPiBJIGhhdmVuJ3QgYWN0dWFsbHkgbWVhc3VyZWQgaXQsIGJ1
dCBiYXNlZCBvbiB3aGF0IHRoZSBhYm92ZSBwYXBlciBzYXlzLCBJIGNhbgo+ID4gbWFrZSBzb21l
IGZpcm0gcHJlZGljdGlvbnM6Cj4gPiA+Cj4gPiA+IDE6IFdoZW4gY29tcGV0aW5nIGFnYWluc3Qg
dHJhZmZpYyB0byB0aGUgc2FtZSBsb2NhbCBob3N0LCB0aGUgcGVyZm9ybWFuY2UKPiA+IGVmZmVj
dHMgdGhleSBkZXNjcmliZSB3aWxsIGJlIHByZXNlbnQuCj4gPiA+Cj4gPiA+IDI6IFdoZW4gY29t
cGV0aW5nIGFnYWluc3QgdHJhZmZpYyB0byBhIGRpZmZlcmVudCBsb2NhbC1uZXR3b3JrIGhvc3Qs
IHRoZQo+ID4gcGVyZm9ybWFuY2UgZWZmZWN0cyB0aGV5IGRlc2NyaWJlIHdpbGwgYmUgYXR0ZW51
YXRlZCBvciBldmVuIGVudGlyZWx5IGFic2VudC4KPiA+ID4KPiA+ID4gMzogVGhleSBub3RlZCBv
bmUgb3IgdHdvIGNhc2VzIG9mIG9ic2VydmFibGUgZWZmZWN0cyBvZiBoYXNoIGNvbGxpc2lvbnMg
aW4KPiA+IHRoZWlyIHRlc3RzIHdpdGggRlEtQ29kZWwuIFRoZXNlIHdpbGwgYmUgZ3JlYXRseSBy
ZWR1Y2VkIGluIHByZXZhbGVuY2Ugd2l0aCBDYWtlLAo+ID4gZHVlIHRvIHRoZSBzZXQtYXNzb2Np
YXRpdmUgaGFzaCBmdW5jdGlvbiB3aGljaCBzcGVjaWZpY2FsbHkgYWRkcmVzc2VzIHRoYXQKPiA+
IHBoZW5vbWVub24uCj4gPiA+Cj4gPiA+IC0gSm9uYXRoYW4gTW9ydG9uCj4gPgo+ID4KPiA+Cj4g
PiAtLQo+ID4gSSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVzOgo+
ID4gaHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3
LmljZWkub3JnCj4gPgo+ID4gRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBDYWtlIG1haWxp
bmcgbGlzdAo+ID4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiA+IGh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKPiA+CgoKCi0tIApJIHRyaWVkIHRvIGJ1aWxk
IGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZl
Lm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRl
a0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

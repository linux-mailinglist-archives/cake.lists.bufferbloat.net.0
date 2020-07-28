Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A21F2231018
	for <lists+cake@lfdr.de>; Tue, 28 Jul 2020 18:51:43 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 44FD23CB38;
	Tue, 28 Jul 2020 12:51:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595955102;
	bh=U82u6jIfx/mFsTy3rvFMxbjyuFISIypU2/1/I1Ohv7A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HrZaRTjWUjLWKgDmFnCpYUiOwHZBjvi8zi6m5AnbeDDq3wB1JUWB7h3bf8e/tVh+U
	 ir59d4lcv0yRsm1dLnDamf0s9w7imu1vN/dh+6pget+lNx8nT1A+JFofsJqD7JqFZg
	 xYFZjMV5t6gXcI4LZIj2zcpOSK2ZusdEMNdI2CbU5NOa+oweluf2ZHshyBRiGoQ9wf
	 ACUxM8ErlDifhDrOgPbQy1qWmWVcgn5RS5NRlBk1Y6KkIyIPRRLZeS+DdY5Kh2Mktv
	 Vi9W5MjH8zIEJIeqjp6GaJLwlsh2oeiVO81ukX76t6fLnFwSc4hO4qzo+iUeVceqiN
	 CULwIofr2GuJA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7403E3B29E
 for <cake@lists.bufferbloat.net>; Tue, 28 Jul 2020 12:51:41 -0400 (EDT)
Received: by mail-qt1-x842.google.com with SMTP id t23so12223632qto.3
 for <cake@lists.bufferbloat.net>; Tue, 28 Jul 2020 09:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Y0Y+u2z+kb8KHFZNrs8XT/N2KFqI7aP1D7d9Kl+zFRA=;
 b=Wri42rN0VRtENmMWmVCYjR+EKaqMYtZwDIpw01mk3+GRbTVn76a1PRQ7iK31wb0Byt
 vFk1KCj3cTIYFBap5FSrBEOZySm+i9BT5n1zDpGl9rQ0ukA0wksWHWqAu3ckFMt/kvNj
 DVZx4MMriTcNpb4oiU8uIglq2F3jPYnbv7IjHiHIRBK50mfXPkO9EW/XoNn4J0qCxGdf
 QyTsbctIr6ygST6dghAF/gSWih7M8BTDh1sIYuLmB6kfw/746QnPMab8Ng3FAc47/liv
 5rq3G6vFsfpHkbwh8ZullHvgeU/fNVjEhoxUA4O/gMfLWEm6msSJbMAPMheLpnBvmAP2
 155w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Y0Y+u2z+kb8KHFZNrs8XT/N2KFqI7aP1D7d9Kl+zFRA=;
 b=ej3wlXz4Z83OLwOX+T9S8/2lPrW4JirOpHwV+fpRctRYZXL3kYReZ5QGVlMAnYdenH
 gEPmmEGsAbiZiO/Zt3SXHu/xztq8pi+G5HxET+gYyie6idv9uhlpSmb3mrcvnSpYDqSQ
 tHo/jJnGYxjKlsrZ7yRVVDAlyAiPpiytzQ6dnjggSPNLBIga4LRfPE4+qgApQoYm3FNh
 g+GYUn/xpR7VWW4BZx66u17q/boT0gSB5NDN1PXDfkhKnmPIFY3OGmI7Z/qC0ZwtPO5o
 KQBFENpYgK32AvJDqFpINuKh0dOzv5rFW/QhWrrLGMpAKBdqXxpIxArPTTD3uwfizxtt
 Rq6Q==
X-Gm-Message-State: AOAM532zaw6c671/TBrXf8ek8PNUiZOGiD8XMPlzDNyrHTOXCKbdiHVR
 a+H+IT2+eIxVj5t2HAVMBvcutNjqiDg6NEGfyag=
X-Google-Smtp-Source: ABdhPJxRRuuXswuQMYEIhrbVfzPNmIkj313jK8zrDIbA2hLqlfvEkx851Vs6wdMVpdXHlLR0XK/9GeohztPj9nD934w=
X-Received: by 2002:ac8:4e44:: with SMTP id e4mr7264808qtw.371.1595955100875; 
 Tue, 28 Jul 2020 09:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAD9MmSc54e2NaVnqAVSw8Nk2MbdFr0OFXtT4RC2TUKuDcg0_PA@mail.gmail.com>
 <6B18F76E-A466-42A7-ACF7-52D5E6CD3572@gmail.com>
In-Reply-To: <6B18F76E-A466-42A7-ACF7-52D5E6CD3572@gmail.com>
From: Jim Geo <dim.geo@gmail.com>
Date: Tue, 28 Jul 2020 19:51:27 +0300
Message-ID: <CAD9MmSeeEYgcaQ6K1Y=mNrJ2yGDCNiL=X-Z21ZOg5SJLgSiwvQ@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Cake, low speed ADSL & fwmark
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

Pgo+ID4gT24gMjggSnVsLCAyMDIwLCBhdCAxMjo0MSBhbSwgSmltIEdlbyA8ZGltLmdlb0BnbWFp
bC5jb20+IHdyb3RlOgo+ID4KPiA+IFRoYW5rIHlvdSBmb3IgYWxsIHRoZSBlZmZvcnRzIHlvdSBo
YXZlIGRvbmUgdG8gbWFrZSBpbnRlcm5ldCB1c2FibGUuCj4gPgo+ID4gSSBjdXJyZW50bHkgdXNl
IGh0YiAmIGZxX2NvZGVsIGluIG15IGxvdyBzcGVlZCBBRFNMIDZNYnBzIGRvd25saW5rLzEgTWJw
cyB1cGxpbmsuIEkgdXNlIGZ3bWFyayB0byBjb250cm9sIGJvdGggdXBsaW5rIGFuZCBkb3dubGlu
ayB3aXRoIGdvb2QgcmVzdWx0cyBpbiB0ZXJtcyBvZiBiYW5kd2lkdGggYWxsb2NhdGlvbi4gU3Ry
ZWFtaW5nIHZpZGVvIGlzIGNob3BwaW5nIGJ1bGsgdHJhZmZpYyBzdWNjZXNzZnVsbHkuCj4gPgo+
ID4gSXMgc2V0dGluZyB1cCBjYWtlIHdvcnRoIHRoZSBlZmZvcnQgYXQgc3VjaCBsb3cgc3BlZWRz
PyBXb3VsZCBpdCByZWR1Y2UgbGF0ZW5jeT8KPgo+IENha2UgaGFzIGEgYmV0dGVyLXF1YWxpdHkg
c2hhcGVyIHRoYW4gSFRCIGRvZXMsIGFuZCBhIG1vcmUgc29waGlzdGljYXRlZCBmbG93LWlzb2xh
dGlvbiBzY2hlbWUgdGhhbiBmcV9jb2RlbCBkb2VzLiAgVGhlc2UgdGVuZCB0byBtYXR0ZXIgbW9y
ZSBhdCBsb3cgc3BlZWRzLCBub3QgbGVzcy4gIEl0J3MgYWxzbyBnZW5lcmFsbHkgZWFzaWVyIHRv
IHNldCB1cCB0aGFuIGEgY29tcG91bmQgcWRpc2Mgc2NoZW1lLgo+Cj4gPiBSZWdhcmRpbmcgZndt
YXJrIGNhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBtb3JlIG9uIHRoZSBjYWxjdWxhdGlvbnMgcGVy
Zm9ybWVkPyBNYW4gcGFnZSBpcyBub3QgdGhhdCBoZWxwZnVsLgo+ID4KPiA+IE15IHVuZGVyc3Rh
bmRpbmcgaXMgdGhpczoKPiA+Cj4gPiBJIHVzZSAxLDIsMyw0IGFzIG1hcmtzIG9mIHRyYWZmaWMu
Cj4gPiBJZiBJIHNldCB0aGUgbWFzayB0byAweGZmZmZmZlsuLl0gdGhlIG1hcmtzIHdpbGwgcmVt
YWluIHVuY2hhbmdlZC4gVGhlbiByaWdodCBzaGlmdGluZyB3aWxsIG9jY3VyIGZvciB0aGUgdW5z
ZXQgYml0cywgc28gdGhleSB3aWxsIGxhbmQgb24gdGlucwo+ID4gMSwxLDMsMQo+ID4KPiA+IENh
biB5b3UgcGxlYXNlIGNvcnJlY3QgbWU/IElmIGxvZ2ljYWwgYW5kIHBlcmZvcm1lZCBiZXR3ZWVu
IG1hc2sgYW5kIG1hcmsgdmFsdWU/Cj4KPiBTaW5jZSB0aGVyZSdzIG9ubHkgYSBmZXcgInRpbnMi
IGF0IGEgdGltZSB1c2VkIGluIENha2UsIGFuZCB0aGUgZndtYXJrIGlzIGEgZGlyZWN0IG1hcHBp
bmcgaW50byB0aG9zZSB0aW5zLCBhIG5hcnJvdyBtYXNrIGlzIHByb2JhYmx5IHNhZmVyIHRvIHVz
ZSB0aGFuIGEgd2lkZSBvbmUuICBUaGUgcmVhc29uIGZvciB0aGUgbWFzayBpcyBzbyB5b3UgY2Fu
IGVuY29kZSBzZXZlcmFsIHZhbHVlcyBpbnRvIGRpZmZlcmVudCBwYXJ0cyBvZiB0aGUgbWFyayB2
YWx1ZS4gIFRoZSBzaGlmdCBpcyBzaW1wbHkgdG8gbW92ZSB0aGUgZmllbGQgY292ZXJlZCBieSB0
aGUgbWFzayB0byB0aGUgbG93IGVuZCBvZiB0aGUgd29yZCwgc28gdGhhdCBpdCBpcyB1c2VmdWwg
dG8gQ2FrZS4KPgo+IEZvciB5b3VyIHVzZSBjYXNlLCBhIG1hc2sgb2YgMHhGIHdpbGwgYmUgY29t
cGxldGVseSBzdWZmaWNpZW50LiAgSXQgd291bGQgYWxsb3cgeW91IHRvIHNwZWNpZnkgbWFyayB2
YWx1ZXMgb2YgMS0xNSwgdG8gbWFwIGRpcmVjdGx5IGluIHRoZSBmaXJzdCAxNSB0aW5zIHVzZWQg
YnkgQ2FrZSwgb3IgYSBtYXJrIHZhbHVlIG9mIDAgdG8gZmFsbCBiYWNrIHRvIENha2UncyBkZWZh
dWx0IERpZmZzZXJ2IGhhbmRsaW5nLiAgTm9uZSBvZiBDYWtlJ3MgdGluIHNldHVwcyB1c2UgbW9y
ZSB0aGFuIDggdGlucywgYW5kIG1vc3QgdXNlIGZld2VyLgo+Cj4gIC0gSm9uYXRoYW4gTW9ydG9u
Cj4KClRoYW5rcyBmb3IgdGhlIGluZm8hIEkndmUgbm90aWNlZCB0aGF0IGJ5IHVzaW5nIDB4Riwg
bWFya3MgMS00IGJlY29tZQp0aW5zIDAtMy4gVGluIDAgaXMgc3BlY2lhbD8gSSBhc3N1bWVkIGl0
J3MgZm9yIGJ1bGsgdHJhZmZpYy4gSSB1c2UKZGlmZnNlcnY4LgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

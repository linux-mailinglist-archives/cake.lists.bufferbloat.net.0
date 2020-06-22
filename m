Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEAF203B6F
	for <lists+cake@lfdr.de>; Mon, 22 Jun 2020 17:47:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 677D63CB42;
	Mon, 22 Jun 2020 11:47:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592840863;
	bh=YTmQWLaog17TjGmxzAMZvrMB3E73IEwL4+0yQsiLVfE=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R/i0AK9/D4Zz9rsjzjoguqOQSsADFj61Kfir9msYa60NkirqBiPjToVuIJ2GMBi2d
	 sMqwWZSDIqAHSSBLw1GNDnfkvFyvHtEDqCoBljroNn+WTMLh7hZxS/FftSwgOXtpT+
	 1NXoVsEKf79j7QCyDg9KlzCJnNqZAe3sVYVLgluPeoQeQASt5/XwyCi31OTh1HWH/P
	 tFg0Giwix8oz15cRDU4PbJXx7nacyQv5miNX/GcfknjhAV/nYK8hiHEWvrnKeez4Uj
	 OjDs1JogueH81K1f6irAXnMSWdholUEltwSX8+30FXJqcTcuEBkf7t2MiYLAgISqWX
	 O9APC8fZ5Fjmg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9540F3B2A4
 for <cake@lists.bufferbloat.net>; Mon, 22 Jun 2020 11:47:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592840861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=D05HhaihY03qByB9u3rBYCf70uDkum4ra/9qNADxG14=;
 b=alB8z0Xgq/s7hGE7HQYBlOiI/mTlBZcHexpWH/9vZ7ATVN8wxHdV4Ko5n6nx5V2MLObOPp
 pMbXVLHHjyYdmfE4o5quDXAcO68KhleKYgM1GYo9nb6AE3aRq0QFIDE7OMA6BXNWsqbjuH
 wt6h7nbEqxKRkPyBBuX/sEnGIbDPx2E=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-qJqem_7rO0esZyjKog-iwQ-1; Mon, 22 Jun 2020 11:47:29 -0400
X-MC-Unique: qJqem_7rO0esZyjKog-iwQ-1
Received: by mail-wm1-f71.google.com with SMTP id h25so167396wmb.0
 for <cake@lists.bufferbloat.net>; Mon, 22 Jun 2020 08:47:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=D05HhaihY03qByB9u3rBYCf70uDkum4ra/9qNADxG14=;
 b=LgwTM1CTA59s5qMHPztp8s4Y5ruhdIno7EoK0W4ASHJL4wvGG9Dbu9KHFTr7XVEMr/
 09M+QPZDysurB4+xwE6/afCJSWA+5lJ7blhcgeTGbuufX3tOT+JfbwwH+hDLc+TdBlk7
 aungA7ysa+XVCjo+Lp/fbFUTQheWmKh84HbT8AZQTwySu4OdgnWXMiR/Fa48xwYnna+8
 OooiNwY6ULGDFaPgPrewoES3xONjHgIQqJMEURasfqnNMrDiwCal8kBP+wB8iu5A2IF3
 vYthoQTbGpwZKcqqYG4N0OeYO46DVAwoqW/2yCJoLiB1OB0iwsMojhJOSKUrIlNUEu3C
 5nWQ==
X-Gm-Message-State: AOAM5318NfsQT7ogDFcpE18erB7JdRQjXIjA3mQABmJxXIFAyHyJTSQx
 4tz3nMe5DyR322xBbw1wosOQiTV4qF3gwW4uQswcnPdsfJuhQyxKeNuNU2fGp6514zfa/5I+e2e
 TDPWcCPMSliLnwB6HeZiv0Q==
X-Received: by 2002:adf:f445:: with SMTP id f5mr11250483wrp.339.1592840848802; 
 Mon, 22 Jun 2020 08:47:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxHazsT0tmaYxZeSAbPfRBVAXXKqSbqsgqBadWehtsY47X7lxW1/qjseVBi1RIyKWrHWBlU1w==
X-Received: by 2002:adf:f445:: with SMTP id f5mr11250470wrp.339.1592840848588; 
 Mon, 22 Jun 2020 08:47:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id o10sm18404057wrj.37.2020.06.22.08.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Jun 2020 08:47:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 21029181502; Mon, 22 Jun 2020 17:47:27 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jose Blanquicet <blanquicet@gmail.com>, cake@lists.bufferbloat.net
In-Reply-To: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
References: <CAFC8iJKY+1iuiTHuo5OditK7RtpqZ=bbap+gzdEuM=gt5fiNZw@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 22 Jun 2020 17:47:27 +0200
Message-ID: <877dvzt84w.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Cake] [CAKE] Rate is much lower than expected - CPU load is
	higher than expected
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
Cc: marco maniezzo <marco.maniezzo@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9zZSBCbGFucXVpY2V0IDxibGFucXVpY2V0QGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBIaSBldmVy
eW9uZSwKPgo+IFdlIGhhdmUgYW4gZW1iZWRkZWQgc3lzdGVtIHdpdGggbGltaXRlZCBDUFUgcmVz
b3VyY2VzIHRoYXQgYWN0cyBhcyBhCj4gZ2F0ZXdheSB0byBwcm92aWRlIEludGVybmV0IGFjY2Vz
cyBmcm9tIExURSB0byBhIHByaXZhdGUgVVNCLU5DTQo+IG5ldHdvcmsgKEFuZCBhbHNvIHRvIGEg
V2ktRmkgcHJpdmF0ZSBuZXR3b3JrIGJ1dCB3ZSB3aWxsIHdvcmsgb24gaXQKPiBsYXRlcikuIE91
ciBwcm9ibGVtIGlzIHRoYXQgdGhlIGJhbmR3aWR0aCBvbiBMVEUgYW5kIFVTQiBsaW5rIGlzCj4g
aGlnaGVyIHRoYW4gd2hhdCB0aGUgc3lzdGVtIGlzIGFibGUgdG8gaGFuZGxlIHRodXMgaXQgcmVh
Y2hlcyAxMDAlIG9mCj4gQ1BVIGxvYWQgd2hlbiB3ZSBwZXJmb3JtIGEgc2ltcGxlIHNwZWVkIHRl
c3QgZnJvbSBhIGRldmljZSBvbiB0aGUKPiBwcml2YXRlIG5ldHdvcmsuCgpXaGF0IHNwZWVkcyB3
ZXJlIHlvdSBnZXR0aW5nIHdpdGhvdXQgc2hhcGluZz8KCj4gVGhlcmVmb3JlLCB3ZSB3YW50IHRv
IGxpbWl0IHRoZSBiYW5kd2lkdGggdG8gYXZvaWQgc3lzdGVtIGdldHRpbmcKPiBzYXR1cmF0ZWQg
aW4gc3VjaCB1c2UtY2FzZS4gVG8gZG8gc28sIHdlIHRob3VnaHQgdG8gdXNlIHRoZSBDQUtFIG9u
Cj4gdGhlIFVTQiBpbnRlcmZhY2UuIEZvciBpbnN0YW5jZSwgd2UgdHJpZWQ6Cj4KPiAgICAgdGMg
cWRpc2MgcmVwbGFjZSByb290IGRldiBldGgwIGNha2UgYmFuZHdpZHRoIDIwbWJpdCBldGhlcm5l
dAo+IGludGVybmV0IGZsb3dibGluZCBub25hdCBiZXN0ZWZmb3J0IG5vd2FzaAo+Cj4gSXQgd29y
a2VkIGNvcnJlY3RseSBhbmQgdGhlIG1heGltdW0gcmF0ZSB3YXMgbGltaXRlZCBidXQgdGhlcmUg
YXJlIHR3bwo+IHRoaW5ncyB0aGF0IGFyZSB3b3JyeWluZyB1czoKPgo+IDEpIFRoZSBtYXhpbXVt
IHJhdGUgcmVhY2hlZCBhZnRlciBhcHBseWluZyBDQUtFIHdhcyBpbiBiZXR3ZWVuIDEyTWJwcwo+
IGFuZCAxNU1icHMgd2hpY2ggaXMgcXVpdGUgbG93ZXIgdGhhbiB0aGUgMjBNYnBzIHdlIGFyZSBj
b25maWd1cmluZywgd2UKPiB3ZXJlIGV4cGVjdGluZyBhcm91bmQgMTgtMTkuIFdoeT8gSXMgdGhl
cmUgc29tZXRoaW5nIGluIHRoZSBwYXJhbWV0ZXJzCj4gd2UgYXJlIGRvaW5nIHdyb25nPyBQbGVh
c2UgdGFrZSBpbnRvIGFjY291bnQgdGhhdCBvdXIgZ29hbCBpcyB0byBsaW1pdAo+IHRoZSByYXRl
IGJ1dCBhZGRpbmcgYXMgbGl0dGxlIENQVSBsb2FkIGFzIHBvc3NpYmxlLgoKSG1tLCBhcmUgeW91
IGFjdHVhbGx5IHJ1bm5pbmcgb3V0IG9mIENQVT8gSS5lLiwgaXMgdGhlIENQVSBwZWdnZWQgYXQK
MTAwJSB3aGVuIHlvdSBoaXQgdGhpcyBsaW1pdD8gV2hhdCBraW5kIG9mIHBsYXRmb3JtIGFyZSB5
b3UgcnVubmluZyBvbj8KQW5kIHdoYXQga2VybmVsIGFuZCBDQUtFIHZlcnNpb25zIGFyZSB5b3Ug
dXNpbmc/Cgo+IDIpIFRoZSBDUFUgbG9hZCBhZGRlZCBieSBDQUtFIHdhcyBub3QgbmVnbGlnaWJs
ZSBmb3Igb3VyIHN5c3RlbS4gSW4KPiBmYWN0LCB3ZSBjb21wYXJlZCB0aGUgQ1BVIGxvYWQgd2hl
biBsaW1pdGF0aW9uIHdhcyBkb25lIGJ5IENBS0UgYW5kIGJ5Cj4gdGhlIGRldmljZSBvbiB0aGUg
cHJpdmF0ZSBuZXR3b3JrLCBlLmcuIGN1cmwgdG9vbCB3aXRoIHBhcmFtZXRlcgo+ICItLWxpbWl0
LXJhdGUiLiBBcyBhIHJlc3VsdCwgd2UgZm91bmQgdGhhdCB0aGUgQ1BVIGxvYWQgd2hlbiB1c2lu
Zwo+IENBS0Ugd2FzIDMwJS4gSXMgdGhlcmUgYW55IHdheSB0byBtYWtlIGl0IGxpZ2h0ZXIgd2l0
aCBhIGRpZmZlcmVudAo+IGNvbmZpZ3VyYXRpb24/CgpObywgeW91J3ZlIGFscmVhZHkgdHVybmVk
IG9mZiBtb3N0IG9mIHRoZSBmZWF0dXJlcyB0aGF0IG1pZ2h0IGluY3VyCm92ZXJoZWFkLCBzbyBJ
IGRvbid0IHRoaW5rIHRoZXJlJ3MgYW55dGhpbmcgbW9yZSB5b3UgY2FuIGRvCmNvbmZpZ3VyYXRp
b24td2lzZSB0byBpbXByb3ZlIENQVSBsb2FkLiBTaGFwaW5nIGRvZXMgdGVuZCB0byB1c2UgdXAg
YQpsb3Qgb2YgQ1BVLCBzbyBpdCdzIG5vdCB0b28gc3VycHJpc2luZyB5b3UgcnVuIGludG8gaXNz
dWVzIGhlcmUuCgpXZSBkaWQgcmVjZW50bHkgZ2V0IGEgcHVsbCByZXF1ZXN0IHdob3NlIGF1dGhv
ciBzdGF0ZXMgdGhhdCBoZSB3YXMKc2VlaW5nIGEgMS8zIGltcHJvdmVtZW50IGluIHBlcmZvcm1h
bmNlIGZyb20gaXQuIFNlZToKaHR0cHM6Ly9naXRodWIuY29tL2R0YWh0L3NjaF9jYWtlL3B1bGwv
MTM2CgpZb3UgY291bGQgdHJ5IHRoaXM7IGlmIHlvdXIgaW5ncmVzcyBuZXR3b3JrIGRldmljZSBk
cml2ZXIgaGFzIHRoZSBzYW1lCmlzc3VlIHdpdGggc2ticyBiZWluZyBhbGxvY2F0ZWQgaW4gc21h
bGxlciBiaXRzLCB5b3UgbWF5IHNlZSBhIHNpbWlsYXIKaW5jcmVhc2Ugd2l0aCB0aGlzIHBhdGNo
LiBGb3IgYSBxdWljayB0ZXN0IHlvdSBjb3VsZCBhbHNvIGp1c3QgdHJ5CmNvbW1lbnRpbmcgb3V0
IHRoZSBjYWxsIHRvIGNha2VfaGFuZGxlX2RpZmZzZXJ2KCkgZW50aXJlbHkgc2luY2UgeW91J3Jl
CnJ1bm5pbmcgaW4gYmVzdGVmZm9ydCBtb2RlIGFueXdheSA6KQoKLVRva2UKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

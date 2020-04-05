Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EA619ED3B
	for <lists+cake@lfdr.de>; Sun,  5 Apr 2020 20:04:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D317B3CB39;
	Sun,  5 Apr 2020 14:04:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586109842;
	bh=wO25qsZEsRUKUGS6AOE3XRBVsYjeZ+0CB/Urwbv3JwI=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qJcZsa9hep7hWyX2YorFWiyIFsCNxlHmTAqxwcD5wAonDMjWb0IA5JPfZatq69zyK
	 fgihCptS3+GYo7N1pLfand984I+NKvIGi+KPuXUQMztcPNdUL4VkpLrUAdEILwd+NT
	 8uQB8vQgUcJAyg5TAqNXiWddUSn35ovUlDsAyrIRdjGu+WmsLqCVRVgWMueWsGEEKc
	 fqmrM9kPImCZz4/z60HAhOOqRyKhacOU8N5UUYq411sOyMlSXFYaIDtPprBcHp48j9
	 bhj0hg0iKp1CoUo4gXBk7mQ7KOdUhqH1AD6W2/tJH/nH9L780vc9CPxLQw+GW3RvSU
	 h+KjIX1WlZtoQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 78CBE3B29E
 for <cake@lists.bufferbloat.net>; Sun,  5 Apr 2020 14:04:01 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id y17so11198188iow.9
 for <cake@lists.bufferbloat.net>; Sun, 05 Apr 2020 11:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UuNNXpu74+L8uRQyhFMx9EhnRaFs4WHFAUiwYR7ATf8=;
 b=syt3GPPWI7Kds+A+EOkxtkCxFA5qC++uAXJkeJt8GonRB+dUOLIqxMSk7S5/7jK2Wi
 /tF0oHQnPEeZTmdT0vxhEfULKlbTF9Yno0vkuMPyEuY5oipB3VZ5tu06Qnpi/pKGawyb
 VnCNM+1sPlJWLnepb+sXHgqoOzzW0XCTe+PkRg6aqgfl6U20wcjgW4glEBDLU30vD5gc
 sEPCIQRbhLOZwgBbHly0LLx8HlwOL3ZOFNZw/2HBOHB6i1i3p8madfch0kpS0YyhpPMs
 Qh5+JMJLwPFpR9zunKWE0YsHeqDfprBlDojyc3fSYzSbsMZ9NoPeGxK3S7t5y8nPbmVo
 7hhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UuNNXpu74+L8uRQyhFMx9EhnRaFs4WHFAUiwYR7ATf8=;
 b=jBhaA3uvBoh1VRQyiVI+sO8zmO1sj3f84f6qokZRGBDAIH/nasXdXHweKYIObF8j7D
 MJheCKqmoGXbOlNQeOf0y2kzmTtx6G3m1tw/ANLGeEYqlXKZErA0jmPWA8plBnio8ITJ
 Bvj0DR3NrW2Fgb96XmODXvvzuDSbIOer1V5kV8CFy0UZA6pf2Met5I9URNrmS1XUcDVT
 6WavGItOMQqIQKpoJI2AnJiEd07BLD7dVJaf/Juth9LBKTJ9l8Utbngg8br7lQCVJH6w
 zRUNGje7YmsoeTUfrUcQnChS14VeXFC8NlLJ9GkSZQ7/UDfDYpj6Ecn8/nQDVp38HTD8
 Q9lw==
X-Gm-Message-State: AGi0PuZ74C3VY66VyrMu5GlRX535ypxSRqMxKB/7XWoI35W6TwBpf7U/
 6L8SUWCGL1EzLqcN37R48/vt5DzWFE5s1CFlJ+jO/haHvcg=
X-Google-Smtp-Source: APiQypKGLiHw/ZoCI32yi/boBnsbA/NoF0YrdBDG8HVF2kkkWSyN+XJ3h6EDyQhwWVL2ox0q3+FQ0Zb72Syr9S6glSI=
X-Received: by 2002:a02:cd03:: with SMTP id g3mr2157202jaq.61.1586109840946;
 Sun, 05 Apr 2020 11:04:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
 <FFAECE22-C1E8-4CA8-8ACF-8C49BEBE3DA8@darbyshire-bryant.me.uk>
 <CAA93jw5qkWxsA__+69em0BRT32-Ze42NH7VorsCW1TE_JAio3Q@mail.gmail.com>
In-Reply-To: <CAA93jw5qkWxsA__+69em0BRT32-Ze42NH7VorsCW1TE_JAio3Q@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 5 Apr 2020 11:03:48 -0700
Message-ID: <CAA93jw5x_Z6EMGAQj7qYmWaFrYfsxU5hSNWmEAMQePa8mjhEgA@mail.gmail.com>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
Subject: Re: [Cake] cake and nat in openwrt... on by default?
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

aHR0cHM6Ly93d3cucmVkZGl0LmNvbS9zZWFyY2gvP3E9YnVmZmVyYmxvYXQmdD13ZWVrCgphbnl3
YXkgSSBwb3N0ZWQgYSBQU0EuIEdydW1wLiBpdCBsb29rcyBsaWtlIGNvbW1lbnQgdGhyZWFkcyBh
cmUgbm90CnVuaWZpZWQgYWNyb3NzIGZvcnVtcy4KCmh0dHBzOi8vd3d3LnJlZGRpdC5jb20vci9I
b21lTmV0d29ya2luZy9jb21tZW50cy9mdmhyNHcvcHNhX3NxbV9jYWtlX25hdF9hbmRfYnVmZmVy
YmxvYXRfdHVuaW5nLwoKSSBkbyB3aXNoIG91ciBtYWlsaW5nIGxpc3RzIHNob3dlZCB1cCBvbiBn
b29nbGUgc2VhcmNoZXMuCgpPbiBTdW4sIEFwciA1LCAyMDIwIGF0IDg6MjIgQU0gRGF2ZSBUYWh0
IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFN1biwgQXByIDUsIDIwMjAgYXQg
MTI6NTcgQU0gS2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQKPiA8a2V2aW5AZGFyYnlzaGlyZS1icnlh
bnQubWUudWs+IHdyb3RlOgo+ID4KPiA+Cj4gPgo+ID4gPiBPbiA1IEFwciAyMDIwLCBhdCAwNTox
NywgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSSBz
ZWUgY2FrZSBpcyBtb3ZpbmcgdG8gdGhlIHVwc3RyZWFtZWQgdmVyc2lvbi4gQXMgYmVzdCBhcyBJ
IHJlY2FsbCwKPiA+ID4gbmF0IG1vZGUgd2FzIG9uIGJ5IGRlZmF1bHQgaW4gdGhlIG9wZW53cnQg
Y29kZSwgYnV0IG5vdCB0aGUgdXBzdHJlYW1lZAo+ID4gPiBjb2RlLgo+ID4gPgo+ID4gPiBQZW9w
bGUgbm90IHNldHRpbmcgbmF0IG1vZGUgb24gd291bGQgZXhwbGFpbiBhIGZldyB0aGluZ3MgaSd2
ZSBzZWVuCj4gPiA+ICdyb3VuZCB0aGUgaW50ZXJ0dWJlcyB0aGlzIHdlZWsuCj4gPgo+ID4gRnJv
bSBzY2hfY2FrZSByZXBvIGFuZCBoZW5jZSDigJhvdXQgb2YgdHJlZeKAmSBjYWtlCj4gPgo+ID4g
ICAgICAgICBpZiAodGJbVENBX0NBS0VfTkFUXSkgewo+ID4gI2lmIElTX1JFQUNIQUJMRShDT05G
SUdfTkZfQ09OTlRSQUNLKQo+ID4gICAgICAgICAgICAgICAgIHEtPmZsb3dfbW9kZSAmPSB+Q0FL
RV9GTE9XX05BVF9GTEFHOwo+ID4gICAgICAgICAgICAgICAgIHEtPmZsb3dfbW9kZSB8PSBDQUtF
X0ZMT1dfTkFUX0ZMQUcgKgo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgISFubGFfZ2V0X3Uz
Mih0YltUQ0FfQ0FLRV9OQVRdKTsKPiA+ICNlbHNlCj4gPiAjaWYgTElOVVhfVkVSU0lPTl9DT0RF
ID49IEtFUk5FTF9WRVJTSU9OKDQsIDE2LCAwKQo+ID4gICAgICAgICAgICAgICAgIE5MX1NFVF9F
UlJfTVNHX0FUVFIoZXh0YWNrLCB0YltUQ0FfQ0FLRV9OQVRdLAo+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIk5vIGNvbm50cmFjayBzdXBwb3J0IGluIGtlcm5lbCIpOwo+
ID4gI2VuZGlmCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOwo+ID4gI2Vu
ZGlmCj4gPiAgICAgICAgIH0KPiA+Cj4gPgo+ID4gRnJvbSBrZXJuZWwgNS40IGFzIGZvdW5kIGlu
IG9wZW53cnQgYnVpbGQgZGlyCj4gPgo+ID4gICAgICAgICBpZiAodGJbVENBX0NBS0VfTkFUXSkg
ewo+ID4gI2lmIElTX0VOQUJMRUQoQ09ORklHX05GX0NPTk5UUkFDSykKPiA+ICAgICAgICAgICAg
ICAgICBxLT5mbG93X21vZGUgJj0gfkNBS0VfRkxPV19OQVRfRkxBRzsKPiA+ICAgICAgICAgICAg
ICAgICBxLT5mbG93X21vZGUgfD0gQ0FLRV9GTE9XX05BVF9GTEFHICoKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICEhbmxhX2dldF91MzIodGJbVENBX0NBS0VfTkFUXSk7Cj4gPiAjZWxzZQo+
ID4gICAgICAgICAgICAgICAgIE5MX1NFVF9FUlJfTVNHX0FUVFIoZXh0YWNrLCB0YltUQ0FfQ0FL
RV9OQVRdLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIk5vIGNvbm50
cmFjayBzdXBwb3J0IGluIGtlcm5lbCIpOwo+ID4gICAgICAgICAgICAgICAgIHJldHVybiAtRU9Q
Tk9UU1VQUDsKPiA+ICNlbmRpZgo+ID4KPiA+Cj4gPgo+ID4gY2FrZV9pbml0KOKApikgaW4gYm90
aCBkb2VzOgo+ID4KPiA+IHEtPmZsb3dfbW9kZSAgPSBDQUtFX0ZMT1dfVFJJUExFOwo+ID4KPiA+
Cj4gPiBTbyBvcGVud3J0IGRvZXNu4oCZdCwgYnkgZGVmYXVsdCwgZW5hYmxlIE5BVCBtb2RlIGlu
IGNha2UuCj4gPgo+ID4gSSBob25lc3RseSBkb27igJl0IHRoaW5rIHRoYXQgdGhlcmUgYXJlIGVu
b3VnaCBpbnN0YW5jZXMgb2YgY2FrZSBvdXQgdGhlcmUsIGxldCBhbG9uZSBpbnN0YW5jZXMgb2Yg
Y2FrZSBmcm9tIG9wZW53cnQsIGxldCBhbG9uZSBpbnN0YW5jZXMgb2YgY2FrZSBmcm9tIG1hc3Rl
ciB3aGljaCBzd2l0Y2hlZCB0byB1cHN0cmVhbSBjYWtlIDItMyBkYXlzIGFnbywgdG8gbWFrZSBh
bnkgc29ydCBvZiBkaWZmZXJlbmNlIGFueXdheS4KPgo+IEknZCBzdGlsbCBiZSB3aWxsaW5nIHRv
IGJldCwgdGhlbiwgdGhhdCB0aGUgbWFqb3JpdHkgb2YgaW5zdGFuY2VzIHdlcmUKPiBub3QgdHVy
bmluZyBuYXQgbW9kZSBvbiwgd2hlbgo+IHRoZXkgc2hvdWxkIGhhdmUgYmVlbi4KPgo+ID4KPiA+
ID4KPiA+ID4gLS0KPiA+ID4gTWFrZSBNdXNpYywgTm90IFdhcgo+ID4gPgo+ID4gPiBEYXZlIFTD
pGh0Cj4gPiA+IENUTywgVGVrTGlicmUsIExMQwo+ID4gPiBodHRwOi8vd3d3LnRla2xpYnJlLmNv
bQo+ID4gPiBUZWw6IDEtODMxLTQzNS0wNzI5Cj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPiA+IENha2UgbWFpbGluZyBsaXN0Cj4gPiA+IENh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UKPiA+Cj4gPgo+ID4gQ2hlZXJzLAo+ID4KPiA+IEtldmluIEQtQgo+
ID4KPiA+IGdwZzogMDEyQyBBQ0IyIDI4QzYgQzUzRSA5Nzc1ICA5MTIzIEIzQTIgMzg5QiA5REUy
IDMzNEEKPiA+Cj4KPgo+IC0tCj4gTWFrZSBNdXNpYywgTm90IFdhcgo+Cj4gRGF2ZSBUw6RodAo+
IENUTywgVGVrTGlicmUsIExMQwo+IGh0dHA6Ly93d3cudGVrbGlicmUuY29tCj4gVGVsOiAxLTgz
MS00MzUtMDcyOQoKCgotLSAKTWFrZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8sIFRl
a0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcyOQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

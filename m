Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C323042E413
	for <lists+cake@lfdr.de>; Fri, 15 Oct 2021 00:17:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A0B0F3CB51;
	Thu, 14 Oct 2021 18:17:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634249870;
	bh=mapllx6ry98+3HAP7qqwj7Fl+LOx0N45qXrFaV4+xIc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A8dFM3EOnRRuFwrgYbOeXXwu8GQ2rc2lRTXi1/kZ9GNlKWHblSEkeuce2NQRYE7Rh
	 3rH++rJzCHsoK60W7KA2NDSAPOVMgiW8gN0z+eIjkfWMBeCRVqO30gf6B8MkXs6M7B
	 6voBtTKLEaOq9pLAl3pAm4RtD4Fa4bWMo5eQaL7f4T3Ul5VkYi1xipj/D7ejUgDfBk
	 LYBMU8sm4b8i/XFeF7wEl59VmMw3l8Jgx6DDvjQ9RJydy4NX/BXhdvtSQOITKoKFjy
	 qW400zpP5lFcoCg92/2Q1HHNr5WpW/dc/Nh+REJV8g8KkCbOB3sTjKYiQpqCNQPpfB
	 DoKEqaUed666Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1B9E23B29E;
 Thu, 14 Oct 2021 18:17:49 -0400 (EDT)
Received: by mail-io1-xd2f.google.com with SMTP id s17so5517775ioa.13;
 Thu, 14 Oct 2021 15:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bfdi3AJ4liCqLox1BXgrKYYd8Z2cL0WH0qY8dw9S3UQ=;
 b=OcLzogOnB26ipw5jYQRUmomsiG1Q9BjSx+feI813Swe3/UjMB7etEl3iXywQZZGlwo
 UzOaWfMqZR/osmC1jvLKNejCVDuaPnk/RglRJ1tEPwltprojLmBNlozlsIJHBq9ZdN5c
 Pwf8zWDeoxfsf6zv9ig22+UuwMVrHtWYZBAlBXeLGCMErRh/mR7/Pnoyswfooq1K1ins
 Fc0cvY0q7ZlyHwYxu07GhCUs0ZqkHOt1AqFikfcyuNjma+OQXC0Ns7RybCFe8UZlXHlZ
 6y2zy1tAqTl3Au55BA7nFSGw09xPNtJ3buLAbJNWcax9WZwEa6uZYyCDtdrSpB6uhcVm
 255g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bfdi3AJ4liCqLox1BXgrKYYd8Z2cL0WH0qY8dw9S3UQ=;
 b=oiSzN+8R3iiMzXKwH9GNHZAUnwiuGzyBWaq1WMjI+Jni7rrnQmBVxUilt8+bagWZj3
 DK8XD8k41wHokdzrGiGb5BK1XGrtQmBQ9nN34LZBJbOhT3eO+z/YA2KyZejrKrWFW2Im
 NG6nQFs8eWVk7iJ0Cf3c51Pe6rnQU9qq6GQbM6Qiy0OxowdGLk8zHj3+BqLBCeOKpb1e
 K1J/CLH4C8q2hhanAzVeT+fZQ2cE8lxFO1msMLyDAonsa56UnllLrMQMLVHdB+Z/7mnX
 nEl/v8+ceNVHogk+FaVkMBiRGaPFAX3XO2AHCUcDbdOSTLVNU+oCaou1ihRNVWyD8Q3m
 eGfw==
X-Gm-Message-State: AOAM5314CmhHN2AVWSZCwn9Yj7nZwwNYXI700dIucOgvWlO9IqwaTu7q
 9tnQt2DVAwCm1pMQUq0fMQNhAiK3kKnx5IsbOfc=
X-Google-Smtp-Source: ABdhPJwgCo20TRGXR3f4APFbyG3FMlI8jweuFygH4dyfSKj9FWg9YctSEnpB3/4AUzftV/ZDZu79HUzz98+nf9yrBNI=
X-Received: by 2002:a6b:cd87:: with SMTP id d129mr1201595iog.28.1634249868417; 
 Thu, 14 Oct 2021 15:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
In-Reply-To: <87pms71cmr.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 14 Oct 2021 15:17:37 -0700
Message-ID: <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBPY3QgMTQsIDIwMjEgYXQgMzoxMCBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4KPiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+
IHdyaXRlczoKPgo+ID4gT24gVGh1LCBPY3QgMTQsIDIwMjEgYXQgMjo0NCBQTSBUb2tlIEjDuGls
YW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4gPj4KPiA+PiBEYXZlIFRhaHQg
PGRhdmUudGFodEBnbWFpbC5jb20+IHdyaXRlczoKPiA+Pgo+ID4+ID4gd2VpcmRseSBlbm91Z2gs
IG15IGdtYWlsIGFjY291bnQgaGFzIG5vdCByZWNlaXZlZCBhbnl0aGluZyBmcm9tIG5ldGRldgo+
ID4+ID4gc2luY2Ugb2N0IDExLgo+ID4+Cj4gPj4gWW91J3JlIG5vdCBhbG9uZSBpbiB0aGF0Ogo+
ID4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDIxMTAxNDExMjcxOC42YWVkN2Y0
N0BraWNpbnNraS1mZWRvcmEtcGMxYzBoam4uZGhjcC50aGVmYWNlYm9vay5jb20vVC8jdAo+ID4K
PiA+IG9rLiBPbmUgb2YgdGhlc2UgeWVhcnMgSSdsbCBnbyBiYWNrIHRvIHJ1bm5pbmcgbXkgb3du
IGVtYWlsIHNlcnZlcgo+ID4gZnVsbCB0aW1lLgo+Cj4gWW91IGNhbiBhbHNvIHN1YnNjcmliZSB0
byBMaW51eCBsaXN0cyBieSBpbXBvcnRpbmcgdGhlIG1haWxzIGZyb20gTG9yZSwKPiBhcyBvbmUg
b2YgdGhlIHJlcGxpZXMgaW4gdGhlIHRocmVhZCBhYm92ZSBwb2ludGVkIG91dC4gQmVlbiBtZWFu
aW5nIHRvCj4gc3dpdGNoIHRvIHRoYXQgbXlzZWxmLCBidXQgaGF2ZW4ndCBnb3R0ZW4gYXJvdW5k
IHRvIGl0IHlldC4uLgoKSSBhdHRlbXB0ZWQgdG8gc3Vic2NyaWJlIGFnYWluLCBub3RoaW5nIGhh
cHBlbmVkLgoKZmlndXJpbmcgb3V0IGxvcmUuLi4gaXMgdG9vIG11Y2ggd29yayBmb3IgdG9kYXku
IEknZCByYXRoZXIgaGFtbWVyCnNtYWxsIHRoaW5ncyBpbnRvIG9ibGl2aW9uIG9uIG15IGJvYXQu
CgpwbGVhc2UgZmVlbCBmcmVlIHRvIHBhc3MgYWxvbmcgbXkgY29tbWVudHMgYW5kIHRoZSBzY2Ug
dGVhbXMgZmluZGluZ3MKaW50byB0aGF0IHRocmVhZC4KCj4KPiA+PiA+IHllcywgaSB0aGluayBm
cV9jb2RlbCB3aWxsIGJlIGJldHRlciwgYW5kIGV2ZW4gdGhlIHByb3Bvc2VkCj4gPj4gPiB0b28t
c2hhbGxvdyB0aHJlc2hvbGQgd2lsbCBtYWtlIGZvciBsZXNzIG9mIGEgZGVudCBvbiB0aGUgaW50
ZXJuZXQuCj4gPj4gPgo+ID4+ID4gc3RpbGwuLi4gSSBkbyB3aXNoIEknZCBzZWVuIHRoaXMgZWFy
bGllci4KPiA+Pgo+ID4+IEVhcmxpZXI/IFlvdSBmb3J3YXJkZWQgdGhlIHBhdGNoIGhvdXJzIGFm
dGVyIGl0IHdhcyBwb3N0ZWQuLi4KPiA+Cj4gPiBJIGhhdmUgYSBkYWlseSBzZWFyY2ggZm9yIGZx
X2NvZGVsLCBidWZmZXJibG9hdCwgZXRjLiBJIGhhdmUgbm90aWNlZAo+ID4gbGF0ZWx5IHRoYXQg
c29tZSBtYWlsaW5nIGxpc3QgdHJhZmZpYyBmcm9tIHVzIGlzIGJlaW5nIGluZGV4ZWQgYWdhaW4u
Cj4gPiBJIHdpc2ggSSBrbmV3IHdoeSBvdXIgbGlzdHMgd2VyZSBub3QgaW5kZXhlZCBieSBnb29n
bGUuCj4gPgo+ID4gQW55d2F5LCBsYWNraW5nIGJlaW5nIG9uIHRoYXQgdGhyZWFkLCBpdCdzIGN1
cnJlbnRseSBpbXBvc3NpYmxlIHRvCj4gPiByZXBseS4KPgo+IFRoZSBMb3JlIHBhZ2UgY29udGFp
bnMgaW5zdHJ1Y3Rpb25zIGZvciB2YXJpb3VzIHdheXMgb2YgcmVwbHlpbmcgZXZlbgo+IHdpdGhv
dXQgaGF2aW5nIHRoZSBvcmlnaW5hbCBlbWFpbCBtZXNzYWdlIGluIHlvdXIgbWFpbGJveC4gSXQn
cyBhdCB0aGUKPiBib3R0b20uLi4KPgo+ID4gVGhhdCBzYWlkLCB0aGUgbDRzIGZxX2NvZGVsIHBh
dGNoIGlzIGludHJpbnNpY2FsbHkgZmFpciwgd2hpY2ggaXMKPiA+IHZhc3RseSBzdXBlcmlvciB0
byB0aGUgZHVhbHBpIGFwcHJvYWNoLgo+Cj4gWXVwLCBJIGFncmVlIGl0J3MgYmV0dGVyLCBidXQg
SSBkb24ndCBsaWtlIGJha2luZyBpbiB0aGUgRUNUKDEpCj4gc2VtYW50aWNzIHRvIFVBUEkuIEkg
c3VnZ2VzdGVkIGEgZmlsdGVyLWJhc2VkIGFwcHJvYWNoIHdoaWNoIEknbQo+IGN1cnJlbnRseSBk
aXNjdXNzaW5nIHdpdGggRXJpYyBvbiB0aGF0IHRocmVhZCBhcyB5b3UgbWlnaHQgaGF2ZSBub3Rp
Y2VkIDopCj4KPiAtVG9rZQoKCgotLSAKRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRw
czovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3CgpEYXZlIFTDpGh0IENFTywg
VGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

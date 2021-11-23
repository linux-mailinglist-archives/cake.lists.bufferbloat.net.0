Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 931AF45A64D
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 16:13:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1727B3CB39;
	Tue, 23 Nov 2021 10:13:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637680393;
	bh=TH/DtUIXZ/gXrLuY8fy2ISxchdVgTnUM3KIVDcV8Shw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g1yZPJIDo5zrigjjYBHpEj91AlBzUjGbDgHf/3jXjqUVKXaEDnnOAIE+sinRCHl4V
	 RrbLW9GIwxC0Ku+BPBGzSPqFPswf1uSSaCHS0exJqKzvQWIXoLD9NOOvx62OifaToC
	 Xh5Sb938CJmFSvWWoubQVDF9cbr5qOaAY2K6x2ukJ9E3AMYNpNAIjTiaQX9+IN4gev
	 4oi0WyNeulsb+jK4GiSuU9rd/OkCjmDhqfitVxBjc8GwPhzbkl5VciK+9HlQ+iyFp9
	 dlep6schK5+fPH5yiIs3AzfUMWvzdh+UKRRHk7S+t292AQdJhT9vFMs5V/XC9pn/ww
	 QWDYtwtpL4H6g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com
 [IPv6:2607:f8b0:4864:20::d2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B23693B29D
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 10:13:11 -0500 (EST)
Received: by mail-io1-xd2b.google.com with SMTP id 14so28211565ioe.2
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 07:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YMAFSDy2KjxUSDbx1uO+qkTzULEO2U3cSdRE84RJVw4=;
 b=Nx25QMlWPjPXB7gM2hghElcWMIWpdhGBWVDQlDSd1+NhwaHmW8o/1YOiQTG3ty6J3h
 ICWbS6I5OXOyF2uZTuL0/ExkYvI90Sza4V5xL3ccm1k+laPqg3rH5+dPY1RpCV3WauYB
 ebWA3AcVzvD6MoC6P7l8jYlh9L2xm5W9OIDYRtZfOSpHUaLFiMGaYRcdjFZhaxXxYZCC
 SAvq3QhXubHtGMR2ydAzQhnWE0wn9PBOjFTROfhSGr2aT3AviUgKj7ikU5WaiQUwt45a
 Xf/A/c1S5jQrtUTY+btI7Ml4/QHCbd/l8M4TsXF9jMno+LVc9ayIV1j/nOHN/JSmiKkJ
 iZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YMAFSDy2KjxUSDbx1uO+qkTzULEO2U3cSdRE84RJVw4=;
 b=INhuKR7o4fWddyXErPC8TuHb0qlvriLWIOy3d/L12uLjD4LQEeRNraNxkewzyl10Mv
 4ehdA4cdeC6PyuSp7QKAn1JmmwyFdMw+eSUemWRxBP9REJ4eE/weKiIdArLgFTCjIKBZ
 hKb0yaZ36kj5T1t0skNJvDez2Vtma6sZgAg1qIBzWAbg3RiB5HZ1lcvOP4FMGj7uCOKe
 Bk0VXc+B3vrPbRq7MIW2dobt06wQnPwfOdG7cmMDkJ8aW5X9SiXCosQpeGRJdeedr8om
 RnRrZvnj7tS/bkROJpTVL5bq6FcadPLOVvbx+5sKsXWVQdK63bpJtzuvvyoIm+IUXqXN
 s3tg==
X-Gm-Message-State: AOAM531lMK2wsJqihqVERtWoxK0XJLyNmoRPkkgUPWM4893r72Q+i6Og
 +tHlkSglXeHz0lEvdxvwIUZjtiUHP4ezXLzqt0Q=
X-Google-Smtp-Source: ABdhPJymKrLRlX5vdLcxXqKqnBzTBbE8JHBTyebCuRqHe1WTuD/MAsR+rrcPseaLN+ILuh5dJ40mjbcoa0F62q7DXxs=
X-Received: by 2002:a02:a314:: with SMTP id q20mr7189640jai.104.1637680389419; 
 Tue, 23 Nov 2021 07:13:09 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
 <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de> <87czmrcg0f.fsf@toke.dk>
In-Reply-To: <87czmrcg0f.fsf@toke.dk>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 23 Nov 2021 07:12:55 -0800
Message-ID: <CAA93jw7vcsH5XscyC_z1YCQ2-HD0X2dtmNSF6jQwj5Ygzqe46g@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] tossing acks into the background queue
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

T24gVHVlLCBOb3YgMjMsIDIwMjEgYXQgMjozOSBBTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
PHRva2VAdG9rZS5kaz4gd3JvdGU6Cj4KPiBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBAZ214
LmRlPiB3cml0ZXM6Cj4KPiA+IEhpIERhdmUsCj4gPgo+ID4gT24gMjMgTm92ZW1iZXIgMjAyMSAw
ODozMjowNiBDRVQsIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPj5U
aGUgY29udGV4dCBvZiBteSBxdWVzdGlvbiBpcyBiYXNpY2FsbHkgdGhpczoKPiA+Pgo+ID4+SXMg
Y2FrZSBiYWtlZD8gSXMgaXQgZG9uZT8KPiA+Cj4gPiBIb3cgYWJvdXQgcGVyIE1BQyBhZGRyZXNz
IGZhaXJuZXNzICh1c2VmdWwgZm9yIElTUHMgYW5kIHRvIHRyZWF0Cj4gPiBJUHY0LzYgZXF1YWxs
eSk/Cj4gPgo+ID4gSG93IGFib3V0IGNvbmZpZ3VyYWJsZSBudW1iZXIgb2YgcXVldWVzIChhZ2Fp
biBoZWxwZnVsIGZvciBJU1BzKT8KPgo+IEZXSVcgSSBkb24ndCB0aGluayBDQUtFIGlzIHRoZSBy
aWdodCB0aGluZyBmb3IgSVNQcywgZXhjZXB0IGluIGEKPiBkZXBsb3ltZW50IHdoZXJlIHRoZXJl
J3MgYSBzaW5nbGUgQ0FLRSBpbnN0YW5jZSBwZXIgY3VzdG9tZXIuIEZvcgo+IGFueXRoaW5nIGVs
c2UgKGkuZS4sIGEgc2luZ2xlIHNoYXBlciB0aGF0IGhhbmRsZXMgbXVsdGlwbGUgY3VzdG9tZXJz
KSwKPiB5b3UgcmVhbGx5IG5lZWQgaGllcmFyY2hpY2FsIHBvbGljeSBlbmZvcmNlbWVudCBsaWtl
IGluIGEgdHJhZGl0aW9uYWwKPiBIVEIgY29uZmlndXJhdGlvbi4gQW5kIHJldHJvZml0dGluZyB0
aGlzIG9uIHRvcCBvZiBDQUtFIGlzIGdvaW5nIHRvCj4gY29uZmxpY3Qgd2l0aCB0aGUgZXhpc3Rp
bmcgZnVuY3Rpb25hbGl0eSwgc28gaXQgcHJvYmFibHkgaGFzIHRvIGJlIGEKPiBzZXBhcmF0ZSBx
ZGlzYyBhbnl3YXkuCgpXaGF0IHByb2dyZXNzIGhhcyBiZWVuIG1hZGUgb24gYnJlYWtpbmcgdGhl
IEhUQiBsb2NrcyBpbiB0aGUgbGFzdCBmZXcgeWVhcnM/CgpHaXZlbiB0aGUgZW5vcm1vdXMgbnVt
YmVyIG9mIGh3IHR4L3J4IHF1ZXVlcyB3ZSBzZWUgdG9kYXkgKDY0KyBvbgoxMGdiaXQpLCB0cnlp
bmcgdG8gY2hhcmdlIG9mZgpiYW5kd2lkdGggcGVyIHF1ZXVlIGluIGEgY2FrZS1kZXJpdmVkIHNo
YXBlciBhbmQgcHJvdGVjdGluZyB0aGUgbWVyZ2UKd2l0aCByY3Ugc2VlbWVkIHBsYXVzaWJsZS4u
LgoKPgo+ID4gSU1ITyBjYWtlIHdvcmtzIHByZXR0eSB3ZWxsLCB3aXRoIHRoZSBiaWdnZXN0IGlz
c3VlIGJlaW5nIGl0cyBDUFUKPiA+IGRlbWFuZHMuIEFzIGZhciBhcyBJIHVuZGVyc3RhbmQgaG93
ZXZlciwgdGhhdCBpcyBjYXVzZWQgYnkgdGhlIHNoYXBlcgo+ID4gY29tcG9uZW50IGFuZCB0aGVy
ZSBsb3cgbGF0ZW5jeSBhbmQgdGhyb3VnaHB1dCBhcmUgaW4gZGlyZWN0Cj4gPiBjb21wZXRpdGlv
biwgaWYgd2Ugd2FudCB0byBsb3dlciB0aGUgQ1BVIGxhdGVuY3kgZGVtYW5kcyB3ZSBuZWVkIHRv
Cj4gPiBhbGxvdyBmb3IgYmlnZ2VyIGJ1ZmZlcnMgdGhhdCBrZWVwIHRoZSBsaW5rIGJ1c3kgZXZl
biBpZiBjYWtlIGl0c2VsZgo+ID4gaXMgbm90IHNjaGVkdWxlZCBhcyBwcmVjaXNlbHkgYXMgd2Ug
d291bGQgZGVzaXJlIG9yIGFzIGUuZy4gQlFMCj4gPiByZXF1aXJlcy4KPgo+IFllcywgYXMgbGlu
ayBzcGVlZCBpbmNyZWFzZXMsIGJhdGNoaW5nIG5lZWRzIHRvIGluY3JlYXNlIHRvIGtlZXAgdXAu
Cj4gVGhpcyBkb2VzIG5vdCAqaGF2ZSogdG8gaW1wYWN0IGxhdGVuY3ksIGFzIHRoZSBmYXN0ZXIg
bGluayBzaG91bGQga2VlcAo+IHRoZSBncmFudWxhcml0eSBjb25zdGFudCBpbiB0aGUgdGltZSBk
b21haW4uIFNvIGV4cGVyaW1lbnRpbmcgd2l0aCBkb2luZwo+IHRoaXMgZHluYW1pY2FsbHkgaW4g
Q0FLRSBtaWdodCBiZSB3b3J0aHdoaWxlLCBidXQgcHJvYmFibHkgbm90IHRyaXZpYWwuCj4KPiBB
bmQgZWl0aGVyIHdheSwgQ0FLRSBpcyBzdGlsbCBnb2luZyB0byBiZSBsaW1pdGVkIGJ5IGJlaW5n
IHNpbmdsZSBjb3JlCj4gb25seSwgYW5kIGZpeGluZyB0aGF0IHJlcXVpcmVzIHNvbWUgc2VyaW91
cyBzdXJnZXJ5IHRoYXQgSSBzZWVtIHRvCj4gcmVjYWxsIGxvb2tpbmcgaW50byBhbmQgZ2l2aW5n
IHVwIGF0IHNvbWUgcG9pbnQgOigKCkl0IHdhcyBzbyBsb25nIGFnbyBJIGRvbid0IHJlbWVtYmVy
IHdoYXQgb3RoZXIgaXNzdWVzIGNhbWUgdXAgYXQgdGhlIHRpbWUuCgo/CgpJIGFtIHNlZWluZyBu
dmlkaWEgb2ZmbG9hZGluZyByZWQgYW5kIGh0Yi4KCj4gLVRva2UKCgoKLS0gCkkgdHJpZWQgdG8g
YnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6Ly93YXlmb3J3YXJkLmFy
Y2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCgpEYXZlIFTDpGh0IENF
TywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

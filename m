Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 142C0216AE0
	for <lists+cake@lfdr.de>; Tue,  7 Jul 2020 12:58:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AA79E3CBD0;
	Tue,  7 Jul 2020 06:58:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594119492;
	bh=MQ4gK/pIEDsVeCBsPFSO2Ai5o8KVZtokIQEb//+tHYs=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cfzyxFWnHOduYB2XXe3C5XWrNRnDl2VmAxhVPJdWFbLMIdzRyVdL7mYReXj5mkTj6
	 YftAgM32IQDTBZEYCbWBueV6ssGIIyvCwujXhKiCpoTvya9bCwUMO4P1xEUGhO21Y/
	 08hZIH0e/9IvvHbv2OQDK4odyxKakkeBzCXdvcn5Ygc59G5vynjw00WRYIQGgHGAD+
	 nOpxMC1D+LgrLycsq2J28Jic4Q75ApDovRGSxpz5Cpq/Bp59V1mgXl1ZGeeOetRffV
	 +iVJc6QNyzecJC6Eq28W1XqMUYzZLo57NqT0IF9blzzHZ0GsAekqIyTvyS4/KZ/rh5
	 rSN0TN7SY3Adg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com
 [IPv6:2607:f8b0:4864:20::1042])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 85FA73B29E
 for <cake@lists.bufferbloat.net>; Tue,  7 Jul 2020 06:49:34 -0400 (EDT)
Received: by mail-pj1-x1042.google.com with SMTP id f16so7979099pjt.0
 for <cake@lists.bufferbloat.net>; Tue, 07 Jul 2020 03:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1nlpBrQdimOv9euyk7fsu1kody/DGWqimCvsJCErFxQ=;
 b=VKkSMsVlZjtdO1f1DBoGKkkEAHsxNH1lb3bII3lGdO7lz8v4+3BLz/bxJAaMqaIyx6
 ugE4ah+wDWBRUBMXzM+tY4Fxe+ji1jv7/zpM9+MhFOqt8OFMHMjohiNGAKnSiveQu3W6
 P/z3aDxf7mQt1lsuaq8ReQ5GFtzZdHXRss3QCa3eYCFuc/7KK1F9+eOv4wY+HHqBSrmc
 UIWFvEoww+t+x1NZN1Zv6HHuR3TWWgLbkjsg7KMvf/ZT9x7tnMFH5YFxjNIi24RPguln
 m5miUTvy1tgTTQXF0T0G8Hknz/0Wj1cRR3/EjtRj5IYiSNIQOLPdPFQTasfKyYIHPHBO
 qefA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1nlpBrQdimOv9euyk7fsu1kody/DGWqimCvsJCErFxQ=;
 b=nGwCZRKuy07B0et4M+k3Ob8rxtmYBDmR/KT11DApnFeaEtEOaT7KIF2FK4oFr92OdL
 36DPoxWAsI8uwLX3OmCTwDuWnSPOW3QQjR630mj93fSr43RqFDiz8Pm+seUHGA6vCCrO
 cnxog1itfgYBo08k4vl59SPkdRIN02kqC0v3uFkbIJj0ba7emZuuZySbMgzvC4A9Yaqu
 hcfblHx1p5+vCduDjyzL/D8wzExfywtVdXL7pSJBNTRz68AMDUiYuqo23AJhdYRobU8Q
 FVNCNuZg26RrnTiIA5Ct9pJCQjMnrhvfaNOgvuJ0XeLVG9Gs7YNn2AtHS5T6Q3WvWCe6
 qrqg==
X-Gm-Message-State: AOAM532Fa8KMrE06TSh7CUS/27787H1wIKV+3etGt1K/5onZuep2eDI3
 AcrFI9zplUSMxkbHhmGNDDk=
X-Google-Smtp-Source: ABdhPJw47EVZWmQYocIFxL6vJhSs+rY2R3X/xfAAOX6hn1GU3eC4CM5RXJNnBz3jBU4BmCVCO3y52A==
X-Received: by 2002:a17:902:b714:: with SMTP id
 d20mr33104696pls.318.1594118973768; 
 Tue, 07 Jul 2020 03:49:33 -0700 (PDT)
Received: from [172.20.20.103] ([222.151.198.97])
 by smtp.gmail.com with ESMTPSA id n12sm563256pgr.88.2020.07.07.03.49.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jul 2020 03:49:33 -0700 (PDT)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 Daniel Borkmann <daniel@iogearbox.net>, davem@davemloft.net
References: <20200706122951.48142-1-toke@redhat.com>
 <4f7b2b71-8b2a-3aea-637d-52b148af1802@iogearbox.net> <87lfjwl0w7.fsf@toke.dk>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <934a694b-ae3f-8247-c979-3d062b9804e4@gmail.com>
Date: Tue, 7 Jul 2020 19:49:23 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <87lfjwl0w7.fsf@toke.dk>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 07 Jul 2020 06:58:11 -0400
Subject: Re: [Cake] [PATCH net] vlan: consolidate VLAN parsing code and
 limit max parsing depth
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
Cc: Davide Caratti <dcaratti@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 cake@lists.bufferbloat.net, Cong Wang <xiyou.wangcong@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMjAyMC8wNy8wNyA3OjQ0LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4gRGFu
aWVsIEJvcmttYW5uIDxkYW5pZWxAaW9nZWFyYm94Lm5ldD4gd3JpdGVzOgo+PiBPbiA3LzYvMjAg
MjoyOSBQTSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4gVG9zaGlha2kgcG9p
bnRlZCBvdXQgdGhhdCB3ZSBub3cgaGF2ZSB0d28gdmVyeSBzaW1pbGFyIGZ1bmN0aW9ucyB0byBl
eHRyYWN0Cj4+PiB0aGUgTDMgcHJvdG9jb2wgbnVtYmVyIGluIHRoZSBwcmVzZW5jZSBvZiBWTEFO
IHRhZ3MuIEFuZCBEYW5pZWwgcG9pbnRlZCBvdXQKPj4+IHRoYXQgdGhlIHVuYm91bmRlZCBwYXJz
aW5nIGxvb3AgbWFrZXMgaXQgcG9zc2libGUgZm9yIG1hbGljaW91c2x5IGNyYWZ0ZWQKPj4+IHBh
Y2tldHMgdG8gbG9vcCB0aHJvdWdoIHBvdGVudGlhbGx5IGh1bmRyZWRzIG9mIHRhZ3MuCj4+Pgo+
Pj4gRml4IGJvdGggb2YgdGhlc2UgaXNzdWVzIGJ5IGNvbnNvbGlkYXRpbmcgdGhlIHR3byBwYXJz
aW5nIGZ1bmN0aW9ucyBhbmQKPj4+IGxpbWl0aW5nIHRoZSBWTEFOIHRhZyBwYXJzaW5nIHRvIGFu
IGFyYml0cmFyaWx5LWNob3NlbiwgYnV0IGhvcGVmdWxseQo+Pj4gY29uc2VydmF0aXZlLCBtYXgg
ZGVwdGggb2YgMzIgdGFncy4gQXMgcGFydCBvZiB0aGlzLCBzd2l0Y2ggb3Zlcgo+Pj4gX192bGFu
X2dldF9wcm90b2NvbCgpIHRvIHVzZSBza2JfaGVhZGVyX3BvaW50ZXIoKSBpbnN0ZWFkIG9mCj4+
PiBwc2tiX21heV9wdWxsKCksIHRvIGF2b2lkIHRoZSBwb3NzaWJsZSBzaWRlIGVmZmVjdHMgb2Yg
dGhlIGxhdHRlciBhbmQga2VlcAo+Pj4gdGhlIHNrYiBwb2ludGVyICdjb25zdCcgdGhyb3VnaCBh
bGwgdGhlIHBhcnNpbmcgZnVuY3Rpb25zLgo+Pj4KPj4+IFJlcG9ydGVkLWJ5OiBUb3NoaWFraSBN
YWtpdGEgPHRvc2hpYWtpLm1ha2l0YTFAZ21haWwuY29tPgo+Pj4gUmVwb3J0ZWQtYnk6IERhbmll
bCBCb3JrbWFubiA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+Cj4+PiBGaXhlczogZDdiZjJlYmViYzJi
ICgic2NoZWQ6IGNvbnNpc3RlbnRseSBoYW5kbGUgbGF5ZXIzIGhlYWRlciBhY2Nlc3NlcyBpbiB0
aGUgcHJlc2VuY2Ugb2YgVkxBTnMiKQo+Pj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4+PiAtLS0KPj4+ICAgIGluY2x1ZGUvbGludXgv
aWZfdmxhbi5oIHwgNTcgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9pZl92bGFuLmggYi9pbmNsdWRlL2xp
bnV4L2lmX3ZsYW4uaAo+Pj4gaW5kZXggNDI3YTViODU5N2MyLi44NTVkMTYxOTJlNmEgMTAwNjQ0
Cj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2lmX3ZsYW4uaAo+Pj4gKysrIGIvaW5jbHVkZS9saW51
eC9pZl92bGFuLmgKPj4+IEBAIC0yNSw2ICsyNSw4IEBACj4+PiAgICAjZGVmaW5lIFZMQU5fRVRI
X0RBVEFfTEVOCTE1MDAJLyogTWF4LiBvY3RldHMgaW4gcGF5bG9hZAkgKi8KPj4+ICAgICNkZWZp
bmUgVkxBTl9FVEhfRlJBTUVfTEVOCTE1MTgJLyogTWF4LiBvY3RldHMgaW4gZnJhbWUgc2FucyBG
Q1MgKi8KPj4+ICAgIAo+Pj4gKyNkZWZpbmUgVkxBTl9NQVhfREVQVEgJMzIJCS8qIE1heC4gbnVt
YmVyIG9mIG5lc3RlZCBWTEFOIHRhZ3MgcGFyc2VkICovCj4+PiArCj4+Cj4+IEFueSBpbnNpZ2h0
IG9uIGxpbWl0cyBvZiBuZXN0aW5nIHdydCBRaW5RLCBtYXliZSBmcm9tIHNwZWMgc2lkZT8KPiAK
PiBEb24ndCB0aGluayBzby4gV2lraXBlZGlhIHNheXMgdGhpczoKPiAKPiAgIDgwMi4xYWQgaXMg
dXB3YXJkIGNvbXBhdGlibGUgd2l0aCA4MDIuMVEuIEFsdGhvdWdoIDgwMi4xYWQgaXMgbGltaXRl
ZAo+ICAgdG8gdHdvIHRhZ3MsIHRoZXJlIGlzIG5vIGNlaWxpbmcgb24gdGhlIHN0YW5kYXJkIGxp
bWl0aW5nIGEgc2luZ2xlCj4gICBmcmFtZSB0byBtb3JlIHRoYW4gdHdvIHRhZ3MsIGFsbG93aW5n
IGZvciBncm93dGggaW4gdGhlIHByb3RvY29sLiBJbgo+ICAgcHJhY3RpY2UgU2VydmljZSBQcm92
aWRlciB0b3BvbG9naWVzIG9mdGVuIGFudGljaXBhdGUgYW5kIHV0aWxpemUKPiAgIGZyYW1lcyBo
YXZpbmcgbW9yZSB0aGFuIHR3byB0YWdzLgo+IAo+PiBXaHkgbm90IDggYXMgbWF4LCBmb3IgZXhh
bXBsZSAoSSdkIHByb2JhYmx5IGV2ZW4gY29uc2lkZXIgYSBkZXB0aCBsaWtlCj4+IHRoaXMgYXMg
dXR0ZXJseSBicm9rZW4gc2V0dXAgLi4pPwo+IAo+IEkgb3JpZ2luYWxseSB3ZW50IHdpdGggOCwg
YnV0IGNoaWNrZW5lZCBvdXQgYWZ0ZXIgc2VlaW5nIGhvdyBtYW55IHBsYWNlcwo+IGNhbGwgdGhl
IHBhcnNpbmcgZnVuY3Rpb24uIFdoaWxlIEkgZG8gYWdyZWUgdGhhdCBlaWdodCB0YWdzIGlzLi4u
IHNvbWV3aGF0Cj4gZXhjZXNzaXZlLi4uIEkgd2FzIHRyeWluZyB0byBtYWtlIGFic29sdXRlbHkg
c3VyZSBubyBvbmUgd291bGQgaGl0IHRoaXMKPiBsaW1pdCBpbiBub3JtYWwgdXNlLiBTZWUgYWxz
byBodHRwczovL3hrY2QuY29tLzExNzIvIDopCgpDb25zaWRlcmluZyB0aGF0IFhNSVRfUkVDVVJT
SU9OX0xJTUlUIGlzIDgsIEkgYWxzbyB0aGluayA4IGlzIHN1ZmZpY2llbnQuCgpUb3NoaWFraSBN
YWtpdGEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

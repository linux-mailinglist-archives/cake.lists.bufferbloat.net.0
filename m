Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0CF2144E4
	for <lists+cake@lfdr.de>; Sat,  4 Jul 2020 12:33:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7652A3CB39;
	Sat,  4 Jul 2020 06:33:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593858795;
	bh=DqfqIGW1tyH8UJeiCpcNNesXCV5458tyIqjf4+/44N8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FuugdWNGU49rVN8wKqYCfqk8S/U91DXq/kRG6SQTqjcz+eNRZViLdyHTgAI1Hw4at
	 BuFQRYKrmeUF8szbWQ4PVkDS2cXf3taEoYKCURfZ8RBzaV0hQ25psa+BkeUBW0UzHE
	 OmyAoTFIrTVxSmLy4NB1EGj2pSQkWs4jNNGBvEY0BASiUA9xsQjU+5gxPdSTcxnEkZ
	 aJnTnR0NX0XO8dhXTpZZLifK8UX6JMeWejufWhYymL49x53Ea+9/FT+CP3zqb/DHeD
	 RGgq38hCg2Qhu2cgf9YmUHzqdaiTQi71WEFzGK+KOu9XW5OaIK3mlxBBVpxjY/j6QA
	 VRzQSOhJQAryA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com
 [IPv6:2607:f8b0:4864:20::444])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 665433B2A4
 for <cake@lists.bufferbloat.net>; Fri,  3 Jul 2020 23:24:47 -0400 (EDT)
Received: by mail-pf1-x444.google.com with SMTP id s26so1028496pfm.4
 for <cake@lists.bufferbloat.net>; Fri, 03 Jul 2020 20:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5mjtDkLPbbWqz1WxWI3jz9F4TwIMnJE4lHWgCmjcrT8=;
 b=nwHd6oTzcZMCVUpmO+3djqT5VfjpG88BpEeYSXy1zd+7ldo5YYdTRXoKWuZQpwNiwb
 DHh+v4V4JT15uxorZFJ+matMI4Lmo3Aqn407PtlLvx5rPQsawEo7lYwcZ8Fkxy286yKC
 RBjqOYDMqj+1UaA6FhsTrPs0i7wfIJ8uG/8MuoNhNkIITYdAl1URdgCPrNxvY7oY4a7c
 nvP4g9nAS13K6RjtoDXHfUmsxdU0wmseyyXGhdmmCg8G334gq0y/kJi8kN/nP1grbKQN
 enHw9qM6WZBM/+z4H1NUNHUjNakAkThkvsIeW69F/mtJx67Y2oLb6ar+2H1SsIo3Z2kw
 6mNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5mjtDkLPbbWqz1WxWI3jz9F4TwIMnJE4lHWgCmjcrT8=;
 b=ZGIV0wTgI5CjKOe7mOpZPHlx+dpbG96/LNUJ4MAEPTU8qPVCSmW83N/Zze9P7I5hFf
 Xxg3dgvwqVa6fh3ywqeGB4BnAEREtMJ9P1OKEo1VaGLDBtx7nwO8V2rP1N8QVRHXdkRD
 wu8ueOs5EEOKK37X1nyDDANB3lMIP504ICtFuBl8ZwPDy0rvgAlA1zAbbjBMaZ4uNHVg
 PESg1Oj29C7LgCoYiXn4LrWDx8okEn4EZ/44P1C27L2E32s7+qFwuIhaNtG+h1Oe+E+a
 cJgWwzLUKeZkdDKj+0HSzfoTNBcKSR+UrDTuZUqKuyLnNt6yUlTAzam7ZC9aF5IS6cg8
 HvGw==
X-Gm-Message-State: AOAM531PNo2JF8OlNT3HNS2AN+oPnq2UCeGbPGouBm7pnYfyGqI3/PW8
 ww8wG3qzGaexaKZ7m5vQoGo=
X-Google-Smtp-Source: ABdhPJyxeU4S+oHmZU8ojh+tfKt8pancEU7IwdoBsEHkLyX0q/GWjEylWDF1ceooCk04EEgYVlhsQQ==
X-Received: by 2002:a63:4144:: with SMTP id o65mr31231619pga.8.1593833086574; 
 Fri, 03 Jul 2020 20:24:46 -0700 (PDT)
Received: from [192.168.1.18] (i223-218-245-204.s42.a013.ap.plala.or.jp.
 [223.218.245.204])
 by smtp.googlemail.com with ESMTPSA id l22sm11744906pjq.20.2020.07.03.20.24.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Jul 2020 20:24:45 -0700 (PDT)
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>
References: <20200703202643.12919-1-toke@redhat.com>
From: Toshiaki Makita <toshiaki.makita1@gmail.com>
Message-ID: <ada37763-16cd-7b51-f9ce-41e8d313bf96@gmail.com>
Date: Sat, 4 Jul 2020 12:24:41 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200703202643.12919-1-toke@redhat.com>
Content-Language: en-US
X-Mailman-Approved-At: Sat, 04 Jul 2020 06:33:14 -0400
Subject: Re: [Cake] [PATCH net v3] sched: consistently handle layer3 header
 accesses in the presence of VLANs
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
Cc: Lawrence Brakmo <brakmo@fb.com>, Davide Caratti <dcaratti@redhat.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Roman Mashak <mrv@mojatatu.com>, Ilya Ponetayev <i.ponetaev@ndmsystems.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, bpf@vger.kernel.org, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMjAyMC8wNy8wNCA1OjI2LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Ci4uLgo+
ICsvKiBBIGdldHRlciBmb3IgdGhlIFNLQiBwcm90b2NvbCBmaWVsZCB3aGljaCB3aWxsIGhhbmRs
ZSBWTEFOIHRhZ3MgY29uc2lzdGVudGx5Cj4gKyAqIHdoZXRoZXIgVkxBTiBhY2NlbGVyYXRpb24g
aXMgZW5hYmxlZCBvciBub3QuCj4gKyAqLwo+ICtzdGF0aWMgaW5saW5lIF9fYmUxNiBza2JfcHJv
dG9jb2woY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwgYm9vbCBza2lwX3ZsYW4pCj4gK3sKPiAr
CXVuc2lnbmVkIGludCBvZmZzZXQgPSBza2JfbWFjX29mZnNldChza2IpICsgc2l6ZW9mKHN0cnVj
dCBldGhoZHIpOwo+ICsJX19iZTE2IHByb3RvID0gc2tiLT5wcm90b2NvbDsKPiArCj4gKwlpZiAo
IXNraXBfdmxhbikKPiArCQkvKiBWTEFOIGFjY2VsZXJhdGlvbiBzdHJpcHMgdGhlIFZMQU4gaGVh
ZGVyIGZyb20gdGhlIHNrYiBhbmQKPiArCQkgKiBtb3ZlcyBpdCB0byBza2ItPnZsYW5fcHJvdG8K
PiArCQkgKi8KPiArCQlyZXR1cm4gc2tiX3ZsYW5fdGFnX3ByZXNlbnQoc2tiKSA/IHNrYi0+dmxh
bl9wcm90byA6IHByb3RvOwo+ICsKPiArCXdoaWxlIChldGhfdHlwZV92bGFuKHByb3RvKSkgewo+
ICsJCXN0cnVjdCB2bGFuX2hkciB2aGRyLCAqdmg7Cj4gKwo+ICsJCXZoID0gc2tiX2hlYWRlcl9w
b2ludGVyKHNrYiwgb2Zmc2V0LCBzaXplb2YodmhkciksICZ2aGRyKTsKPiArCQlpZiAoIXZoKQo+
ICsJCQlicmVhazsKPiArCj4gKwkJcHJvdG8gPSB2aC0+aF92bGFuX2VuY2Fwc3VsYXRlZF9wcm90
bzsKPiArCQlvZmZzZXQgKz0gc2l6ZW9mKHZoZHIpOwo+ICsJfQoKV2h5IGRvbid0IHlvdSB1c2Ug
X192bGFuX2dldF9wcm90b2NvbCgpIGhlcmU/IEl0IGxvb2tzIHF1aXRlIHNpbWlsYXIuCklzIHRo
ZXJlIGFueSBwcm9ibGVtIHdpdGggdXNpbmcgdGhhdD8KClRvc2hpYWtpIE1ha2l0YQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

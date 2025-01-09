Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 481D1AD007D
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 24E343CB50;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=xhkZcotfwfTAVgRJp/U63fT7Y/5n8xxscgrnm+9KiUk=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=mquxGzLYkgiUklzV6nePhsMowUig8qMPIKH/3TyfalAKGNaFHQ+yZwwuBC44jG1PV
	 tYMQXBXBaEhQ2DAVAVXsz3bMREYr0Epa6NihhslpsMQKtkJlt1BElxGwLvyOJwXtli
	 VefxjoqyHItoTlogfpMuVo6loAHfjBlwgAnrnOydRGkq7ShK55ig+Jhte0AbWJBhe2
	 axDeU1lfZ/4N+nxQhSpsDbVkXtNVTpvKbWyjmiEJcjDvVpYuCgB2ful2jjsm+7M5sG
	 tD3UO6ZjFuN0dW2VGwlCUs5m3JYQGJtvDMjyKMVdqxzF7LZhBj1+3bOVV5wFnA+nXk
	 Tz8asNOx28F3Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D076C3B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 07:11:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1736424700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6UX0y6Cp3sQrCE2nh5veQWVG7OewsvHWIAkmGcNadoM=;
 b=afR7TU/SrO6VLHwoJlMf58aZbcmwtTa2XzZ8lMrPFsrkY+8B50vdhvaArWO5WFHKuAL0t7
 oEYtK6HyHEczwsDvBkWnSFhthw2REmby8JyARPov8P1AhhiRPQdbW6y82ljOPycVkYqea4
 k5lYyYPkQxaMbHOjUmbU6Pu3RgyUcgM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-464-QVAmdHiCOtafciKL5FfqDQ-1; Thu, 09 Jan 2025 07:11:38 -0500
X-MC-Unique: QVAmdHiCOtafciKL5FfqDQ-1
X-Mimecast-MFC-AGG-ID: QVAmdHiCOtafciKL5FfqDQ
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-467be89d064so8756871cf.3
 for <cake@lists.bufferbloat.net>; Thu, 09 Jan 2025 04:11:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736424698; x=1737029498;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6UX0y6Cp3sQrCE2nh5veQWVG7OewsvHWIAkmGcNadoM=;
 b=gvJOzmYbWdElwSCwOsuct5l2gBZXlrxalt/+DXuOKL4An0appidR+7hxr2EaJxYPfu
 9IQfYFDHm7YH/FFAZrA4REEFwv5qAQoz8eMBG6QCkH+JlISyn2BYsVGbAHhHFY7+1SAm
 WmSaEU1hlDjD7qK6+zF2JSLP7lXY8mSLH/6VILUlH2TKhq0o8r20vQzwr0IWWCfWm7Jg
 FjksKWXuwWV8H3H8k+Ebu2B0X7C6lCv0JUdArlEI4bcUemzo/6jUt9Dve9cedJldutwd
 yU/8rbfP9DVnDGPdNeVRHgASy4Ta8v/Ue2tnWCcU387MW8Doud66Rm+/Q4hcIuX4BewY
 Xn0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUr2pkD2BBq2TET0xncPC6Fz5T8Phj9l5gmHMoxN1pSF0iCywJE0WY1u+R9fkhzBXF7D0l7@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyH/TDmO9DzpxT1/HcO1XxCJZWr6gKg4n1YHZI06fnSpEvN/xGf
 N1pgeMw5HYErreYwu4iHT9tBxpf+/8C/cJgPeoZQMbzNxrbplrKoSWeWVCFxh+7weFy9LWANkmf
 dDRXB2Byz7s62BaKWTo6vuQ2tpKfsyG86fK50bMc9eEMNsp4hW30Y0NY+e0U=
X-Gm-Gg: ASbGncsVHPxril9x4/T0ksajQ0QRlpZng/E2QTqoGxb1jzcRdHW4wqkAzxSwIErFe+l
 WF2HinwPIcfaixsfmGDe/9Gern+nQnWDxsfKuA2uDZIZY2XB6EAlpSH/eJklRYQaSUgCRyVLRb8
 n4oUfhC21nWEAKki5YaGBGqzbyJOwH+ZRu2Wyx+STeSCY93B8aoowlQIdvTV+b4zM2euHlGnERq
 jlxcEGbtI6RFF0L6OkBIZlLSaf9b3qgO+UFR5MqHWA++Xofco2SAedvZbirabF7PQ5rQ6B8zCJZ
 rgtAKehB
X-Received: by 2002:a05:622a:242:b0:467:54e5:ceaa with SMTP id
 d75a77b69052e-46c71079ea3mr95295191cf.9.1736424698328; 
 Thu, 09 Jan 2025 04:11:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqKaxlWIfd8ANpdNqMYSDWxka7BN+0vCp0a2UKun8ljcvGi8/js/ptgg8silyjum2+0LQEyA==
X-Received: by 2002:a05:622a:242:b0:467:54e5:ceaa with SMTP id
 d75a77b69052e-46c71079ea3mr95294811cf.9.1736424697984; 
 Thu, 09 Jan 2025 04:11:37 -0800 (PST)
Received: from [192.168.88.253] (146-241-2-244.dyn.eolo.it. [146.241.2.244])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-46a3eb30dc4sm206077481cf.76.2025.01.09.04.11.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2025 04:11:37 -0800 (PST)
Message-ID: <fb7a1324-41c6-4e10-a6a3-f16d96f44f65@redhat.com>
Date: Thu, 9 Jan 2025 13:11:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>
References: <20250107120105.70685-1-toke@redhat.com>
In-Reply-To: <20250107120105.70685-1-toke@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RjXIIQcY0EKTv4ZcUPgwMn-dK9oHTvY9OVDGlapIXzw_1736424698
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake] [PATCH net v2] sched: sch_cake: add bounds checks to
 host bulk flow fairness counts
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
From: Paolo Abeni via Cake <cake@lists.bufferbloat.net>
Reply-To: Paolo Abeni <pabeni@redhat.com>
Cc: netdev@vger.kernel.org, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 syzbot+f63600d288bfb7057424@syzkaller.appspotmail.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gMS83LzI1IDE6MDEgUE0sIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPiBFdmVu
IHRob3VnaCB3ZSBmaXhlZCBhIGxvZ2ljIGVycm9yIGluIHRoZSBjb21taXQgY2l0ZWQgYmVsb3cs
IHN5emJvdAo+IHN0aWxsIG1hbmFnZWQgdG8gdHJpZ2dlciBhbiB1bmRlcmZsb3cgb2YgdGhlIHBl
ci1ob3N0IGJ1bGsgZmxvdwo+IGNvdW50ZXJzLCBsZWFkaW5nIHRvIGFuIG91dCBvZiBib3VuZHMg
bWVtb3J5IGFjY2Vzcy4KPiAKPiBUbyBhdm9pZCBhbnkgc3VjaCBsb2dpYyBlcnJvcnMgY2F1c2lu
ZyBvdXQgb2YgYm91bmRzIG1lbW9yeSBhY2Nlc3NlcywKPiB0aGlzIGNvbW1pdCBmYWN0b3JzIG91
dCBhbGwgYWNjZXNzZXMgdG8gdGhlIHBlci1ob3N0IGJ1bGsgZmxvdyBjb3VudGVycwo+IHRvIGEg
c2VyaWVzIG9mIGhlbHBlcnMgdGhhdCBwZXJmb3JtIGJvdW5kcy1jaGVja2luZyBiZWZvcmUgYW55
Cj4gaW5jcmVtZW50cyBhbmQgZGVjcmVtZW50cy4gVGhpcyBhbHNvIGhhcyB0aGUgYmVuZWZpdCBv
ZiBpbXByb3ZpbmcKPiByZWFkYWJpbGl0eSBieSBtb3ZpbmcgdGhlIGNvbmRpdGlvbmFsIGNoZWNr
cyBmb3IgdGhlIGZsb3cgbW9kZSBpbnRvCj4gdGhlc2UgaGVscGVycywgaW5zdGVhZCBvZiBoYXZp
bmcgdGhlbSBzcHJlYWQgb3V0IHRocm91Z2hvdXQgdGhlCj4gY29kZSAod2hpY2ggd2FzIHRoZSBj
YXVzZSBvZiB0aGUgb3JpZ2luYWwgbG9naWMgZXJyb3IpLgo+IAo+IHYyOgo+IC0gUmVtb3ZlIG5v
dy11bnVzZWQgc3JjaG9zdCBhbmQgZHN0aG9zdCBsb2NhbCB2YXJpYWJsZXMgaW4gY2FrZV9kZXF1
ZXVlKCkKClNtYWxsIG5pdDogdGhlIGNoYW5nZWxvZyBzaG91bGQgY29tZSBhZnRlciB0aGUgJy0t
LScgc2VwYXJhdG9yLiBObyBuZWVkCnRvIHJlcG9zdCBqdXN0IGZvciB0aGlzLgoKPiBGaXhlczog
NTQ2ZWE4NGQwN2UzICgic2NoZWQ6IHNjaF9jYWtlOiBmaXggYnVsayBmbG93IGFjY291bnRpbmcg
bG9naWMgZm9yIGhvc3QgZmFpcm5lc3MiKQo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrZjYzNjAwZDI4
OGJmYjcwNTc0MjRAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+IFNpZ25lZC1vZmYtYnk6IFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IC0tLQo+ICBuZXQvc2No
ZWQvc2NoX2Nha2UuYyB8IDE0MCArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCA2NSBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2No
X2Nha2UuYwo+IGluZGV4IDhkOGIyZGI0NjUzYy4uMmMyZTJhNjdmM2IyIDEwMDY0NAo+IC0tLSBh
L25ldC9zY2hlZC9zY2hfY2FrZS5jCj4gKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiBAQCAt
NjI3LDYgKzYyNyw2MyBAQCBzdGF0aWMgYm9vbCBjYWtlX2Rkc3QoaW50IGZsb3dfbW9kZSkKPiAg
CXJldHVybiAoZmxvd19tb2RlICYgQ0FLRV9GTE9XX0RVQUxfRFNUKSA9PSBDQUtFX0ZMT1dfRFVB
TF9EU1Q7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGNha2VfZGVjX3NyY2hvc3RfYnVsa19mbG93
X2NvdW50KHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLAo+ICsJCQkJCSAgICAgc3RydWN0IGNha2Vf
ZmxvdyAqZmxvdywKPiArCQkJCQkgICAgIGludCBmbG93X21vZGUpCj4gK3sKPiArCWlmIChsaWtl
bHkoY2FrZV9kc3JjKGZsb3dfbW9kZSkgJiYKPiArCQkgICBxLT5ob3N0c1tmbG93LT5zcmNob3N0
XS5zcmNob3N0X2J1bGtfZmxvd19jb3VudCkpCj4gKwkJcS0+aG9zdHNbZmxvdy0+c3JjaG9zdF0u
c3JjaG9zdF9idWxrX2Zsb3dfY291bnQtLTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgY2FrZV9p
bmNfc3JjaG9zdF9idWxrX2Zsb3dfY291bnQoc3RydWN0IGNha2VfdGluX2RhdGEgKnEsCj4gKwkJ
CQkJICAgICBzdHJ1Y3QgY2FrZV9mbG93ICpmbG93LAo+ICsJCQkJCSAgICAgaW50IGZsb3dfbW9k
ZSkKPiArewo+ICsJaWYgKGxpa2VseShjYWtlX2RzcmMoZmxvd19tb2RlKSAmJgo+ICsJCSAgIHEt
Pmhvc3RzW2Zsb3ctPnNyY2hvc3RdLnNyY2hvc3RfYnVsa19mbG93X2NvdW50IDwgQ0FLRV9RVUVV
RVMpKQo+ICsJCXEtPmhvc3RzW2Zsb3ctPnNyY2hvc3RdLnNyY2hvc3RfYnVsa19mbG93X2NvdW50
Kys7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGNha2VfZGVjX2RzdGhvc3RfYnVsa19mbG93X2Nv
dW50KHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLAo+ICsJCQkJCSAgICAgc3RydWN0IGNha2VfZmxv
dyAqZmxvdywKPiArCQkJCQkgICAgIGludCBmbG93X21vZGUpCj4gK3sKPiArCWlmIChsaWtlbHko
Y2FrZV9kZHN0KGZsb3dfbW9kZSkgJiYKPiArCQkgICBxLT5ob3N0c1tmbG93LT5kc3Rob3N0XS5k
c3Rob3N0X2J1bGtfZmxvd19jb3VudCkpCj4gKwkJcS0+aG9zdHNbZmxvdy0+ZHN0aG9zdF0uZHN0
aG9zdF9idWxrX2Zsb3dfY291bnQtLTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgY2FrZV9pbmNf
ZHN0aG9zdF9idWxrX2Zsb3dfY291bnQoc3RydWN0IGNha2VfdGluX2RhdGEgKnEsCj4gKwkJCQkJ
ICAgICBzdHJ1Y3QgY2FrZV9mbG93ICpmbG93LAo+ICsJCQkJCSAgICAgaW50IGZsb3dfbW9kZSkK
PiArewo+ICsJaWYgKGxpa2VseShjYWtlX2Rkc3QoZmxvd19tb2RlKSAmJgo+ICsJCSAgIHEtPmhv
c3RzW2Zsb3ctPmRzdGhvc3RdLmRzdGhvc3RfYnVsa19mbG93X2NvdW50IDwgQ0FLRV9RVUVVRVMp
KQo+ICsJCXEtPmhvc3RzW2Zsb3ctPmRzdGhvc3RdLmRzdGhvc3RfYnVsa19mbG93X2NvdW50Kys7
Cj4gK30KPiArCj4gK3N0YXRpYyB1MTYgY2FrZV9nZXRfZmxvd19xdWFudHVtKHN0cnVjdCBjYWtl
X3Rpbl9kYXRhICpxLAo+ICsJCQkJIHN0cnVjdCBjYWtlX2Zsb3cgKmZsb3csCj4gKwkJCQkgaW50
IGZsb3dfbW9kZSkKPiArewo+ICsJdTE2IGhvc3RfbG9hZCA9IDE7Cj4gKwo+ICsJaWYgKGNha2Vf
ZHNyYyhmbG93X21vZGUpKQo+ICsJCWhvc3RfbG9hZCA9IG1heChob3N0X2xvYWQsCj4gKwkJCQlx
LT5ob3N0c1tmbG93LT5zcmNob3N0XS5zcmNob3N0X2J1bGtfZmxvd19jb3VudCk7Cj4gKwo+ICsJ
aWYgKGNha2VfZGRzdChmbG93X21vZGUpKQo+ICsJCWhvc3RfbG9hZCA9IG1heChob3N0X2xvYWQs
Cj4gKwkJCQlxLT5ob3N0c1tmbG93LT5kc3Rob3N0XS5kc3Rob3N0X2J1bGtfZmxvd19jb3VudCk7
Cj4gKwo+ICsJLyogVGhlIGdldF9yYW5kb21fdTE2KCkgaXMgYSB3YXkgdG8gYXBwbHkgZGl0aGVy
aW5nIHRvIGF2b2lkCj4gKwkgKiBhY2N1bXVsYXRpbmcgcm91bmRvZmYgZXJyb3JzCj4gKwkgKi8K
PiArCXJldHVybiAocS0+Zmxvd19xdWFudHVtICogcXVhbnR1bV9kaXZbaG9zdF9sb2FkXSArCj4g
KwkJZ2V0X3JhbmRvbV91MTYoKSkgPj4gMTY7CgpkaXRoZXJpbmcgaXMgbm93IGFwcGxpZWQgb24g
Ym90aCBlbnF1ZXVlIGFuZCBkZXF1ZXVlLCB3aGlsZSBwcmlvciB0bwp0aGlzIHBhdGNoIGl0IG9u
bHkgaGFwcGVuZWQgb24gZGVxdWV1ZS4gSXMgdGhhdCBpbnRlbnRpb25hbD8gY2FuJ3QgbGVhZAp0
byAoc21hbGwpIGZsb3dfZGVmaWNpdCBpbmNyZWFzZT8KClRoYW5rcyEKClBhb2xvCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E05A06127
	for <lists+cake@lfdr.de>; Wed,  8 Jan 2025 17:10:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1A8203CB39;
	Wed,  8 Jan 2025 11:10:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736352651;
	bh=h9zp882j0MaXLc7/KJ5HJJU7TZRjQixLEVWEBZCSakU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=V3jZhkzEbF+YoxuRhtGJ0bxC4s2h2/XpefMzrIPFhEaVwTWX+WtngSpNPdTYXpBIz
	 7a5PSqFhD7qxI38fTGgdT+011tndYjaFGF/cOxlV64Qeay6sKhxkp0Mb5Z0EaSzzaS
	 KjBKzJXYwgTg0UI6U86oGxNS038cK0LvpuNPm1JjAayFgMyT3iMolkrWLK6/8t8yRY
	 FplRxrQROj9//9bXTW2VAiL+XvM1Bk/KFtpElnEFpHPYzeqcDOvYHEODZGilHsyFZD
	 x4Hg3uCyRCG/6FqLAdijr9XRu1e1RYj82+CnCiD4hDSzACR///RJMaAHXsDIgckvwD
	 CGeqdBwvFLNtg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 12F073B29D
 for <cake@lists.bufferbloat.net>; Wed,  8 Jan 2025 11:10:49 -0500 (EST)
Received: by mail-oo1-xc33.google.com with SMTP id
 006d021491bc7-5f321876499so535925eaf.1
 for <cake@lists.bufferbloat.net>; Wed, 08 Jan 2025 08:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736352648; x=1736957448; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DPtSTUIAPGBBTRy2J0lBosbiPvH9eGM/VsJyPdKLfFo=;
 b=jRxniFgrtRQww6XfSZLmGaafO+wV3sOO8Xpy9SKgU3l9HURYImvOZtuUr5ryQzkMAV
 hzqHemQyfuRkSy8oI2XFgALqiy5VnPEFnN+rRUY3XBeqbju5Z95wlZJf9PS34Xi8jcLZ
 3IjlEFEG5kAZun8rWNia8IjusBQoEH4gI2HbTsZYgkj94Jzo0k1dZ71NO1ghE7xRSB9e
 SQE5jWhJLodqcIfaITy6gtOOuH5TsbFrQzQFI1j1lp72UdY3RLAXbX+kaYREuNSsDNpg
 yFS6ulX9gJ40DltlYdPj16wUZrHnhU6MZze4XAHKcwGjZcTFoEyM5JmeBt1IWjglHHu6
 JvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736352648; x=1736957448;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DPtSTUIAPGBBTRy2J0lBosbiPvH9eGM/VsJyPdKLfFo=;
 b=uz4AyhjnOgxgwilUhXydY7ihsQllAACRdOdoAq8WHM4+v3uBgrdvv5Z1eRBT7Sl2ne
 zccI6SN69nghoMzLcfv8wkKwzJLnAn2Xv3q9GuXOP+l1M3/retKofz/uGrpL+MuTgXcL
 PMQJHT+XpV0SoqNHfGJjtXtUq97ijtKcDcBGSVjpivbMws6hnkcFshIyGnLVZirRm5vQ
 ZYsLoBRa3T4PN2lDGE2OSY/DGExEcaGFQgzdo3/8XDj4w2zDxgsAXPQI5Ox5HeeFnB8U
 7wupt7n5xmB+qjk5EsN5NtVfWqq/tZFYG+OIC+Gg0vf4zMw66ykWudq3i973QwHTOk7o
 YA4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVRftRCPQWfT8TI50CkZE/I8eGYY7PUVhzs9hdkhLXxInVOlCRM9KPPHvFqhoppo3eCqp80@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzdzGs+TSVu3gJBH2uIAMFSfOOKsliMItlLJ7u663L+4mANa8nV
 Wu0qTQ1mswFSIBwOdPnEA7OBkQTGei6GD1SEZ20uooISmMR+hPmOJJ80bKEBs6jjx2S1wmUu6AR
 +WvugemgFlBRICAEr+sKMDTbnxEY=
X-Gm-Gg: ASbGncsSswNX3BNuUN8F03NrpIVohlB5EcPt14W/cjOwvBZptfgMcgfHtrJ2iM/yoeJ
 qFxlZVGgHgruHQe/eUs23xbB8HMTSvTzjEAUM8adLXDWBiOc/JaH29eP1wpcehANssk3zx4Mk
X-Google-Smtp-Source: AGHT+IFVL68aUt8UrL4CyInyAhni4Rg+m1OY/4cJ3XWsQSRbrFaxVPlTTBniUJ0kE/3mL4m9St0ZQe/D88Z9yTizv20=
X-Received: by 2002:a05:6870:2f0b:b0:297:683:8b5b with SMTP id
 586e51a60fabf-2a9eab27e66mr3896617fac.10.1736352648176; Wed, 08 Jan 2025
 08:10:48 -0800 (PST)
MIME-Version: 1.0
References: <20250107120105.70685-1-toke@redhat.com>
In-Reply-To: <20250107120105.70685-1-toke@redhat.com>
Date: Wed, 8 Jan 2025 08:10:36 -0800
X-Gm-Features: AbW1kvZ1n8EFC7vOnu3ElN0IgDGZKcpL6qnOmOY6nRxve3H4wPGpS2_wjBxL_mQ
Message-ID: <CAA93jw7zsuC-TNK-XFUzXk1H7npcPgiaCg+dybNV5-s3ji5Pzw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 syzbot+f63600d288bfb7057424@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBKYW4gNywgMjAyNSBhdCA0OjAx4oCvQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IHZpYSBDYWtlCjxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4KPiBFdmVuIHRo
b3VnaCB3ZSBmaXhlZCBhIGxvZ2ljIGVycm9yIGluIHRoZSBjb21taXQgY2l0ZWQgYmVsb3csIHN5
emJvdAo+IHN0aWxsIG1hbmFnZWQgdG8gdHJpZ2dlciBhbiB1bmRlcmZsb3cgb2YgdGhlIHBlci1o
b3N0IGJ1bGsgZmxvdwo+IGNvdW50ZXJzLCBsZWFkaW5nIHRvIGFuIG91dCBvZiBib3VuZHMgbWVt
b3J5IGFjY2Vzcy4KPgo+IFRvIGF2b2lkIGFueSBzdWNoIGxvZ2ljIGVycm9ycyBjYXVzaW5nIG91
dCBvZiBib3VuZHMgbWVtb3J5IGFjY2Vzc2VzLAo+IHRoaXMgY29tbWl0IGZhY3RvcnMgb3V0IGFs
bCBhY2Nlc3NlcyB0byB0aGUgcGVyLWhvc3QgYnVsayBmbG93IGNvdW50ZXJzCj4gdG8gYSBzZXJp
ZXMgb2YgaGVscGVycyB0aGF0IHBlcmZvcm0gYm91bmRzLWNoZWNraW5nIGJlZm9yZSBhbnkKPiBp
bmNyZW1lbnRzIGFuZCBkZWNyZW1lbnRzLiBUaGlzIGFsc28gaGFzIHRoZSBiZW5lZml0IG9mIGlt
cHJvdmluZwo+IHJlYWRhYmlsaXR5IGJ5IG1vdmluZyB0aGUgY29uZGl0aW9uYWwgY2hlY2tzIGZv
ciB0aGUgZmxvdyBtb2RlIGludG8KPiB0aGVzZSBoZWxwZXJzLCBpbnN0ZWFkIG9mIGhhdmluZyB0
aGVtIHNwcmVhZCBvdXQgdGhyb3VnaG91dCB0aGUKPiBjb2RlICh3aGljaCB3YXMgdGhlIGNhdXNl
IG9mIHRoZSBvcmlnaW5hbCBsb2dpYyBlcnJvcikuCj4KPiB2MjoKPiAtIFJlbW92ZSBub3ctdW51
c2VkIHNyY2hvc3QgYW5kIGRzdGhvc3QgbG9jYWwgdmFyaWFibGVzIGluIGNha2VfZGVxdWV1ZSgp
Cj4KPiBGaXhlczogNTQ2ZWE4NGQwN2UzICgic2NoZWQ6IHNjaF9jYWtlOiBmaXggYnVsayBmbG93
IGFjY291bnRpbmcgbG9naWMgZm9yIGhvc3QgZmFpcm5lc3MiKQo+IFJlcG9ydGVkLWJ5OiBzeXpi
b3QrZjYzNjAwZDI4OGJmYjcwNTc0MjRAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+IFNpZ25l
ZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IC0t
LQo+ICBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDE0MCArKysrKysrKysrKysrKysrKysrKysrKy0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCA2
NSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25l
dC9zY2hlZC9zY2hfY2FrZS5jCj4gaW5kZXggOGQ4YjJkYjQ2NTNjLi4yYzJlMmE2N2YzYjIgMTAw
NjQ0Cj4gLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiArKysgYi9uZXQvc2NoZWQvc2NoX2Nh
a2UuYwo+IEBAIC02MjcsNiArNjI3LDYzIEBAIHN0YXRpYyBib29sIGNha2VfZGRzdChpbnQgZmxv
d19tb2RlKQo+ICAgICAgICAgcmV0dXJuIChmbG93X21vZGUgJiBDQUtFX0ZMT1dfRFVBTF9EU1Qp
ID09IENBS0VfRkxPV19EVUFMX0RTVDsKPiAgfQo+Cj4gK3N0YXRpYyB2b2lkIGNha2VfZGVjX3Ny
Y2hvc3RfYnVsa19mbG93X2NvdW50KHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBjYWtlX2Zsb3cgKmZs
b3csCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IGZs
b3dfbW9kZSkKPiArewo+ICsgICAgICAgaWYgKGxpa2VseShjYWtlX2RzcmMoZmxvd19tb2RlKSAm
Jgo+ICsgICAgICAgICAgICAgICAgICBxLT5ob3N0c1tmbG93LT5zcmNob3N0XS5zcmNob3N0X2J1
bGtfZmxvd19jb3VudCkpCj4gKyAgICAgICAgICAgICAgIHEtPmhvc3RzW2Zsb3ctPnNyY2hvc3Rd
LnNyY2hvc3RfYnVsa19mbG93X2NvdW50LS07Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGNha2Vf
aW5jX3NyY2hvc3RfYnVsa19mbG93X2NvdW50KHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBjYWtlX2Zs
b3cgKmZsb3csCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aW50IGZsb3dfbW9kZSkKPiArewo+ICsgICAgICAgaWYgKGxpa2VseShjYWtlX2RzcmMoZmxvd19t
b2RlKSAmJgo+ICsgICAgICAgICAgICAgICAgICBxLT5ob3N0c1tmbG93LT5zcmNob3N0XS5zcmNo
b3N0X2J1bGtfZmxvd19jb3VudCA8IENBS0VfUVVFVUVTKSkKPiArICAgICAgICAgICAgICAgcS0+
aG9zdHNbZmxvdy0+c3JjaG9zdF0uc3JjaG9zdF9idWxrX2Zsb3dfY291bnQrKzsKPiArfQo+ICsK
PiArc3RhdGljIHZvaWQgY2FrZV9kZWNfZHN0aG9zdF9idWxrX2Zsb3dfY291bnQoc3RydWN0IGNh
a2VfdGluX2RhdGEgKnEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IGNha2VfZmxvdyAqZmxvdywKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBpbnQgZmxvd19tb2RlKQo+ICt7Cj4gKyAgICAgICBpZiAobGlr
ZWx5KGNha2VfZGRzdChmbG93X21vZGUpICYmCj4gKyAgICAgICAgICAgICAgICAgIHEtPmhvc3Rz
W2Zsb3ctPmRzdGhvc3RdLmRzdGhvc3RfYnVsa19mbG93X2NvdW50KSkKPiArICAgICAgICAgICAg
ICAgcS0+aG9zdHNbZmxvdy0+ZHN0aG9zdF0uZHN0aG9zdF9idWxrX2Zsb3dfY291bnQtLTsKPiAr
fQo+ICsKPiArc3RhdGljIHZvaWQgY2FrZV9pbmNfZHN0aG9zdF9idWxrX2Zsb3dfY291bnQoc3Ry
dWN0IGNha2VfdGluX2RhdGEgKnEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGNha2VfZmxvdyAqZmxvdywKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgZmxvd19tb2RlKQo+ICt7Cj4gKyAgICAgICBp
ZiAobGlrZWx5KGNha2VfZGRzdChmbG93X21vZGUpICYmCj4gKyAgICAgICAgICAgICAgICAgIHEt
Pmhvc3RzW2Zsb3ctPmRzdGhvc3RdLmRzdGhvc3RfYnVsa19mbG93X2NvdW50IDwgQ0FLRV9RVUVV
RVMpKQo+ICsgICAgICAgICAgICAgICBxLT5ob3N0c1tmbG93LT5kc3Rob3N0XS5kc3Rob3N0X2J1
bGtfZmxvd19jb3VudCsrOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdTE2IGNha2VfZ2V0X2Zsb3dfcXVh
bnR1bShzdHJ1Y3QgY2FrZV90aW5fZGF0YSAqcSwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzdHJ1Y3QgY2FrZV9mbG93ICpmbG93LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGludCBmbG93X21vZGUpCj4gK3sKPiArICAgICAgIHUxNiBob3N0X2xvYWQgPSAx
Owo+ICsKPiArICAgICAgIGlmIChjYWtlX2RzcmMoZmxvd19tb2RlKSkKPiArICAgICAgICAgICAg
ICAgaG9zdF9sb2FkID0gbWF4KGhvc3RfbG9hZCwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHEtPmhvc3RzW2Zsb3ctPnNyY2hvc3RdLnNyY2hvc3RfYnVsa19mbG93X2NvdW50KTsK
PiArCj4gKyAgICAgICBpZiAoY2FrZV9kZHN0KGZsb3dfbW9kZSkpCj4gKyAgICAgICAgICAgICAg
IGhvc3RfbG9hZCA9IG1heChob3N0X2xvYWQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBxLT5ob3N0c1tmbG93LT5kc3Rob3N0XS5kc3Rob3N0X2J1bGtfZmxvd19jb3VudCk7Cj4g
Kwo+ICsgICAgICAgLyogVGhlIGdldF9yYW5kb21fdTE2KCkgaXMgYSB3YXkgdG8gYXBwbHkgZGl0
aGVyaW5nIHRvIGF2b2lkCj4gKyAgICAgICAgKiBhY2N1bXVsYXRpbmcgcm91bmRvZmYgZXJyb3Jz
Cj4gKyAgICAgICAgKi8KPiArICAgICAgIHJldHVybiAocS0+Zmxvd19xdWFudHVtICogcXVhbnR1
bV9kaXZbaG9zdF9sb2FkXSArCj4gKyAgICAgICAgICAgICAgIGdldF9yYW5kb21fdTE2KCkpID4+
IDE2Owo+ICt9Cj4gKwo+ICBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3QgY2FrZV90aW5fZGF0
YSAqcSwgY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiAgICAgICAgICAgICAgICAgICAgICBp
bnQgZmxvd19tb2RlLCB1MTYgZmxvd19vdmVycmlkZSwgdTE2IGhvc3Rfb3ZlcnJpZGUpCj4gIHsK
PiBAQCAtNzczLDEwICs4MzAsOCBAQCBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3QgY2FrZV90
aW5fZGF0YSAqcSwgY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiAgICAgICAgICAgICAgICAg
YWxsb2NhdGVfZHN0ID0gY2FrZV9kZHN0KGZsb3dfbW9kZSk7Cj4KPiAgICAgICAgICAgICAgICAg
aWYgKHEtPmZsb3dzW291dGVyX2hhc2ggKyBrXS5zZXQgPT0gQ0FLRV9TRVRfQlVMSykgewo+IC0g
ICAgICAgICAgICAgICAgICAgICAgIGlmIChhbGxvY2F0ZV9zcmMpCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBxLT5ob3N0c1txLT5mbG93c1tyZWR1Y2VkX2hhc2hdLnNyY2hvc3Rd
LnNyY2hvc3RfYnVsa19mbG93X2NvdW50LS07Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgaWYg
KGFsbG9jYXRlX2RzdCkKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHEtPmhvc3Rz
W3EtPmZsb3dzW3JlZHVjZWRfaGFzaF0uZHN0aG9zdF0uZHN0aG9zdF9idWxrX2Zsb3dfY291bnQt
LTsKPiArICAgICAgICAgICAgICAgICAgICAgICBjYWtlX2RlY19zcmNob3N0X2J1bGtfZmxvd19j
b3VudChxLCAmcS0+Zmxvd3Nbb3V0ZXJfaGFzaCArIGtdLCBmbG93X21vZGUpOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNha2VfZGVjX2RzdGhvc3RfYnVsa19mbG93X2NvdW50KHEsICZxLT5m
bG93c1tvdXRlcl9oYXNoICsga10sIGZsb3dfbW9kZSk7Cj4gICAgICAgICAgICAgICAgIH0KPiAg
Zm91bmQ6Cj4gICAgICAgICAgICAgICAgIC8qIHJlc2VydmUgcXVldWUgZm9yIGZ1dHVyZSBwYWNr
ZXRzIGluIHNhbWUgZmxvdyAqLwo+IEBAIC04MDEsOSArODU2LDEwIEBAIHN0YXRpYyB1MzIgY2Fr
ZV9oYXNoKHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpxLCBjb25zdCBzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHEtPmhvc3RzW291dGVyX2hhc2ggKyBrXS5zcmNo
b3N0X3RhZyA9IHNyY2hvc3RfaGFzaDsKPiAgZm91bmRfc3JjOgo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIHNyY2hvc3RfaWR4ID0gb3V0ZXJfaGFzaCArIGs7Cj4gLSAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKHEtPmZsb3dzW3JlZHVjZWRfaGFzaF0uc2V0ID09IENBS0VfU0VUX0JVTEspCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBxLT5ob3N0c1tzcmNob3N0X2lkeF0uc3Jj
aG9zdF9idWxrX2Zsb3dfY291bnQrKzsKPiAgICAgICAgICAgICAgICAgICAgICAgICBxLT5mbG93
c1tyZWR1Y2VkX2hhc2hdLnNyY2hvc3QgPSBzcmNob3N0X2lkeDsKPiArCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgaWYgKHEtPmZsb3dzW3JlZHVjZWRfaGFzaF0uc2V0ID09IENBS0VfU0VUX0JV
TEspCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYWtlX2luY19zcmNob3N0X2J1
bGtfZmxvd19jb3VudChxLCAmcS0+Zmxvd3NbcmVkdWNlZF9oYXNoXSwgZmxvd19tb2RlKTsKPiAg
ICAgICAgICAgICAgICAgfQo+Cj4gICAgICAgICAgICAgICAgIGlmIChhbGxvY2F0ZV9kc3QpIHsK
PiBAQCAtODI0LDkgKzg4MCwxMCBAQCBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3QgY2FrZV90
aW5fZGF0YSAqcSwgY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBxLT5ob3N0c1tvdXRlcl9oYXNoICsga10uZHN0aG9zdF90YWcgPSBkc3Rob3N0X2hh
c2g7Cj4gIGZvdW5kX2RzdDoKPiAgICAgICAgICAgICAgICAgICAgICAgICBkc3Rob3N0X2lkeCA9
IG91dGVyX2hhc2ggKyBrOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIGlmIChxLT5mbG93c1ty
ZWR1Y2VkX2hhc2hdLnNldCA9PSBDQUtFX1NFVF9CVUxLKQo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcS0+aG9zdHNbZHN0aG9zdF9pZHhdLmRzdGhvc3RfYnVsa19mbG93X2NvdW50
Kys7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcS0+Zmxvd3NbcmVkdWNlZF9oYXNoXS5kc3Ro
b3N0ID0gZHN0aG9zdF9pZHg7Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChxLT5m
bG93c1tyZWR1Y2VkX2hhc2hdLnNldCA9PSBDQUtFX1NFVF9CVUxLKQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2FrZV9pbmNfZHN0aG9zdF9idWxrX2Zsb3dfY291bnQocSwgJnEt
PmZsb3dzW3JlZHVjZWRfaGFzaF0sIGZsb3dfbW9kZSk7Cj4gICAgICAgICAgICAgICAgIH0KPiAg
ICAgICAgIH0KPgo+IEBAIC0xODM5LDEwICsxODk2LDYgQEAgc3RhdGljIHMzMiBjYWtlX2VucXVl
dWUoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IFFkaXNjICpzY2gsCj4KPiAgICAgICAgIC8q
IGZsb3djaGFpbiAqLwo+ICAgICAgICAgaWYgKCFmbG93LT5zZXQgfHwgZmxvdy0+c2V0ID09IENB
S0VfU0VUX0RFQ0FZSU5HKSB7Cj4gLSAgICAgICAgICAgICAgIHN0cnVjdCBjYWtlX2hvc3QgKnNy
Y2hvc3QgPSAmYi0+aG9zdHNbZmxvdy0+c3JjaG9zdF07Cj4gLSAgICAgICAgICAgICAgIHN0cnVj
dCBjYWtlX2hvc3QgKmRzdGhvc3QgPSAmYi0+aG9zdHNbZmxvdy0+ZHN0aG9zdF07Cj4gLSAgICAg
ICAgICAgICAgIHUxNiBob3N0X2xvYWQgPSAxOwo+IC0KPiAgICAgICAgICAgICAgICAgaWYgKCFm
bG93LT5zZXQpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBsaXN0X2FkZF90YWlsKCZmbG93
LT5mbG93Y2hhaW4sICZiLT5uZXdfZmxvd3MpOwo+ICAgICAgICAgICAgICAgICB9IGVsc2Ugewo+
IEBAIC0xODUyLDE4ICsxOTA1LDggQEAgc3RhdGljIHMzMiBjYWtlX2VucXVldWUoc3RydWN0IHNr
X2J1ZmYgKnNrYiwgc3RydWN0IFFkaXNjICpzY2gsCj4gICAgICAgICAgICAgICAgIGZsb3ctPnNl
dCA9IENBS0VfU0VUX1NQQVJTRTsKPiAgICAgICAgICAgICAgICAgYi0+c3BhcnNlX2Zsb3dfY291
bnQrKzsKPgo+IC0gICAgICAgICAgICAgICBpZiAoY2FrZV9kc3JjKHEtPmZsb3dfbW9kZSkpCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgaG9zdF9sb2FkID0gbWF4KGhvc3RfbG9hZCwgc3JjaG9z
dC0+c3JjaG9zdF9idWxrX2Zsb3dfY291bnQpOwo+IC0KPiAtICAgICAgICAgICAgICAgaWYgKGNh
a2VfZGRzdChxLT5mbG93X21vZGUpKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGhvc3RfbG9h
ZCA9IG1heChob3N0X2xvYWQsIGRzdGhvc3QtPmRzdGhvc3RfYnVsa19mbG93X2NvdW50KTsKPiAt
Cj4gLSAgICAgICAgICAgICAgIGZsb3ctPmRlZmljaXQgPSAoYi0+Zmxvd19xdWFudHVtICoKPiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBxdWFudHVtX2Rpdltob3N0X2xvYWRdKSA+
PiAxNjsKPiArICAgICAgICAgICAgICAgZmxvdy0+ZGVmaWNpdCA9IGNha2VfZ2V0X2Zsb3dfcXVh
bnR1bShiLCBmbG93LCBxLT5mbG93X21vZGUpOwo+ICAgICAgICAgfSBlbHNlIGlmIChmbG93LT5z
ZXQgPT0gQ0FLRV9TRVRfU1BBUlNFX1dBSVQpIHsKPiAtICAgICAgICAgICAgICAgc3RydWN0IGNh
a2VfaG9zdCAqc3JjaG9zdCA9ICZiLT5ob3N0c1tmbG93LT5zcmNob3N0XTsKPiAtICAgICAgICAg
ICAgICAgc3RydWN0IGNha2VfaG9zdCAqZHN0aG9zdCA9ICZiLT5ob3N0c1tmbG93LT5kc3Rob3N0
XTsKPiAtCj4gICAgICAgICAgICAgICAgIC8qIHRoaXMgZmxvdyB3YXMgZW1wdHksIGFjY291bnRl
ZCBhcyBhIHNwYXJzZSBmbG93LCBidXQgYWN0dWFsbHkKPiAgICAgICAgICAgICAgICAgICogaW4g
dGhlIGJ1bGsgcm90YXRpb24uCj4gICAgICAgICAgICAgICAgICAqLwo+IEBAIC0xODcxLDEyICsx
OTE0LDggQEAgc3RhdGljIHMzMiBjYWtlX2VucXVldWUoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3Ry
dWN0IFFkaXNjICpzY2gsCj4gICAgICAgICAgICAgICAgIGItPnNwYXJzZV9mbG93X2NvdW50LS07
Cj4gICAgICAgICAgICAgICAgIGItPmJ1bGtfZmxvd19jb3VudCsrOwo+Cj4gLSAgICAgICAgICAg
ICAgIGlmIChjYWtlX2RzcmMocS0+Zmxvd19tb2RlKSkKPiAtICAgICAgICAgICAgICAgICAgICAg
ICBzcmNob3N0LT5zcmNob3N0X2J1bGtfZmxvd19jb3VudCsrOwo+IC0KPiAtICAgICAgICAgICAg
ICAgaWYgKGNha2VfZGRzdChxLT5mbG93X21vZGUpKQo+IC0gICAgICAgICAgICAgICAgICAgICAg
IGRzdGhvc3QtPmRzdGhvc3RfYnVsa19mbG93X2NvdW50Kys7Cj4gLQo+ICsgICAgICAgICAgICAg
ICBjYWtlX2luY19zcmNob3N0X2J1bGtfZmxvd19jb3VudChiLCBmbG93LCBxLT5mbG93X21vZGUp
Owo+ICsgICAgICAgICAgICAgICBjYWtlX2luY19kc3Rob3N0X2J1bGtfZmxvd19jb3VudChiLCBm
bG93LCBxLT5mbG93X21vZGUpOwo+ICAgICAgICAgfQo+Cj4gICAgICAgICBpZiAocS0+YnVmZmVy
X3VzZWQgPiBxLT5idWZmZXJfbWF4X3VzZWQpCj4gQEAgLTE5MzMsMTMgKzE5NzIsMTEgQEAgc3Rh
dGljIHN0cnVjdCBza19idWZmICpjYWtlX2RlcXVldWUoc3RydWN0IFFkaXNjICpzY2gpCj4gIHsK
PiAgICAgICAgIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgKnEgPSBxZGlzY19wcml2KHNjaCk7Cj4g
ICAgICAgICBzdHJ1Y3QgY2FrZV90aW5fZGF0YSAqYiA9ICZxLT50aW5zW3EtPmN1cl90aW5dOwo+
IC0gICAgICAgc3RydWN0IGNha2VfaG9zdCAqc3JjaG9zdCwgKmRzdGhvc3Q7Cj4gICAgICAgICBr
dGltZV90IG5vdyA9IGt0aW1lX2dldCgpOwo+ICAgICAgICAgc3RydWN0IGNha2VfZmxvdyAqZmxv
dzsKPiAgICAgICAgIHN0cnVjdCBsaXN0X2hlYWQgKmhlYWQ7Cj4gICAgICAgICBib29sIGZpcnN0
X2Zsb3cgPSB0cnVlOwo+ICAgICAgICAgc3RydWN0IHNrX2J1ZmYgKnNrYjsKPiAtICAgICAgIHUx
NiBob3N0X2xvYWQ7Cj4gICAgICAgICB1NjQgZGVsYXk7Cj4gICAgICAgICB1MzIgbGVuOwo+Cj4g
QEAgLTIwMzksMTEgKzIwNzYsNiBAQCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmNha2VfZGVxdWV1
ZShzdHJ1Y3QgUWRpc2MgKnNjaCkKPiAgICAgICAgIHEtPmN1cl9mbG93ID0gZmxvdyAtIGItPmZs
b3dzOwo+ICAgICAgICAgZmlyc3RfZmxvdyA9IGZhbHNlOwo+Cj4gLSAgICAgICAvKiB0cmlwbGUg
aXNvbGF0aW9uIChtb2RpZmllZCBEUlIrKykgKi8KPiAtICAgICAgIHNyY2hvc3QgPSAmYi0+aG9z
dHNbZmxvdy0+c3JjaG9zdF07Cj4gLSAgICAgICBkc3Rob3N0ID0gJmItPmhvc3RzW2Zsb3ctPmRz
dGhvc3RdOwo+IC0gICAgICAgaG9zdF9sb2FkID0gMTsKPiAtCj4gICAgICAgICAvKiBmbG93IGlz
b2xhdGlvbiAoRFJSKyspICovCj4gICAgICAgICBpZiAoZmxvdy0+ZGVmaWNpdCA8PSAwKSB7Cj4g
ICAgICAgICAgICAgICAgIC8qIEtlZXAgYWxsIGZsb3dzIHdpdGggZGVmaWNpdHMgb3V0IG9mIHRo
ZSBzcGFyc2UgYW5kIGRlY2F5aW5nCj4gQEAgLTIwNTUsMTEgKzIwODcsOCBAQCBzdGF0aWMgc3Ry
dWN0IHNrX2J1ZmYgKmNha2VfZGVxdWV1ZShzdHJ1Y3QgUWRpc2MgKnNjaCkKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGItPnNwYXJzZV9mbG93X2NvdW50LS07Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBiLT5idWxrX2Zsb3dfY291bnQrKzsKPgo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNha2VfZHNyYyhxLT5mbG93X21vZGUpKQo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcmNob3N0LT5zcmNob3N0X2J1
bGtfZmxvd19jb3VudCsrOwo+IC0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlm
IChjYWtlX2Rkc3QocS0+Zmxvd19tb2RlKSkKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZHN0aG9zdC0+ZHN0aG9zdF9idWxrX2Zsb3dfY291bnQrKzsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNha2VfaW5jX3NyY2hvc3RfYnVsa19mbG93X2NvdW50
KGIsIGZsb3csIHEtPmZsb3dfbW9kZSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBjYWtlX2luY19kc3Rob3N0X2J1bGtfZmxvd19jb3VudChiLCBmbG93LCBxLT5mbG93X21vZGUp
Owo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmbG93LT5zZXQgPSBDQUtFX1NF
VF9CVUxLOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4gQEAgLTIwNzEsMTkg
KzIxMDAsNyBAQCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYgKmNha2VfZGVxdWV1ZShzdHJ1Y3QgUWRp
c2MgKnNjaCkKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAgIH0K
Pgo+IC0gICAgICAgICAgICAgICBpZiAoY2FrZV9kc3JjKHEtPmZsb3dfbW9kZSkpCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgaG9zdF9sb2FkID0gbWF4KGhvc3RfbG9hZCwgc3JjaG9zdC0+c3Jj
aG9zdF9idWxrX2Zsb3dfY291bnQpOwo+IC0KPiAtICAgICAgICAgICAgICAgaWYgKGNha2VfZGRz
dChxLT5mbG93X21vZGUpKQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGhvc3RfbG9hZCA9IG1h
eChob3N0X2xvYWQsIGRzdGhvc3QtPmRzdGhvc3RfYnVsa19mbG93X2NvdW50KTsKPiAtCj4gLSAg
ICAgICAgICAgICAgIFdBUk5fT04oaG9zdF9sb2FkID4gQ0FLRV9RVUVVRVMpOwo+IC0KPiAtICAg
ICAgICAgICAgICAgLyogVGhlIGdldF9yYW5kb21fdTE2KCkgaXMgYSB3YXkgdG8gYXBwbHkgZGl0
aGVyaW5nIHRvIGF2b2lkCj4gLSAgICAgICAgICAgICAgICAqIGFjY3VtdWxhdGluZyByb3VuZG9m
ZiBlcnJvcnMKPiAtICAgICAgICAgICAgICAgICovCj4gLSAgICAgICAgICAgICAgIGZsb3ctPmRl
ZmljaXQgKz0gKGItPmZsb3dfcXVhbnR1bSAqIHF1YW50dW1fZGl2W2hvc3RfbG9hZF0gKwo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnZXRfcmFuZG9tX3UxNigpKSA+PiAxNjsK
PiArICAgICAgICAgICAgICAgZmxvdy0+ZGVmaWNpdCArPSBjYWtlX2dldF9mbG93X3F1YW50dW0o
YiwgZmxvdywgcS0+Zmxvd19tb2RlKTsKPiAgICAgICAgICAgICAgICAgbGlzdF9tb3ZlX3RhaWwo
JmZsb3ctPmZsb3djaGFpbiwgJmItPm9sZF9mbG93cyk7Cj4KPiAgICAgICAgICAgICAgICAgZ290
byByZXRyeTsKPiBAQCAtMjEwNywxMSArMjEyNCw4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAq
Y2FrZV9kZXF1ZXVlKHN0cnVjdCBRZGlzYyAqc2NoKQo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgaWYgKGZsb3ctPnNldCA9PSBDQUtFX1NFVF9CVUxLKSB7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGItPmJ1bGtfZmxvd19jb3VudC0tOwo+Cj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChjYWtlX2RzcmMocS0+Zmxv
d19tb2RlKSkKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzcmNob3N0LT5zcmNob3N0X2J1bGtfZmxvd19jb3VudC0tOwo+IC0KPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGNha2VfZGRzdChxLT5mbG93X21vZGUpKQo+
IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRzdGhvc3Qt
PmRzdGhvc3RfYnVsa19mbG93X2NvdW50LS07Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNha2VfZGVjX3NyY2hvc3RfYnVsa19mbG93X2NvdW50KGIsIGZsb3csIHEt
PmZsb3dfbW9kZSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNh
a2VfZGVjX2RzdGhvc3RfYnVsa19mbG93X2NvdW50KGIsIGZsb3csIHEtPmZsb3dfbW9kZSk7Cj4K
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYi0+ZGVjYXlpbmdfZmxv
d19jb3VudCsrOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSBlbHNlIGlmIChm
bG93LT5zZXQgPT0gQ0FLRV9TRVRfU1BBUlNFIHx8Cj4gQEAgLTIxMjksMTIgKzIxNDMsOCBAQCBz
dGF0aWMgc3RydWN0IHNrX2J1ZmYgKmNha2VfZGVxdWV1ZShzdHJ1Y3QgUWRpc2MgKnNjaCkKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVsc2UgaWYgKGZsb3ctPnNldCA9PSBDQUtF
X1NFVF9CVUxLKSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGIt
PmJ1bGtfZmxvd19jb3VudC0tOwo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGlmIChjYWtlX2RzcmMocS0+Zmxvd19tb2RlKSkKPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcmNob3N0LT5zcmNob3N0X2J1bGtfZmxvd19j
b3VudC0tOwo+IC0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYg
KGNha2VfZGRzdChxLT5mbG93X21vZGUpKQo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGRzdGhvc3QtPmRzdGhvc3RfYnVsa19mbG93X2NvdW50LS07Cj4g
LQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYWtlX2RlY19zcmNo
b3N0X2J1bGtfZmxvd19jb3VudChiLCBmbG93LCBxLT5mbG93X21vZGUpOwo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjYWtlX2RlY19kc3Rob3N0X2J1bGtfZmxvd19j
b3VudChiLCBmbG93LCBxLT5mbG93X21vZGUpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfSBlbHNlCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGIt
PmRlY2F5aW5nX2Zsb3dfY291bnQtLTsKPgo+IC0tCj4gMi40Ny4xCj4KCkFja2VkLUJ5OiBEYXZl
IFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+CgoKCi0tIApEYXZlIFTDpGh0IENTTywgTGlicmVR
b3MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C078A7EBD
	for <lists+cake@lfdr.de>; Wed, 17 Apr 2024 10:54:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3700C3CB40;
	Wed, 17 Apr 2024 04:54:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1713344084;
	bh=51dhl6RqHUHcEs9MrjuGkoJAY0CIP0XoF/fSVfUAva4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Kh1lHrz8cNWZpGOpwchnVPvemNcOLbcgpAX1RvqPJqrob/aLOl4BvqT+Y8xNdfiPW
	 QLl0j6KGYRN+vRePxQT818oYDpgOt2LkPkcqfagcIvhqb/v+1v/Bt/fmuJFP0u8P6T
	 tho0UP22Mx7mW46xCp2EpWngZBe12z5zRpNBVSWUqjVjKx2ruuSO/aiDsUgZnoPx9t
	 7DBMxsDO8T6oPP5XT2syg/pC8f24FwCUydWUtBBxyCGiIQuOzU70xXeX/8t89oLBkB
	 K4JO/WcGoj8E3pKmprrEBaexZ+QqDEsUX2OK5ODouj343D93luFL663MIl5V7TN7id
	 xYu3GQH3i/SyQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C9CE43CB37
 for <cake@lists.bufferbloat.net>; Wed, 17 Apr 2024 04:54:42 -0400 (EDT)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-41699bbfb91so46265e9.0
 for <cake@lists.bufferbloat.net>; Wed, 17 Apr 2024 01:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1713344082; x=1713948882;
 darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=D2Q0qgouMY0HxajVxeo2A2P9aG8P/wFEHGo3jktH7h0=;
 b=qxzeZFVYafcDdGERqMiVxX/IEGqJNa0P9nrU42iAlPUUaJUmyBiRFp5HzBHs/BG8fD
 5BlzrOHqOOCr/KYmisyTv+uq6XqvCZbbMaQPgIAafwjkdW1pyrQLY8mG7HCKBVfP2/5l
 uaQZtf3KCrrjxBfUd3TlTbI0b3OppJdC4POs1rP0DapricqcIVrqDvk5MFZB3MaHwTgu
 1GdjGQ8UWQxMkGvKiNOqDp3PzGvcTo2p1BgWLaD/X7blwS10FH6LmT6em98Wu1LKMii4
 dVaoE6OzRzZd1ViQaboc/qTtBryDXzu8sm4eXFV2460QhgjxLO+MgdFcb5L/Bj+FWmCp
 6gtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713344082; x=1713948882;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=D2Q0qgouMY0HxajVxeo2A2P9aG8P/wFEHGo3jktH7h0=;
 b=M0wf1k88RLLCJ/MUZK/u+9TvqDsPnHSN9sEAw8mo3y1MoeP8z6+m+KDsOi96YAWFu/
 buOtFGx6/EFAcMuW3xEPaFPDgC/fPxNkB5/AP2Ezv04g7hkel48qSTj9Wkmqv7Z04t5k
 ak9jSdMUPht56VVi6FK6+U2fKFvx3uGn7XNGCvdEL7YZtW69Bqy92FarvH26Q9+FEgv7
 Eo+iCNzeXfmE5rf5Q4/PKle4OrKSjrhxKl1DuC9wCEjTgcq6vdfIaU/vDPUeeURDLaTB
 KtmBarnFYsITqZ/mbt4CEi3cuoglgtUBG7k8D6Zz/GOIB0Ir4L5F2kbU8j1PumQNAJUp
 fGbQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWrEC0F3mh5+pGeoZ/LsSCjP2NednHdDLrm51tKXh0NzQWLrbRnHEjq7KwyUi2HFRgjzm4B3c0NWpt9HY4/UJ/hluQncAR7O9jLMw==
X-Gm-Message-State: AOJu0Yxq2080bX0upv2cx2hKZu4gmx3go6SefHcHrG6Mb3gy1M6IJMko
 eSF4SA9+cBoB5toWX0h+fubYJYktXnn5A96pB1b0z6/2xse7EIvmPNvgI+mMg4WRNm3AE4WvniM
 6vniIhifDalzrmpUK3ApV+31myi8mqkjS4iVl
X-Google-Smtp-Source: AGHT+IGmZMmrMNfHNZNI0CE9mmS9XBy4pTP277sxXwhsYJGqIlMVTOzbwRfRxIrQ0gVvHZ+nTB9CIRDpfvo42LwGJjE=
X-Received: by 2002:a05:600c:1d28:b0:418:138e:f27c with SMTP id
 l40-20020a05600c1d2800b00418138ef27cmr150776wms.6.1713344081402; Wed, 17 Apr
 2024 01:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <20240415132054.3822230-1-edumazet@google.com>
 <20240415132054.3822230-3-edumazet@google.com>
 <20240417083549.GA3846178@kernel.org>
In-Reply-To: <20240417083549.GA3846178@kernel.org>
Date: Wed, 17 Apr 2024 10:54:30 +0200
Message-ID: <CANn89i+MF3F8Q063USmLYvyrffBKQRvb3ZM2c1MhAbFOwk9B-A@mail.gmail.com>
To: Simon Horman <horms@kernel.org>
Subject: Re: [Cake] [PATCH net-next 02/14] net_sched: cake: implement
	lockless cake_dump()
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
From: Eric Dumazet via Cake <cake@lists.bufferbloat.net>
Reply-To: Eric Dumazet <edumazet@google.com>
Cc: Jiri Pirko <jiri@resnulli.us>, eric.dumazet@gmail.com,
 netdev@vger.kernel.org, Jamal Hadi Salim <jhs@mojatatu.com>,
 cake@lists.bufferbloat.net, Cong Wang <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBBcHIgMTcsIDIwMjQgYXQgMTA6MzXigK9BTSBTaW1vbiBIb3JtYW4gPGhvcm1zQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gKyBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9r
ZS5kaz4KPiAgIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4KPiBPbiBNb24sIEFwciAxNSwg
MjAyNCBhdCAwMToyMDo0MlBNICswMDAwLCBFcmljIER1bWF6ZXQgd3JvdGU6Cj4gPiBJbnN0ZWFk
IG9mIHJlbHlpbmcgb24gUlROTCwgY2FrZV9kdW1wKCkgY2FuIHVzZSBSRUFEX09OQ0UoKQo+ID4g
YW5ub3RhdGlvbnMsIHBhaXJlZCB3aXRoIFdSSVRFX09OQ0UoKSBvbmVzIGluIGNha2VfY2hhbmdl
KCkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUu
Y29tPgo+Cj4gLi4uCj4KPiA+IEBAIC0yNzc0LDY4ICsyNzgzLDcxIEBAIHN0YXRpYyBpbnQgY2Fr
ZV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+ID4gIHsKPiA+
ICAgICAgIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgKnEgPSBxZGlzY19wcml2KHNjaCk7Cj4gPiAg
ICAgICBzdHJ1Y3QgbmxhdHRyICpvcHRzOwo+ID4gKyAgICAgdTE2IHJhdGVfZmxhZ3M7Cj4gPgo+
ID4gICAgICAgb3B0cyA9IG5sYV9uZXN0X3N0YXJ0X25vZmxhZyhza2IsIFRDQV9PUFRJT05TKTsK
PiA+ICAgICAgIGlmICghb3B0cykKPiA+ICAgICAgICAgICAgICAgZ290byBubGFfcHV0X2ZhaWx1
cmU7Cj4gPgo+ID4gLSAgICAgaWYgKG5sYV9wdXRfdTY0XzY0Yml0KHNrYiwgVENBX0NBS0VfQkFT
RV9SQVRFNjQsIHEtPnJhdGVfYnBzLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgIFRD
QV9DQUtFX1BBRCkpCj4gPiArICAgICBpZiAobmxhX3B1dF91NjRfNjRiaXQoc2tiLCBUQ0FfQ0FL
RV9CQVNFX1JBVEU2NCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBSRUFEX09OQ0Uo
cS0+cmF0ZV9icHMpLCBUQ0FfQ0FLRV9QQUQpKQo+ID4gICAgICAgICAgICAgICBnb3RvIG5sYV9w
dXRfZmFpbHVyZTsKPiA+Cj4gPiAgICAgICBpZiAobmxhX3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9G
TE9XX01PREUsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgcS0+Zmxvd19tb2RlICYgQ0FLRV9G
TE9XX01BU0spKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIFJFQURfT05DRShxLT5mbG93X21v
ZGUpICYgQ0FLRV9GTE9XX01BU0spKQo+ID4gICAgICAgICAgICAgICBnb3RvIG5sYV9wdXRfZmFp
bHVyZTsKPgo+IEhpIEVyaWMsCj4KPiBxLT5mbG93X21vZGUgaXMgcmVhZCB0d2ljZSBpbiB0aGlz
IGZ1bmN0aW9uLiBPbmNlIGhlcmUuLi4KPgo+ID4KPiA+IC0gICAgIGlmIChubGFfcHV0X3UzMihz
a2IsIFRDQV9DQUtFX1JUVCwgcS0+aW50ZXJ2YWwpKQo+ID4gKyAgICAgaWYgKG5sYV9wdXRfdTMy
KHNrYiwgVENBX0NBS0VfUlRULCBSRUFEX09OQ0UocS0+aW50ZXJ2YWwpKSkKPiA+ICAgICAgICAg
ICAgICAgZ290byBubGFfcHV0X2ZhaWx1cmU7Cj4gPgo+ID4gLSAgICAgaWYgKG5sYV9wdXRfdTMy
KHNrYiwgVENBX0NBS0VfVEFSR0VULCBxLT50YXJnZXQpKQo+ID4gKyAgICAgaWYgKG5sYV9wdXRf
dTMyKHNrYiwgVENBX0NBS0VfVEFSR0VULCBSRUFEX09OQ0UocS0+dGFyZ2V0KSkpCj4gPiAgICAg
ICAgICAgICAgIGdvdG8gbmxhX3B1dF9mYWlsdXJlOwo+ID4KPiA+IC0gICAgIGlmIChubGFfcHV0
X3UzMihza2IsIFRDQV9DQUtFX01FTU9SWSwgcS0+YnVmZmVyX2NvbmZpZ19saW1pdCkpCj4gPiAr
ICAgICBpZiAobmxhX3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9NRU1PUlksCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgUkVBRF9PTkNFKHEtPmJ1ZmZlcl9jb25maWdfbGltaXQpKSkKPiA+ICAgICAg
ICAgICAgICAgZ290byBubGFfcHV0X2ZhaWx1cmU7Cj4gPgo+ID4gKyAgICAgcmF0ZV9mbGFncyA9
IFJFQURfT05DRShxLT5yYXRlX2ZsYWdzKTsKPiA+ICAgICAgIGlmIChubGFfcHV0X3UzMihza2Is
IFRDQV9DQUtFX0FVVE9SQVRFLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICEhKHEtPnJhdGVf
ZmxhZ3MgJiBDQUtFX0ZMQUdfQVVUT1JBVEVfSU5HUkVTUykpKQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICEhKHJhdGVfZmxhZ3MgJiBDQUtFX0ZMQUdfQVVUT1JBVEVfSU5HUkVTUykpKQo+ID4g
ICAgICAgICAgICAgICBnb3RvIG5sYV9wdXRfZmFpbHVyZTsKPiA+Cj4gPiAgICAgICBpZiAobmxh
X3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9JTkdSRVNTLAo+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICEhKHEtPnJhdGVfZmxhZ3MgJiBDQUtFX0ZMQUdfSU5HUkVTUykpKQo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICEhKHJhdGVfZmxhZ3MgJiBDQUtFX0ZMQUdfSU5HUkVTUykpKQo+ID4gICAgICAg
ICAgICAgICBnb3RvIG5sYV9wdXRfZmFpbHVyZTsKPiA+Cj4gPiAtICAgICBpZiAobmxhX3B1dF91
MzIoc2tiLCBUQ0FfQ0FLRV9BQ0tfRklMVEVSLCBxLT5hY2tfZmlsdGVyKSkKPiA+ICsgICAgIGlm
IChubGFfcHV0X3UzMihza2IsIFRDQV9DQUtFX0FDS19GSUxURVIsIFJFQURfT05DRShxLT5hY2tf
ZmlsdGVyKSkpCj4gPiAgICAgICAgICAgICAgIGdvdG8gbmxhX3B1dF9mYWlsdXJlOwo+ID4KPiA+
ICAgICAgIGlmIChubGFfcHV0X3UzMihza2IsIFRDQV9DQUtFX05BVCwKPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAhIShxLT5mbG93X21vZGUgJiBDQUtFX0ZMT1dfTkFUX0ZMQUcpKSkKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAhIShSRUFEX09OQ0UocS0+Zmxvd19tb2RlKSAmIENBS0VfRkxP
V19OQVRfRkxBRykpKQo+ID4gICAgICAgICAgICAgICBnb3RvIG5sYV9wdXRfZmFpbHVyZTsKPgo+
IC4uLiBhbmQgb25jZSBoZXJlLgo+Cj4gSSBhbSBhc3N1bWluZyB0aGF0IGl0IGlzbid0IGEgYmln
IGRlYWwsIGJ1dCBwZXJoYXBzIGl0IGlzIGJldHRlciB0byBzYXZlCj4gcS0+Zmxvd19tb2RlIGlu
dG8gYSBsb2NhbCB2YXJpYWJsZS4KPgo+IEFsc28sIG1vcmUgaW1wb3J0YW50bHksIHEtPmZsb3df
bW9kZSBkb2VzIG5vdCBzZWVtIHRvIGJlIGhhbmRsZWQKPiB1c2luZyBXUklURV9PTkNFKCkgaW4g
Y2FrZV9jaGFuZ2UoKS4gSXQncyBhIG5vbi10cml2aWFsIGNhc2UsCj4gd2hpY2ggSSBndWVzcyBp
cyB3ZWxsIHNlcnZlZCBieSBhIG1lY2hhbmlzbSBidWlsdCBhcm91bmQgYSBsb2NhbCB2YXJpYWJs
ZS4KClRoYW5rcyAhCgpJIHdpbGwgc3F1YXNoIGluIHYyOgoKZGlmZiAtLWdpdCBhL25ldC9zY2hl
ZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXggYmIzN2EwZGVkY2MxZTRi
MzQxOGY2NjgxZDg3MTA4YWFkN2VhMDY2Zi4uOTYwMmRhZmUzMmU2MWQzOGRjMDBiMGEzNWUxZWUz
ZjUzMDk4OTYxMAoxMDA2NDQKLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKKysrIGIvbmV0L3Nj
aGVkL3NjaF9jYWtlLmMKQEAgLTI1NzMsNiArMjU3Myw3IEBAIHN0YXRpYyBpbnQgY2FrZV9jaGFu
Z2Uoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdApubGF0dHIgKm9wdCwKICAgICAgICBzdHJ1Y3Qg
Y2FrZV9zY2hlZF9kYXRhICpxID0gcWRpc2NfcHJpdihzY2gpOwogICAgICAgIHN0cnVjdCBubGF0
dHIgKnRiW1RDQV9DQUtFX01BWCArIDFdOwogICAgICAgIHUxNiByYXRlX2ZsYWdzOworICAgICAg
IHU4IGZsb3dfbW9kZTsKICAgICAgICBpbnQgZXJyOwoKICAgICAgICBlcnIgPSBubGFfcGFyc2Vf
bmVzdGVkX2RlcHJlY2F0ZWQodGIsIFRDQV9DQUtFX01BWCwgb3B0LCBjYWtlX3BvbGljeSwKQEAg
LTI1ODAsMTAgKzI1ODEsMTEgQEAgc3RhdGljIGludCBjYWtlX2NoYW5nZShzdHJ1Y3QgUWRpc2Mg
KnNjaCwKc3RydWN0IG5sYXR0ciAqb3B0LAogICAgICAgIGlmIChlcnIgPCAwKQogICAgICAgICAg
ICAgICAgcmV0dXJuIGVycjsKCisgICAgICAgZmxvd19tb2RlID0gcS0+Zmxvd19tb2RlOwogICAg
ICAgIGlmICh0YltUQ0FfQ0FLRV9OQVRdKSB7CiAjaWYgSVNfRU5BQkxFRChDT05GSUdfTkZfQ09O
TlRSQUNLKQotICAgICAgICAgICAgICAgcS0+Zmxvd19tb2RlICY9IH5DQUtFX0ZMT1dfTkFUX0ZM
QUc7Ci0gICAgICAgICAgICAgICBxLT5mbG93X21vZGUgfD0gQ0FLRV9GTE9XX05BVF9GTEFHICoK
KyAgICAgICAgICAgICAgIGZsb3dfbW9kZSAmPSB+Q0FLRV9GTE9XX05BVF9GTEFHOworICAgICAg
ICAgICAgICAgZmxvd19tb2RlIHw9IENBS0VfRkxPV19OQVRfRkxBRyAqCiAgICAgICAgICAgICAg
ICAgICAgICAgICEhbmxhX2dldF91MzIodGJbVENBX0NBS0VfTkFUXSk7CiAjZWxzZQogICAgICAg
ICAgICAgICAgTkxfU0VUX0VSUl9NU0dfQVRUUihleHRhY2ssIHRiW1RDQV9DQUtFX05BVF0sCkBA
IC0yNjA5LDcgKzI2MTEsNyBAQCBzdGF0aWMgaW50IGNha2VfY2hhbmdlKHN0cnVjdCBRZGlzYyAq
c2NoLCBzdHJ1Y3QKbmxhdHRyICpvcHQsCiAgICAgICAgfQoKICAgICAgICBpZiAodGJbVENBX0NB
S0VfRkxPV19NT0RFXSkKLSAgICAgICAgICAgICAgIHEtPmZsb3dfbW9kZSA9ICgocS0+Zmxvd19t
b2RlICYgQ0FLRV9GTE9XX05BVF9GTEFHKSB8CisgICAgICAgICAgICAgICBmbG93X21vZGUgPSAo
KGZsb3dfbW9kZSAmIENBS0VfRkxPV19OQVRfRkxBRykgfAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIChubGFfZ2V0X3UzMih0YltUQ0FfQ0FLRV9GTE9XX01PREVdKSAmCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDQUtFX0ZMT1dfTUFTSykpOwoKQEAgLTI2
ODksNiArMjY5MSw3IEBAIHN0YXRpYyBpbnQgY2FrZV9jaGFuZ2Uoc3RydWN0IFFkaXNjICpzY2gs
IHN0cnVjdApubGF0dHIgKm9wdCwKICAgICAgICB9CgogICAgICAgIFdSSVRFX09OQ0UocS0+cmF0
ZV9mbGFncywgcmF0ZV9mbGFncyk7CisgICAgICAgV1JJVEVfT05DRShxLT5mbG93X21vZGUsIGZs
b3dfbW9kZSk7CiAgICAgICAgaWYgKHEtPnRpbnMpIHsKICAgICAgICAgICAgICAgIHNjaF90cmVl
X2xvY2soc2NoKTsKICAgICAgICAgICAgICAgIGNha2VfcmVjb25maWd1cmUoc2NoKTsKQEAgLTI3
ODQsNiArMjc4Nyw3IEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBz
dHJ1Y3QKc2tfYnVmZiAqc2tiKQogICAgICAgIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgKnEgPSBx
ZGlzY19wcml2KHNjaCk7CiAgICAgICAgc3RydWN0IG5sYXR0ciAqb3B0czsKICAgICAgICB1MTYg
cmF0ZV9mbGFnczsKKyAgICAgICB1OCBmbG93X21vZGU7CgogICAgICAgIG9wdHMgPSBubGFfbmVz
dF9zdGFydF9ub2ZsYWcoc2tiLCBUQ0FfT1BUSU9OUyk7CiAgICAgICAgaWYgKCFvcHRzKQpAQCAt
Mjc5Myw4ICsyNzk3LDggQEAgc3RhdGljIGludCBjYWtlX2R1bXAoc3RydWN0IFFkaXNjICpzY2gs
IHN0cnVjdApza19idWZmICpza2IpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJFQURf
T05DRShxLT5yYXRlX2JwcyksIFRDQV9DQUtFX1BBRCkpCiAgICAgICAgICAgICAgICBnb3RvIG5s
YV9wdXRfZmFpbHVyZTsKCi0gICAgICAgaWYgKG5sYV9wdXRfdTMyKHNrYiwgVENBX0NBS0VfRkxP
V19NT0RFLAotICAgICAgICAgICAgICAgICAgICAgICBSRUFEX09OQ0UocS0+Zmxvd19tb2RlKSAm
IENBS0VfRkxPV19NQVNLKSkKKyAgICAgICBmbG93X21vZGUgPSBSRUFEX09OQ0UocS0+Zmxvd19t
b2RlKTsKKyAgICAgICBpZiAobmxhX3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9GTE9XX01PREUsIGZs
b3dfbW9kZSAmIENBS0VfRkxPV19NQVNLKSkKICAgICAgICAgICAgICAgIGdvdG8gbmxhX3B1dF9m
YWlsdXJlOwoKICAgICAgICBpZiAobmxhX3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9SVFQsIFJFQURf
T05DRShxLT5pbnRlcnZhbCkpKQpAQCAtMjgyMCw3ICsyODI0LDcgQEAgc3RhdGljIGludCBjYWtl
X2R1bXAoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdApza19idWZmICpza2IpCiAgICAgICAgICAg
ICAgICBnb3RvIG5sYV9wdXRfZmFpbHVyZTsKCiAgICAgICAgaWYgKG5sYV9wdXRfdTMyKHNrYiwg
VENBX0NBS0VfTkFULAotICAgICAgICAgICAgICAgICAgICAgICAhIShSRUFEX09OQ0UocS0+Zmxv
d19tb2RlKSAmIENBS0VfRkxPV19OQVRfRkxBRykpKQorICAgICAgICAgICAgICAgICAgICAgICAh
IShmbG93X21vZGUgJiBDQUtFX0ZMT1dfTkFUX0ZMQUcpKSkKICAgICAgICAgICAgICAgIGdvdG8g
bmxhX3B1dF9mYWlsdXJlOwoKICAgICAgICBpZiAobmxhX3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9E
SUZGU0VSVl9NT0RFLCBSRUFEX09OQ0UocS0+dGluX21vZGUpKSkKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

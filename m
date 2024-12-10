Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8AD9EA39A
	for <lists+cake@lfdr.de>; Tue, 10 Dec 2024 01:25:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1837E3CB43;
	Mon,  9 Dec 2024 19:25:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1733790316;
	bh=L8E2gK+OtfBHe/Zvbe+pmcbqg3QNZioPJgEc7w8nv54=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OHjkyvLNlVQgLFnIuJwgbEkNzE/5SIQXttkGihnbpMVc6DXVEU97Cfe0cdGwvYhW8
	 ZvZ2GZ9kgVJLvBPukBegDOQ9VMddljruGcnjqBAVIKIydTZEPMjsVa1Gv9TClA3ve6
	 dumsAMNDT3dOFHg3T1UHTJ0Mxf1CiOg7f2S+K91xOPGjdaJ2x+wTenW6Mzgk8u2qGq
	 24Hqo2U6vcRqta3pRWTkv9jG5bosXREssHNuoMxCtggSRapm0WmtSS6hALZs2/de4B
	 ntnMnSPb+8+Me9QkhGx8q2Or5vvJp2rqkofFZKCpRpdbgW1AFjFXbyY4wsVQWkeIEY
	 hrzl+y+496law==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EE9A83CB38
 for <cake@lists.bufferbloat.net>; Mon,  9 Dec 2024 19:25:14 -0500 (EST)
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-5f2bdbca73cso351234eaf.2
 for <cake@lists.bufferbloat.net>; Mon, 09 Dec 2024 16:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1733790314; x=1734395114; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XxV+mAVeS0Tuzvt9QheWEZ7UQEwvL15JnzRI7m+7QSk=;
 b=KgrPcvFraHQkpeQAm7D3Bn+bMBAylX9xaA04Aqn+2iOdM9gkC6w0bMYwoa7o/lILL3
 BDLSrLTYk6pgX9pR8uJ1MGX8hXnUGc1g40zj0cDG7tv+dx3DdIPTok6RzJd1v9H/TZnQ
 l3uVpzR5XNElbh2AEs9dPX447Kh6BoPT53sekGLTpIejPOgjpa14PKLJNK2J4Mpd+eIY
 02sUrq57si2KeRMjK2CT6s72Z7vaN32CJiVQshyBBwJocNjp2+dJbKIpdwJ6dDHlT2wJ
 5rmc57tpERIiXQ0GBV9pxtBShMofWjR7nWXY0eQQ+nYmSPPykMuuyjWU8h0e3tmqEq9C
 QdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733790314; x=1734395114;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XxV+mAVeS0Tuzvt9QheWEZ7UQEwvL15JnzRI7m+7QSk=;
 b=c1RV4eNEOQ29K3XVebmXsSTS/uu0WCMiv8PSvVZCUHBM2N35zKgv5pDqWcm2PZQaUe
 JKgJBn9s7LuICgHVfBhZl98Z/XN0zDdzGSQRSkWCYJaCAzOKTMlyrXL6dBc6S3UwW8Bj
 WsRsN70w0LqtUflVSZGwvWa3zNDlTnTd9E0eFJOebITbotx8eeuWCYCcCVpqRoQF9tfu
 8WIeuYAl9lpreicoZ2EH0ShzZootSwhgqIXjkL/G1gXcE87ERatMtV7oRUSYfxAErc37
 7U7oGo+PhQ0S5SFWpFZbMeqHmFpxJIx3geARzpR0uXSBDugYJBTm6m7BPPQ6bzM0RKE2
 s3xg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUmpI/JScQaIvWQQyALHAmMbrewF5oJqTexQ2mSoW4QWC1DOqFFq0nQ1in22NZpqqIt/6s@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxpF8JbSFO5O2eGojARyE1QHdC9ef3POt6YwYq5OzRR2V06IAB9
 20RWgHFVjijwuh2xk08kIdGgwb5mgH2zUICiigVKhZMRcMLGvd/b87w3WsrhvA8sX39jnyF9iC9
 UWy+nVvqQF2AX6J41C8P8GoefN/o=
X-Gm-Gg: ASbGncuKaQ3kndDrdT4NS3cNoTqeCugGIsfBgCFtbmC9KL1MrAaQR0DhoXIMG3ieOIU
 tktK6w40RB4ljaqscjGQFmhdPhet0x64W4xC2Xq/YItrh0kywb+URHfybzboYjMdeoF/FZA==
X-Google-Smtp-Source: AGHT+IGptdCS2IgMtGirKWOIZXgbBA4mbJoBb81jtfTqrZAta/uP7HvPJDZWv8PjEFZFeHpM7y7wetAZkpFzAyI1KcA=
X-Received: by 2002:a05:6870:c10d:b0:29e:5df2:3e50 with SMTP id
 586e51a60fabf-29fee568a8fmr1565854fac.15.1733790314255; Mon, 09 Dec 2024
 16:25:14 -0800 (PST)
MIME-Version: 1.0
References: <20241209-cake-drop-reason-v1-1-19205f6d1f19@redhat.com>
 <20241209155157.6a817bc5@kernel.org>
In-Reply-To: <20241209155157.6a817bc5@kernel.org>
Date: Mon, 9 Dec 2024 16:25:01 -0800
Message-ID: <CAA93jw4chUsQ40LQStvJBeOEENydbv58gOWz8y7fFPJkATa9tA@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Cake] [PATCH net-next] net_sched: sch_cake: Add drop reasons
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
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCBEZWMgOSwgMjAyNCBhdCAzOjUy4oCvUE0gSmFrdWIgS2ljaW5za2kgdmlhIENha2UK
PGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IE9uIE1vbiwgMDkgRGVjIDIw
MjQgMTM6MDI6MTggKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+ID4gQWRk
IHRocmVlIHFkaXNjLXNwZWNpZmljIGRyb3AgcmVhc29ucyBmb3Igc2NoX2Nha2U6Cj4gPgo+ID4g
IDEpIFNLQl9EUk9QX1JFQVNPTl9DQUtFX0NPTkdFU1RFRAo+ID4gICAgIFdoZW5ldmVyIGEgcGFj
a2V0IGlzIGRyb3BwZWQgYnkgdGhlIENBS0UgQVFNIGFsZ29yaXRobSBiZWNhdXNlCj4gPiAgICAg
Y29uZ2VzdGlvbiBpcyBkZXRlY3RlZC4KPiA+Cj4gPiAgMikgU0tCX0RST1BfUkVBU09OX0NBS0Vf
RkxPT0QKPiA+ICAgICBXaGVuZXZlciBhIHBhY2tldCBpcyBkcm9wcGVkIGJ5IHRoZSBmbG9vZCBw
cm90ZWN0aW9uIHBhcnQgb2YgdGhlCj4gPiAgICAgQ0FLRSBBUU0gYWxnb3JpdGhtIChCTFVFKS4K
PiA+Cj4gPiAgMykgU0tCX0RST1BfUkVBU09OX0NBS0VfT1ZFUkxJTUlUCj4gPiAgICAgV2hlbmV2
ZXIgdGhlIHRvdGFsIHF1ZXVlIGxpbWl0IGZvciBhIENBS0UgaW5zdGFuY2UgaXMgZXhjZWVkZWQg
YW5kIGEKPiA+ICAgICBwYWNrZXQgaXMgZHJvcHBlZCB0byBtYWtlIHJvb20uCj4KPiBFcmljJ3Mg
cGF0Y2ggd2FzIGFkZGluZyBmYWlybHkgRlEtc3BlY2lmaWMgcmVhc29ucywgb3RoZXIgdGhhbiBm
bG9vZAo+IHRoaXMgc2VlbXMgbGlrZSBnZW5lcmljIEFRTSBzdHVmZiwgbm8/IEZyb20gYSB2ZXJ5
IHF1aWNrIGxvb2sgdGhlCj4gY29uZ2VzdGlvbiBsb29rcyBsaWtlIGZhaXJseSBzdGFuZGFyZCBB
UU0sIG92ZXJsaW1pdCBpcyBhbHNvIHR5cGljYWwKPiBmb3IgcWRpY3M/CgpXaGlsZSBJIGluaXRp
YWxseSBhZ3JlZWQgd2l0aCBtYWtpbmcgdGhpcyBnZW5lcmljLCBwcmVzZXJ2aW5nIHRoZSBxZGlz
YyBmcm9tCndoZXJlIHRoZSBkcm9wIGNhbWUgbGV0cyB5b3Ugc2FmZWx5IGluc3BlY3QgdGhlIGNi
IGJsb2NrICh0aW1lc3RhbXAsIGV0YyksCmZvcm1hdCBvZiB3aGljaCB2YXJpZXMgYnkgcWRpc2Mu
IFlvdSBhbHNvIGdldCBpbnNpZ2h0IGFzIHRvIHdoaWNoCnFkaXNjIHdhcyBkcm9wcGluZy4KCkRv
d25zaWRlIGlzIHdlJ2xsIGVuZCB1cCB3aXRoIFNLQl9EUk9QX1JFQVNPTl9YWFhfT1ZFUkxJTUlU
IGZvcgplYWNoIG9mIHRoZSBxZGlzY3MuIEV0Yy4KCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQoKCgotLSAKRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

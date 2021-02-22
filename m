Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 530C3321AB7
	for <lists+cake@lfdr.de>; Mon, 22 Feb 2021 16:04:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0930C3CB42;
	Mon, 22 Feb 2021 10:04:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614006293;
	bh=SJTnKLRAx1vWMuI/Y2lvvcRh3iTf4dOEPdR2pxhfHRw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nQjNBJ4hCkbSTb36ro+1bly2aaePVRtgO2cI3+LNNkAC5RzNgzoBHtVL0R2moZp+w
	 9PR5FxERD1nXR8/hoKQSovy83GbZ/ehRghAcERShf8DgEV6kEMAi23I0MVJnK1LlIg
	 7jvui1flvTZk+7Ptqwb4QyEItv4iJC5AcoUyHzTd8j2nE3pN2SjNvQkMiH29ySIrkV
	 MlNAarpAmTOMEFW6GRf5HsqISJpssukdfUVhjBGvKukRebYkRkhub3BT0xzVZlHPdT
	 wEWSIn6cuQS89E5Y/pkLnWBPq2HqR/6SPYTn2FiV3M8rPrh5P1UeqmfwudJTFa7bKN
	 eL+hP7bG48NvQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C63143B2A4;
 Mon, 22 Feb 2021 10:04:51 -0500 (EST)
Received: by mail-il1-x12e.google.com with SMTP id m20so11030656ilj.13;
 Mon, 22 Feb 2021 07:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5/OFpoNf9ZGflnL+sBIY90SIduXnI0zcztJP0GH9KWs=;
 b=l0nMsqscQ1Ey17EbZZBnfs+TsB7xMf+5vvz33bRtExNRMSuI0k0XMwstn6BrIfNLe5
 lD5A5HNVJXb6xJ+f7Yctw+Y2A+9aQYfpVA08dWBkAVqlWwYFYYzcSqXYu4z3Dne7ujaB
 Kpv66f2rc+2Cw327edhpVLdYx3c52jA1vwEZlybYf0upL325hRJDSI0kGA/Rnc2DLsIs
 mlJiQEMBscVqVSwilViKz4JyYZnfjCQtKErEWyFDRALtnnh5T+v1Gixd7F/1s9IF6cNw
 Rx/vn/3Y7wbgpf3lcVm+n81DEx1cuOfIcqJYy+WZSby5mTMdRoh8EaAblNNL7UTN5wVd
 qMkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=5/OFpoNf9ZGflnL+sBIY90SIduXnI0zcztJP0GH9KWs=;
 b=b0yU1f4sY5grMNxkxTYKFW1Lxv6dLdpoup1fu+Ze6bBWMNb28AlJwrj4H5jSmAndah
 pYCQTeE0iiIl0y+ibOIBwWdBIOyNSJNTLigoajxrwQZda04Mw4dIyHiWuA7YcQZVavFW
 FGcppqei5BBX1P+duAZWXJTZSucPp73L7p9NIxOIxjCUWrM3Fx5Haz44pyJ4eKHzNJuv
 jFOdxZEpykXryi2vVJGGqjRjjnWBbnPEZO5EbbHFqPIG4/KWG9lq4GuU06rzztM4hcb3
 DRIR1581nvIvD5bjqX8GJsPz7p0UY9/LAEQUBKY4KyMQK78YhrMIvcyUy2YNueU5/wf9
 b4vQ==
X-Gm-Message-State: AOAM531fJUMUQJDJk/BgbL+Wq+S61yEZ4GXMh0YznUl0+BoWVdnb40vf
 EoWMbIgtFRj4a//UW9lLKYwNo0qguRNBUkpqz4O0Lr03SrU=
X-Google-Smtp-Source: ABdhPJyYUJk6yDRQwiHvS+0Zcjnjo83ct6taxjgkHkpW43HRE2j5Gg50mOrR42m5hqY22+1Iea7qUdMk746cL5TF598=
X-Received: by 2002:a05:6e02:2142:: with SMTP id
 d2mr15436449ilv.249.1614006290875; 
 Mon, 22 Feb 2021 07:04:50 -0800 (PST)
MIME-Version: 1.0
References: <87zgzwdy88.wl-jch@irif.fr>
In-Reply-To: <87zgzwdy88.wl-jch@irif.fr>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 22 Feb 2021 07:04:38 -0800
Message-ID: <CAA93jw4Y=A_0+S4f_uTzvQy_fM8Vbam3Skqt5zkZa3BFaYyVnA@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] =?utf-8?q?Fwd=3A_=5BGalene=5D_Talk_about_Gal=C3=A8ne_today?=
	=?utf-8?q?_=28monday=29_at_17pm_CET?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

LS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVzc2FnZSAtLS0tLS0tLS0KRnJvbTogSnVsaXVzeiBDaHJv
Ym9jemVrIDxqY2hAaXJpZi5mcj4KRGF0ZTogTW9uLCBGZWIgMjIsIDIwMjEgYXQgNTozMiBBTQpT
dWJqZWN0OiBbR2FsZW5lXSBUYWxrIGFib3V0IEdhbMOobmUgdG9kYXkgKG1vbmRheSkgYXQgMTdw
bSBDRVQKVG86IDxnYWxlbmVAbGlzdHMuZ2FsZW5lLm9yZz4KCgpJJ2xsIGJlIGdpdmluZyBhIHRh
bGsgYWJvdXQgR2Fsw6huZSB0aGlzIGFmdGVybm9vbjoKCiAgaHR0cHM6Ly9mZndkLmZsYXNoZ3Jh
bnRzLm9yZy9jYWxlbmRhci5odG1sI2V2ZW50LTE1LwoKKFllYWgsIEkga25vdywgaXQgc2F5cyBE
YXZlLCBidXQgSSdtIHRoZSBvbmUgZ2l2aW5nIHRoZSB0YWxrLikKClNvcnJ5IGZvciB0aGUgc2hv
cnQgZGVsYXkuCgotLSBKdWxpdXN6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KR2FsZW5lIG1haWxpbmcgbGlzdCAtLSBnYWxlbmVAbGlzdHMuZ2FsZW5l
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGdhbGVuZS1sZWF2ZUBsaXN0cy5n
YWxlbmUub3JnCgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVz
dCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVy
ZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2
ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=

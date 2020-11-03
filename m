Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF1E2A383F
	for <lists+cake@lfdr.de>; Tue,  3 Nov 2020 02:14:42 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AEAE03CB38;
	Mon,  2 Nov 2020 20:14:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1604366081;
	bh=ST19M9fCFDuwb1ixVIs57zjKDVCdnzgJGaVOkbmOT0A=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=edCEMmXSBU0D3jfgB0w6aL3v91LvrOhywxECIxfvbtpxGasvmNYixxpSPtCuLMRAH
	 21HO/EMkpq5+v8/YzDN+tbNOdUhWORolTjTonU3BpRl/SAYIIOLtzCmXCXsJi9vkYs
	 4Jz5NlOsVhXQ9QadQJkhHBeCt5UHj1Ltb5i7qHH6YMB6XA4KXBMfGpu4QLQAkyIHBz
	 U5Y5sxe78dfYjrK40HKGkCpMe4bj9TU+6aUc3vMvu6yG2YG2YeuhKOgMFhuIJ/aaOo
	 LgZtchZTldaNHZUUHoFJsgpT6QP1lMbSltSirKhAT615C2q7k9QC1xsRzi4gofc+Dv
	 lOcjPENVF//QA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B586E3B29D
 for <cake@lists.bufferbloat.net>; Mon,  2 Nov 2020 20:14:40 -0500 (EST)
Received: by mail-lf1-x130.google.com with SMTP id h6so19976686lfj.3
 for <cake@lists.bufferbloat.net>; Mon, 02 Nov 2020 17:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ihim6M4/C7B1KwtBQ/kXxWwKD3eNE3ad0eXplnskeOg=;
 b=fj4l2gVVvKnvJNI+CiCHkYRLC2DjVzshMcCy/hPRTOomvURqGcr+Y0PWwsK0vlgYsS
 vrcfH87i/alP4Pofd9u8yRiydskrWzH1QYwX2e8hH9JkzCIIGkKtUJFH6KJV+cS07lx8
 MunTnUJkWIc3e8OhVuIKpxWTdYgV/IIJnWZUPtnLJMWeXdiJcnIffx75+YpdFMIv2smc
 +YxHjRjVs2kNK44Tjhx9NsCMW/TT6f2G90yqnRQvimaCHVczWutUONj4+g7BQqgy2V+K
 AR8UbZXeylTSkEv3jNmkgUZ/ZmPjMr4NYkdpAGmnVIeE7Ozh+eWIr59rrILTtVjnTkgJ
 8UlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ihim6M4/C7B1KwtBQ/kXxWwKD3eNE3ad0eXplnskeOg=;
 b=FucbWKStwHL8Y0GOFfwvqrhqfesvOmDcSY2Ol8HZaTJjFNZARp1c/zGQcESJOpzW9j
 5hnccdxpXDbCkfqpgNce7jdxNkwhw7Ef6OCQ43lfwH744kbs3l1/lEJUmfA072AYRrhw
 I+qdOh3Yz+mmuYSAxPgEd8Yj8HJu+KzybLvvm6aLMgrV7PIBISs1GAqf0ZDP5ROLngf3
 DO7ZO1CRq13UREBLzEWtJwRb4zmtKVnwtQ6P/kP+z+pbGQC+WhabK67P8XilkQB53+Yh
 unedfu77iWrqhck7YVnCidNQdEjk5NWclW55MF8MrZKXAxHO8TBo6mLUOI7JJHO0On9M
 IEGw==
X-Gm-Message-State: AOAM530ANHLMl0lOxAsyIzPuCpIKYBR1yMCiBA5giVFHkMXvwk1TfUwq
 wttwcA5dTdRvPnuvc7Uv79vrV3crC+nbPA==
X-Google-Smtp-Source: ABdhPJyfeb0KIu7GC2siExyIyoD+8FVqxiW7XlC0+k7PNvxJd6NCh3buas9nqw9xl3mOIQaSuEjOoA==
X-Received: by 2002:ac2:5edb:: with SMTP id d27mr6271391lfq.404.1604366078983; 
 Mon, 02 Nov 2020 17:14:38 -0800 (PST)
Received: from jonathartonsmbp.lan (178-55-204-70.bb.dnainternet.fi.
 [178.55.204.70])
 by smtp.gmail.com with ESMTPSA id u26sm2970628lfn.19.2020.11.02.17.14.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Nov 2020 17:14:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
Date: Tue, 3 Nov 2020 03:14:37 +0200
Message-Id: <E7838F67-DEC6-4822-ADD5-BE927C4821F8@gmail.com>
References: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
To: Dean Scarff <dos@scarff.id.au>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] NLA_F_NESTED is missing
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxIE5vdiwgMjAyMCwgYXQgMTI6MTUgcG0sIERlYW4gU2NhcmZmIDxkb3NAc2NhcmZmLmlk
LmF1PiB3cm90ZToKPiAKPiAgRXJyb3I6IE5MQV9GX05FU1RFRCBpcyBtaXNzaW5nLgoKU2luY2Ug
eW91J3JlIHJ1bm5pbmcgYW4gdXAtdG8tZGF0ZSBrZXJuZWwsIHlvdSBzaG91bGQgY2hlY2sgeW91
IGFyZSBhbHNvIHJ1bm5pbmcgdXAtdG8tZGF0ZSB1c2Vyc3BhY2UgdG9vbHMuICBUaGF0IGZsYWcg
aXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBpbnRlcmZhY2UgYmV0d2VlbiB0aGUgdHdvLgoKIC0gSm9u
YXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

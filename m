Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 573BD3E0ACF
	for <lists+cake@lfdr.de>; Thu,  5 Aug 2021 01:26:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E8F503CB41;
	Wed,  4 Aug 2021 19:26:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628119585;
	bh=1AXAIUATmsA23usA7k1+Cih8hnQ/kAvr0m2PdIsVTSw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fi8/xO7fLUdz5Qetdkfnd0wPlDIJZOASFvj2n4N3/FzIiSjpAQUwtbc52rMFC7yDm
	 13IXWwGTa1mKzK7y0zh1Ns7ch0KS0+0ZMl6Vc2PX2dKGcmmYHxgFoTcVSe8nTUc1Py
	 vOVh0eM8LIwWtK6Duy/drBwoxpe6u6HioSxgeXFkFKbrCifFsyCYqGRzDt+wIyr/XF
	 kHP/M/x/LpsSCZAmbb0KLNcTGbLxKDfmCognIavLMuWNwZTAOKdQRBIHPLScsRgfDV
	 LZqlw+ieS792O/9XRgivgGE22NdBi8JGH1qDDGwYNf0Fqtq8915XVnhBJMVLLsBnTw
	 8dPcsOFGbTIYQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com
 [IPv6:2607:f8b0:4864:20::829])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9DCCD3CB38
 for <cake@lists.bufferbloat.net>; Wed,  4 Aug 2021 19:26:24 -0400 (EDT)
Received: by mail-qt1-x829.google.com with SMTP id d9so2586997qty.12
 for <cake@lists.bufferbloat.net>; Wed, 04 Aug 2021 16:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O0vijcbCHz6oevdVtABajCzpFjodP4M9Nlt53eQRr5E=;
 b=eEz3i6/g3uu56Ujmt8MtBnO/svSG45znXAIDhEW9OSGbygkg0yPO4HagaiHec8wEMZ
 46eC3fkf6fFy+JJaAnBWL2XARJWvguhIPcLMdmqgKnKLPpw4D9Wn99PiHaqwqKFyZomQ
 XBTPf8Skm1SJfqT5VrPe2mCEyRTaGw4q4cS+K4E+A1GFMSxa+BrvBWJzlrUkCBkKgFMh
 R+1Oj/INADzL3I3jF6jDd2M//7XbwbhIc2ffJ34nin1Ygy/f4tjhqOH4EHVVD/4zeUCL
 oIi7N0YYgCXwx/vWogKg7ZK8JYDvOU5LQUdIO/ELizomoPPQru/uRtec8jt+ABXQ8jWj
 lfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O0vijcbCHz6oevdVtABajCzpFjodP4M9Nlt53eQRr5E=;
 b=MD5wCMadNikeqsDOLF2i7rmFoo+IiylS9+NBjwH/RmUy5QviqnATNq7ilgLB6PmWaI
 oVJi4OdrPmGOC0Co3B4J0dNdgm+0G+zdD5sslKMVBBcj146wgRa+8s3a3d7l9W4zEJwj
 PRhJ39xMcY/PO92Fedw7fJtedBCT8hAKGEZjKby9hwqlKdd3VxSDm21l15mVfmkerS4t
 lku4x9kdJGYkLFyi8rbIu/8sqDWp1WETYXfT4MNkRWjcQnq4j/o8I+qYOo6fw0La2/pT
 ff3FeH96ohTa4kyb0PV8zIx+Dz+AkJ/7EdTG4Ix+toFthuK1OFeOFl2OiNhElxs9i+UB
 cwpw==
X-Gm-Message-State: AOAM530WQ1/IX2ekaMIS9O/sdVEWlCrnzeKxKqJb3ibTiRwwQSkABf5V
 /EbPdJRn+MIlhUqh+DrGQYqIePc3z64jysLsTJAd+OgMwC4=
X-Google-Smtp-Source: ABdhPJyAqAAmbDpbTs+vhhez5vKShMP2TTQT3PjZp/xbJF248OKQ0Y+DEnkGkJABoUxafu1LGJB0oGAM+TDXT497t3M=
X-Received: by 2002:ac8:6655:: with SMTP id j21mr1922622qtp.57.1628119584130; 
 Wed, 04 Aug 2021 16:26:24 -0700 (PDT)
MIME-Version: 1.0
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
 <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
 <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
In-Reply-To: <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
From: Jonathan Morton <chromatix99@gmail.com>
Date: Thu, 5 Aug 2021 02:26:13 +0300
Message-ID: <CAJq5cE0e_=Q9WoqVr+-7SOSsYZcpi1bpAUn0=WvbE_YOvQ4-XA@mail.gmail.com>
To: Pete Heist <pete@heistp.net>
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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

VGhvc2UgcmVzdWx0cyBsb29rIGdvb2QgdG8gbWUgYXMgd2VsbC4gIFRoZSBkaWZmZXJlbmNlIGJl
dHdlZW4gdGhlCmR1YWwgbW9kZXMgYW5kIHRoZSBwdXJlIGhvc3QgbW9kZXMgaXMgdmlzaWJsZSBp
biB0ZXJtcyBvZiBsb29zZXIKZmFpcm5lc3MgaW4gdGhlIGxhdHRlciBjYXNlLgoKRG9uJ3Qgd29y
cnkgdG9vIG11Y2ggYWJvdXQgdHJpcGxlLWlzb2xhdGUsIGFzIGl0IGlzIHNpZ25pZmljYW50bHkg
bW9yZQpjb21wbGljYXRlZCB0byB0ZXN0IGNvbXByZWhlbnNpdmVseS4gIEknbSBzYXRpc2ZpZWQg
dGhhdCBpZiB0aGUgZHVhbAptb2RlcyBhcmUgd29ya2luZywgd2UgcHJvYmFibHkgaGF2ZW4ndCBi
cm9rZW4gdHJpcGxlLWlzb2xhdGUgZWl0aGVyLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

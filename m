Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0457D32CAC4
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 04:18:08 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E92923CB39;
	Wed,  3 Mar 2021 22:18:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614827887;
	bh=CiL4mZ2eatA8cJOdaubPL2p4N+xP25GQkGzwAreuSKs=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LW/sJrvWTY5pm8sYoAhDHDmIIOMyebXZV3blWqoLWcqUcRl1NWvPE3qQrEymsRTzJ
	 z4P/QVzR6L24ViU+k8lMuXlrIJYoUkFjvFRv+vrLnrVJqw0az4OIpSpOXmE0Ru9Eo1
	 5AJjrtAyIe1QvSFK08N7IhmQ4h9L1Iq9pBpoJa4rR7BEk7y9jCbhPk7MnuNlcAV4pz
	 /v2vS1DSJGamxgr1n/urmq+UacAcCHGtMJkZukOsPbidvLiDELF7O+NNexARCwySJv
	 8IGiDmMqJmBp7dYlHdniJP/zMa0wQ1MVSphbBn0MFrMJJKcJOU3eBRpz1GSLeOvf0k
	 qHm/NY6lUqwIg==
X-Original-To: Cake@lists.bufferbloat.net
Delivered-To: Cake@lists.bufferbloat.net
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 74FD83B2A4
 for <Cake@lists.bufferbloat.net>; Wed,  3 Mar 2021 22:18:06 -0500 (EST)
Received: by mail-lf1-x133.google.com with SMTP id v5so40699265lft.13
 for <Cake@lists.bufferbloat.net>; Wed, 03 Mar 2021 19:18:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ej6C0RoCvGqR9vzqpsYIb50hKrUoghIpsLUKLpXXGdM=;
 b=hvLSIPyRDwrzhiSdJGVAoI6s83jUpjhcxINF9zBsOdesTiItWtm9QkDqj3z/0duoWS
 dFlSkRTyTFMLLKo04Tjji7/G+nb3Hhrqyez27BhHKl+cLeg018M0q8Lc3hVw0vmDsV0e
 pqnHPoxfPFEgxo2icdSlpfsbH9N72i6F0+htSc5OK4lPihRtPsOkSlrArTuoC4IJvSAF
 98MPMDndS6mTeT9RAiR615jjy0HRsSfEfTd1qBF0woU+TI1Vo14OejS4u9ZjtfLlOQnS
 Eo9CLnSh/CltX8YyjBAGLcYXWqmjkM5wHIMu6sQOMCNbcl7MHxGbcDuWvGCwK1MEKa1L
 C7FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=ej6C0RoCvGqR9vzqpsYIb50hKrUoghIpsLUKLpXXGdM=;
 b=mR+OMPtujgF+R0mFLyUsGftZC5lu3e9za1Pl/7Sj8nZ497TfYVz96SZzeN+VCI9FDp
 TLChMsce36pYk5oyhHAaxTY3vlPmkSAiEgjf3Bq+CcCaNTGhudvkP07gXZQqL+G/voQ5
 FGGAY0oX6dNZ/8Kk82y+zP1d+CYX6bGAyJ8uDp21Ay1CkLFeMwYnplrDiAwWN+Zb7C4p
 Cy+oGFANriGn9uaBIhwGZCwJL0mq+PAQ2WNvd/jW87NVQJzb6LDHooAh5cZ2dkSgbm1d
 k2SuSfB6aI8/jLQALe9FPoX8glNI1DHkHnhsIdmPVwfEO5cZoW5jxVosQZOMWknSVfwT
 2YHQ==
X-Gm-Message-State: AOAM532qxBGUl87/BpJZuo++0B9CLC91c/nclDBBsIIm4wDN8oCNaoxj
 iaah9+qBXC24DmoTcpkbn0o=
X-Google-Smtp-Source: ABdhPJxFuglYShTGtkJiSWauSbzNhKFLFMtPam3kBosbnj9k+WGi/7VnX8eCe+tH5C3M6c89UERupQ==
X-Received: by 2002:a05:6512:2287:: with SMTP id
 f7mr1007700lfu.40.1614827885318; 
 Wed, 03 Mar 2021 19:18:05 -0800 (PST)
Received: from jonathartonsmbp.lan (176-93-29-60.bb.dnainternet.fi.
 [176.93.29.60])
 by smtp.gmail.com with ESMTPSA id 124sm3122908lfh.252.2021.03.03.19.18.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Mar 2021 19:18:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw59J7+6t-Gm_Q4+mo42BtkaqUct8SdWB1WKiD91akJMxQ@mail.gmail.com>
Date: Thu, 4 Mar 2021 05:18:03 +0200
Message-Id: <E562AC96-88D9-4EE8-994E-97546EF71A0C@gmail.com>
References: <CADmwGqvtAg9p_+RHN2bGms=8XLNU698irJ_VVoXjYpZ2v7=Vyw@mail.gmail.com>
 <9C791D21-7FC9-425E-9167-EC7660BF38F9@gmail.com>
 <CAA93jw7RP_xLJetKJqiEBH_bgG6_P=AGExZF9VTYs=3hoJH1vQ@mail.gmail.com>
 <FB137C01-AE54-4E90-A32C-CC0D8DE0F405@gmail.com>
 <CAA93jw59J7+6t-Gm_Q4+mo42BtkaqUct8SdWB1WKiD91akJMxQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] ISP Implementation
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
Cc: Cake List <Cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA0IE1hciwgMjAyMSwgYXQgNToxNCBhbSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwu
Y29tPiB3cm90ZToKPiAKPiB5ZXMsIHRoYXQuIGNhbiBpdCBiZSBtYWRlIHRvIHdvcmsgd2l0aCBj
YWtlPwoKVGhlIFJFQURNRSBzYXlzIHRoZXJlIGlzIGV4cGVyaW1lbnRhbCBzdXBwb3J0LiAgSSBo
YXZlbid0IGxvb2tlZCBhdCBpdCBjbG9zZWx5LgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

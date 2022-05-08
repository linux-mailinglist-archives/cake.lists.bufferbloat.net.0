Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A896351EACD
	for <lists+cake@lfdr.de>; Sun,  8 May 2022 04:00:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 14ED73CB38;
	Sat,  7 May 2022 22:00:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1651975225;
	bh=PNe7j4UO4z5jWN3T1V1TiBpEb9rakbSIdnjWKl4YT7g=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=W+/tzlUND4UZpFdZB/FkGnYbbIwVKiX8ha5zlqhhjetGggZWWhc2bPgLAXDeq1dcg
	 dNP+A0kwkxTuHvRpwQiNgVD+m4x0Bf9xSNtHqeWLrjFqpOcXQOV18K+Cm7sTBFfYMz
	 6oWXJGr5J6Iw0f2QgmTDLFaLRW/2k5oEjb4X0g9f9XEhcIAs0SYJ577gS4iAm9tjVu
	 ldGDpjZbg4AS80YJDAVHtzDEY10zU5fWQTVPTWbBuYY3SOBTSHN/e+YkSLyCZxAx8C
	 VuRqlZRTeQpylBAxDfzxuxt8ZbH4jj/18kUMVVoxNwZsnZdHFW872tHSQJjGdxBPZv
	 0Ceg6ZzvUO6wg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E5FAB3B29E
 for <cake@lists.bufferbloat.net>; Sat,  7 May 2022 22:00:23 -0400 (EDT)
Received: by mail-ed1-x52b.google.com with SMTP id t5so12564999edw.11
 for <cake@lists.bufferbloat.net>; Sat, 07 May 2022 19:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ufrZR2bo0fDmB8XH4Os9+qtuaiDDAiMt3WQkrLB4ML8=;
 b=p1s0ldt+ivGH04yNPmtCkZuDxZKrjNXrOi4C+uDQdB6XJYTAjP3Bu2mhR065t2PW9i
 DLVX0GDnPTcTxb+zxbZ8QcYcZtRsxrP4x6KrPlDBmK8DeIyPadh7dp54tB8KQMtjgCUR
 2QeSyLp4Fpa7qYkQ1RodlkZ6JtGCFxW/AW2X8Jf8leLu6smYNlpipAXr7gJwxStIHbG6
 d/FGCDqqhPj6p/4uZ0PdH0r4v4Gng9x0xHZDLOzcOPUsIhAutFBomu5kW5mBdsn+pNyr
 q+4QfN+QEl4QrT0v/C+18fr73a+SNzDPV8j3E0yVoE8/3DJGkxxJpe3DY7HDFVmxPr4A
 UelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=ufrZR2bo0fDmB8XH4Os9+qtuaiDDAiMt3WQkrLB4ML8=;
 b=zEkZgJXNc1RDIGLv+RbbYrJIJMgDpO83EKN9+3hy4Y166Y+GvjPK3Q6XQ9tppaV6xe
 wxCE0a7PvcymAi9YTgvnJS6Vp3oNsTeYPxaQp08Kyo9qeISWZYajotAPCPNH/U1T5y0T
 uNjx+jlW3yzsxCaFywOuJZypKnHay8Hk/C8IxtXYVCOpCvyim6SuhUALK/v7BkJjmB6r
 C/t8XNk4VrKj2eF6EybhiQkNRInRomBFPI2Dpul2Jc9PASNiBppzbn+uf6Ed5ImrzFXq
 MRLdWPYkl+EMZ3jB0x20PXTghrC9fFcAodW4OSe/xiZZpJ1JUWugw6Vqz+R70r2br1j2
 Xv3A==
X-Gm-Message-State: AOAM533q4iUsU5KnlQjDrpkCI1bQpQqSn/QqO41fbgk4XbR1NC7VcDL0
 gBB0l5iF3KGLUqsWZRp2XhZXNVzOewS2tZY+yVtijxjVWgW8UA==
X-Google-Smtp-Source: ABdhPJzUezcNzKzsgGpEdU2M6kDoCl0xJ8aJLvM/D4004wEVkFUhSLjCJNxeE11OkP+1Mn9DbCd466F+kwPWwELQPEk=
X-Received: by 2002:aa7:db4c:0:b0:428:111c:b6bd with SMTP id
 n12-20020aa7db4c000000b00428111cb6bdmr10520277edt.318.1651975222755; Sat, 07
 May 2022 19:00:22 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 7 May 2022 19:00:10 -0700
Message-ID: <CAA93jw68J5QV0ibSBFtHe0_L327p_JF081c=K60PE01=Oa_HUA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] 7+ years of cake
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

SSBkb24ndCByZW1lbWJlciB3aGVyZSB0aGUgaW5pdGlhbCBjb252ZXJzYXRpb25zIHN0YXJ0ZWQs
IHdoZW4gdGhlCmZpcnN0IGNvZGUgbGFuZGVkLCBvciB3aG8gZGlkIHdoYXQuLi4KCkJ1dCBJIHJl
YWxseSBkaWQgZW5qb3kganVzdCByZXZpZXdpbmcgdGhlIGNvbnZvIGhlcmU6CgpodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9waXBlcm1haWwvY2FrZS8yMDE1LUFwcmlsLzAwMDg5Ni5odG1s
CgotLSAKRlEgV29ybGQgRG9taW5hdGlvbiBwZW5kaW5nOiBodHRwczovL2Jsb2cuY2Vyb3dydC5v
cmcvcG9zdC9zdGF0ZV9vZl9mcV9jb2RlbC8KRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A59F165478A
	for <lists+cake@lfdr.de>; Thu, 22 Dec 2022 21:51:29 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 78A1B3CB40;
	Thu, 22 Dec 2022 15:51:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1671742287;
	bh=vZoYhPxettgrXydqUEEKCK6H+oBMCByPG0D19kQRSBc=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=nTmJ3bphzxtr4zzqw9v0GAR5Phbfp6I6Re1G4VAvSW8tdOMUjdPvWU8Q7y6warnQi
	 jnR5JYwSto0KdPF8LD3P5J873V83Z13L3PF9HwdigcKzGOe9IjD8av+N29igM6aCzm
	 6IqH2uIEWMVX84Ge+NcmvHGNhKzlmxxFVD/QHwG30qrZshIJKw+hfyHtOPwIVz1arA
	 e7w27iO4BXkbWFVKzWGas2p2ShjLmoHQ85GsqAvoFGjlUBt9/GOFbXNsJWdoFIyT8T
	 ugQ6sJdtTz1tib+45xdN+IgCMTLz1NcDUV+yyTXv5jkHqxx9Ha1Yq91GSuHSVJ64wE
	 vV4gLmrCukt7w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 563523B29E
 for <cake@lists.bufferbloat.net>; Thu, 22 Dec 2022 15:51:25 -0500 (EST)
Received: by mail-wr1-x435.google.com with SMTP id y16so2836005wrm.2
 for <cake@lists.bufferbloat.net>; Thu, 22 Dec 2022 12:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=kA85ormDtZKL2QsJN4/dvL6b1CCVLlOICJLpXUJ0lmE=;
 b=B7aFD1GmN+k1QEI+4AJBS1mgiv4SUAuchctpPeXfNbWRPeDY7Qgzfie1wLjfEGewN3
 MBsxjea1G7lAZzqaht8w2cwdgC54vKIzfNLC6TDx/AM5Le9HxSenFMQjDsCwDt56FxE9
 qbonbmAcbd3x/agZ4pF1AxbocGkpqWZ1PPDa+AP3pV/IATzVREq4tHx077P9yv5cv88+
 +Xxg9IC75TAu7odqThdoOhqZKlYz7+HD+WxOcQ9rlEQf9aCgaJXdAvuXgUBuMq0f551F
 d9PbP77Q91Jjh0C0Ofiws69D7IU6gDtAkCSiZxRsFgUXG5cUnFd+zhDWAAuHzR3GRGQT
 ZttQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kA85ormDtZKL2QsJN4/dvL6b1CCVLlOICJLpXUJ0lmE=;
 b=XfFTDTn2szsVQ7fCS6Y2z5rjVlAodrgVL1xeDO3qt2lG2DvpSQ2ar0k6KVWjD5An4V
 YNJwMaREUw/N82FUgXoTTYB25jZKHcbKMEpYoUso1Q/tmMB84x86m8rNhHuQIOwflYJX
 RB34wmAM/u2c3FYwOCjbXdw6Tg6Xp2BTBgXkYffSNNRZ8Cbf2XEIWTneYhCkt4RBqgE7
 ZbJNilLsfJFJ/earMZJzlMIrkFmy6VncleO9xb7I9O7pC5WPC9CtnWOFNyauntO/XW2z
 X87csdfkJw3U/yc13JJmYQNbn8MEQJBG3DQKn9Z+IVJtHFn5AWzwARP+IYJOV6Jrixja
 I8Iw==
X-Gm-Message-State: AFqh2kqz9onXn12pXdqp+56+/2SpJAdFnzO9Y/7Y/czDmlXnhpae39UF
 UToigqfMVt8067tVWSUo/9hu7BG2zmBzeIWYU/29lyPvbf8=
X-Google-Smtp-Source: AMrXdXuDPUtYc1iqggY/2DkbC0gUby/OoKILhUqlS8hjGjxdD4n4Rzd1Nwtqm/68qtqB6KtPG6XdJwpUzpgPo3+J5Xo=
X-Received: by 2002:a05:6000:4b:b0:241:fc9e:fb90 with SMTP id
 k11-20020a056000004b00b00241fc9efb90mr168857wrx.430.1671742283186; Thu, 22
 Dec 2022 12:51:23 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 22 Dec 2022 12:51:10 -0800
Message-ID: <CAA93jw70X=EogeHq_hzbiQKOtsU0-XP4x3ZbBubtMuKoGavwFQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] some comments on cake's documentation
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

b3ZlciBoZXJlOiBodHRwczovL2dpdGh1Yi5jb20vZHRhaHQvc2NoX2Nha2UvaXNzdWVzLzE1NCNp
c3N1ZWNvbW1lbnQtMTM2MzMwMjk5MwoKLS0gClRoaXMgc29uZyBnb2VzIG91dCB0byBhbGwgdGhl
IGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgpodHRwczovL3d3dy5saW5rZWRp
bi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYw
NzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

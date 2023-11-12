Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B0E7E8E5B
	for <lists+cake@lfdr.de>; Sun, 12 Nov 2023 05:40:20 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0B25F3CB49;
	Sat, 11 Nov 2023 23:40:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1699764013;
	bh=vLiRWDKfP9RuIM778m6MboBexLffMnQHoay9A5SM5gY=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=QpQhTUt0eROzKj21ei4/N+AUsB7H3oZvxuZ/hA/cAOrsKb2C4OZ0fW5RhGLmtC7wz
	 inJ04ShiHHBqRVNOop7e/KkOrcK8g4PBue1taHy3zZkbuvu09S/0dy/F4PsLdcF+q7
	 v8zfFXOUXKAWSWlk4YnRypdE9HZsLmpteGFNQrD6+5Cwxs64GXdwsO5c2lGEwnRrUa
	 rRyMxUPHHs8PmJRgMoKriPZx7L3d+7Y5HTyuGVnMG7WRO00raSY1xdXjA4tRsCUXMx
	 39qZ6XiY3RtlijWPIPJHLSJuYaXyaVjGoFN2Ok5VnM/dFGOY87Xqs2rFo5qoARfebJ
	 a8BA0OZm64PZQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 56BDB3B29D;
 Sat, 11 Nov 2023 23:40:11 -0500 (EST)
Received: by mail-pj1-x102b.google.com with SMTP id
 98e67ed59e1d1-27ddc1b1652so2986922a91.2; 
 Sat, 11 Nov 2023 20:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699764010; x=1700368810; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SZNT836f+LGwQAIo1oFSBbZLZlR1fDE/FT8t10rXvcg=;
 b=eVyO2PUB3gJVNhdqIYqyt5c+9Ui8JJ+ipuDD/TJD6pYINXBxPMVpOiXSWsMBXOWyjd
 jJuCk31BCexsXgikKzVzG+YVCt32CCZgfbpkdtCBv1KdnUsQ4L9966PmuUl0ZWNnrpj5
 qbKKtQxEaxQGtG+C+nj/1syum/yugbLh3cKEdyAG999RwtOewKpkx5MpbbrootwFIPgF
 +r4q8LOONGdvGBKIeyE8CFzSnlMBc/VHyNigb96F4TIEI5zNe8Yuq6+VsBl7wAm8VAnV
 4hBs6VcwW+9z8JoMM3m1F3g8BQoVAHE83D9EhsQffMS0YpvVeLBG6FIsZkEqQPdVaDlq
 l4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699764010; x=1700368810;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SZNT836f+LGwQAIo1oFSBbZLZlR1fDE/FT8t10rXvcg=;
 b=aHx7NoBZ4UKKssLQzkAMHLA5u0Q3MGwlxb80ilqp965Wu+bpFJ4c/XKe++6fkgpGvj
 xjrdvTTSxD2IpTtftIy/w1pPuVcHT31+nm5dfwyQkjq8PRcxy01+RRpuXRklUEMhktiz
 Q4jNK1aBT6DLysrXC2B0+GxsIIb2vltFjCv/eiIL0Sb+dMvIHpMLseq6e11+bAqg4YgW
 93Vm/dxqlZyTPJ21JQqo4DUFsN0wTvyY+NlTavmXT1CMeq7FGNWp3Q3P8s4lxExx4SKO
 BosiTGJ4mBwlNQGNEsKHFE8PjpsGXMN5ZSYrXLpqBW51Hu0GFtYLdexD3bWIEIfCTdba
 2lwA==
X-Gm-Message-State: AOJu0Yy/6hxjn6167YQYVbgRtqJNg87JkwHodoObXZJjUJoBoH3RzEmz
 hPAFrwWpKGMHeoQDiPiy6mdDWYsWSVPV7GsmfXj32SpNMlg=
X-Google-Smtp-Source: AGHT+IH1NLf2VxwcmZrGooqZ2bYWsAFCYOFyycac27rvI2HJ+ahF3EodOjkrSGjDtrpi61Xarl0niDClwiqyk4mtB2Y=
X-Received: by 2002:a17:90b:1b06:b0:280:771:e90a with SMTP id
 nu6-20020a17090b1b0600b002800771e90amr3696392pjb.19.1699764009638; Sat, 11
 Nov 2023 20:40:09 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 11 Nov 2023 23:39:57 -0500
Message-ID: <CAA93jw4Jvhe-YAKngSrTDmh3zbQXT3tpgBbJvizuEGz-bpWOzQ@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] a cilium bandwidth manager test series
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

aHR0cHM6Ly9naXRodWIuY29tL2NpbGl1bS9jaWxpdW0vaXNzdWVzLzI5MDgzCgotLSAKOiggTXkg
b2xkIFImRCBjYW1wdXMgaXMgdXAgZm9yIHNhbGU6IGh0dHBzOi8vdGlueXVybC5jb20veXVydGxh
YgpEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

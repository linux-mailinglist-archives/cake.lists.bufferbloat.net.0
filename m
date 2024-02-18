Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 922B88593A5
	for <lists+cake@lfdr.de>; Sun, 18 Feb 2024 01:01:19 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6D88D3CB40;
	Sat, 17 Feb 2024 19:01:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708214477;
	bh=ioSbvRQ6TQwvBlmSwfWix/ABkSACgnMeWxBofJ+F/Pg=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=OQk8h78iNwbFcQ2BZUfeiidwusy3vHD4qXQqt9FtTO2S+gzlocINf9Tchap1rXG2+
	 +QpzLbE3S8fIliaWxkJfL/5otAFmZwGNiVRbLzvaClH13L8gqoLf2A4H68kGv7/rhX
	 vi2d+lPRgD3fwOMgMQ5O0DIT3ar4UNsBKhqe5LpJzUIpqZSxNFGKA52rTDgJoXf95c
	 lV/d67mBmSRdMtDoVnG+DnA73KXyJqBLaKpr4IRmpUCU48ELJVZrFP5xeBvrl3PzQG
	 qkLfc2+QyqMgDTubcA/J2UjpkbuXwc31e5DX0/49mBrID5XVQ1nDV96rJn3L0TIazd
	 WUdJoS7lyICKQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7639B3B2A4
 for <cake@lists.bufferbloat.net>; Sat, 17 Feb 2024 19:01:15 -0500 (EST)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-4125df90568so4436655e9.3
 for <cake@lists.bufferbloat.net>; Sat, 17 Feb 2024 16:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708214474; x=1708819274; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=WYq0472u9wU1l5omguv6U9Jd0NamXmud473R85D1Zxw=;
 b=I9Xt1xdOxqfmAwWIKyWtD+cJlmoNAgz8d0AwVe23WQWMILNIg1B+obcYjTGwQ6MSq0
 UWkLwF2cI6ternyi/M2mcUMj2NlU9Zigjt98zgNlab5RyCOiPQhwiJZDvDSm77hVVMjE
 4czQX9HbQjOT35OJJthgVIU6obtxrUcWfUQdOFIyxUadHJY5Ulr3OXPUAescxFuJ1z9D
 oAHTo/atPD+34XO5UhG+hdWr+BnansPU1IaUNcTYdBkK6ZrqoItT1faSp01gJd4y0UYN
 FUuQbkluxPzIkV4mYQADOi6txAhMIj2HHaRzvRA6GFQwdJmF/qeGV0/hsoVHTRO7HcZq
 sVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708214474; x=1708819274;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WYq0472u9wU1l5omguv6U9Jd0NamXmud473R85D1Zxw=;
 b=iwZxNSH3owPcHMMsuTf6kvRj0hRt+k5nLKkKsBvbLiuFDlbvGG8wQ8WYGiFGan+qse
 VrciDOSTmj2JfY8hphSsTEERYCXgpzz5QGQpHEVKnZgCJKOlrUQM3qP3cHp7NCWnvFIs
 BzimSlYlQFD3IHY5jaG31Ht8GHqEUsk+qfVVzwW673cMfG0olPImx68n5P79gdx65N2c
 OjBgcbLRVaQJrUQrEpMANv+tbXq7dluYAdFPWshpYstuIWvD3QbIlmzKHCNQ5hTw2iPi
 SGizRtl0iRm6njLAwKdrhrQBs4yjD0NAmz5vN+jLDhNHiE9gLuYbuAG7eV1gRIgX3VCZ
 fiXg==
X-Gm-Message-State: AOJu0YyqJpwtXmQmXI9MZv+GhdP7IxZpCXJ3yx3gntJFcV6wgf216yel
 8qxIK6pRf8cb/CPQeNQoGnHQ5WDQYSAIxvEnvwiMXbeKn/hrygYLfiBDtcZ/x1mPzZlhKmtYHu9
 u8BUEksDMaybumsmR1brqSfvezvdxfqiQHEg=
X-Google-Smtp-Source: AGHT+IHqiHeIemk7ALOnlXwPkkM0Jk+cXNIxUGIN/8XpYcdXh/XUfo8ZNYBdJ4M4/AJuY5muiCO+CND++eIU/n13YhA=
X-Received: by 2002:a05:600c:5486:b0:411:eb73:243b with SMTP id
 iv6-20020a05600c548600b00411eb73243bmr6925367wmb.5.1708214473946; Sat, 17 Feb
 2024 16:01:13 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 17 Feb 2024 19:01:02 -0500
Message-ID: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake's ack-filter vs GSO
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

SXQgaGFzIGJlZW4geWVhcnMgc2luY2UgSSBsb29rZWQgYXQgY2FrZSdzIGNvZGUuCgpEb2VzIGFu
eW9uZSByZW1lbWJlciB3aHkgd2UgZG8gbm90IGFjay1maWx0ZXIgYSBnc28tc3BsaXQ/CgpodHRw
czovL2dpdGh1Yi5jb20vZHRhaHQvc2NoX2Nha2UvYmxvYi9tYXN0ZXIvc2NoX2Nha2UuYyNMMTkw
MQoKCi0tIAo0MCB5ZWFycyBvZiBuZXQgaGlzdG9yeSwgYSBjb3VwbGUgc29uZ3M6Cmh0dHBzOi8v
d3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9RDlSR1g2UUZtNUUKRGF2ZSBUw6RodCBDU08sIExpYnJl
UW9zCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C654137A00
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 00:15:50 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4BDB83CB38;
	Fri, 10 Jan 2020 18:15:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578698148;
	bh=kbWQKlA9Z+LpyI2kxAHBPBdp19PF1/ArzB8IhNmDpa0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UMwXLXVn3SCIzoBHJwyylV7Rh4M4XjuLWOtIBJcnOlXpyBr5y8VWOfgbU66COZJd0
	 HBbeAqlPSgCSswvfSNdodnl3IB8E0wGEjwYPV4lsM8GvROHx6+NSnO4cuv+FK2K+GK
	 1+RvgTfhwaQBsjAyUdyfLRGSFidV9KnnxrV9FTs4xSBxAZ40s8TZcd1PKPuxJPGKMu
	 bs357P0zec1gEyEAe9sTyNlQwL9hNkK7kdsF7P6Ny/m1BSpRMiqRx2mHc7nTPINWbK
	 BwptldzbrMEsa6xULohzq92IZ8/78saPutTD3jdcuqCPJr1S979lEYpRWOtazawO1H
	 Kp3Qo1XrRKxvw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com
 [IPv6:2607:f8b0:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C7C33B2A4
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2020 18:15:47 -0500 (EST)
Received: by mail-il1-x135.google.com with SMTP id p8so3082887iln.12
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2020 15:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jM6ae6WbUQPUVaCa+VOVDbduONHhlUgszVJDzdPv2fM=;
 b=sWD47qoMIXnlpEaTEiyjmLQxSBznOENwekaruv8BrsaskYJwC+N7cXeHVwJXpZFMOU
 EmGlbj6PxoX84Ef1sframaNvA3nGDkauLGYMr0yVNO+xA46Lxl+y+022BWyvo8KdvtRb
 J6JG496/613VPlWDkKuWulxtoaCHSRlJE0yH4eDFQVDtuk0MYJ81vf5Aiseb9xhQ1RCB
 PiBwofLnCiYsfoWP+K8B9dGlCNI2LdDwhJ2pSX3kQcGvPbOQ1l1i7I/uWuiGMViQmFgK
 Ap0YTZVsQV9pbv4eJCF4mV8vIVorE3EmwyrNEMdsxTtSZlyUPt5UicDi0SHhoRJd52dY
 ocOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=jM6ae6WbUQPUVaCa+VOVDbduONHhlUgszVJDzdPv2fM=;
 b=U+OXbH1ySjEoFcqy8QG8cXXP7vR3N3VRYlUskkdLF5rtIV6foVjnni/X8BWnZiopEU
 qccPwXjGg0OkFhf5571I7xyS9P4+7g7wrXpVfw/OVAboKJPttiaUxMDI2YmVrgKV55mL
 hpp38kl4Hf17gvypO+7lk4Jntfai0mhfCGvnP7V2U5hnoSVdDD2cGzdTY7UwKBVllfLv
 JrxrQs9zRmy8mZuCcv5ePzZKPpHQbWZ2+qO4Pwi3LBA6/776DbrZWu3Q3dHbOnW4bU3Z
 OoClxttzvOSCaUocqHzZXu3Qwqxh1Lbq2q/Nd4jMfZB9pnwrmZkMB8Bx516Pr1jLegKX
 nM0w==
X-Gm-Message-State: APjAAAX2y5mVTyyGO9aN4K6uaEld60zZcpGr6nXKUikw5BcwL5K4XbEF
 MyXXTS8VRj3O4Gw+16FMyJaSWzyHxkuN16Kn60SeO7/dnplh7g==
X-Google-Smtp-Source: APXvYqxPwFAdgeYzC+elhQy3SmoaIvm9CkXo7KyWn+hUVR3YWZ3PVGmuEPzJOuaRcDkdV9fpzqW0A5h3VgMSXM8Kdi8=
X-Received: by 2002:a92:390c:: with SMTP id g12mr4679703ila.246.1578698146249; 
 Fri, 10 Jan 2020 15:15:46 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 10 Jan 2020 15:15:52 -0800
Message-ID: <CAA93jw4ytLfMPKdwqR0tdpLXEX8Cdy5zZdDjDGA8LOU1-bVVzQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] hmm... maybe we could get the actual link speed before this
 gets patched out
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

aHR0cHM6Ly93d3cuemRuZXQuY29tL2FydGljbGUvaHVuZHJlZHMtb2YtbWlsbGlvbnMtb2YtY2Fi
bGUtbW9kZW1zLWFyZS12dWxuZXJhYmxlLXRvLW5ldy1jYWJsZS1oYXVudC12dWxuZXJhYmlsaXR5
LwoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExD
Cmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

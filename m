Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEDB14F60E
	for <lists+cake@lfdr.de>; Sat,  1 Feb 2020 04:38:42 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 349F03CB39;
	Fri, 31 Jan 2020 22:38:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580528321;
	bh=CkrtTR4wAlZjccVSPT/lH+9/oJDQ+RdurtJ/VivcG8U=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QUwltZi40HdnZ7+EBNLrpLLTeWKNq1Gsv/TClljoj8tPcAmrIivVbVReZbcuP98rq
	 nS9Ww4DJKh+sv1IDQKesS6lNWSB1u3CUrljB/79XkBPxwD8zRQ1QLGyWkagp+I5eZr
	 4TUV16brgrMg2YNvtcoxTyP87lxJ2PNIzocZhPQz4s2iMuYT/RcG8udSzk5Mnkoyyy
	 +24CB+OZfzKJ5cInjSnHYzbN0YCWbU6uwt+a1KRd1+Sq/2jw8CyR+u71b3NZQiidE7
	 qTGkmQdggxlyNQ3NRPvqZ/mLQXhWyJPxh552Pej8vncc3pwjNpwrMEhnAb5QNCnXwt
	 gBNxLil0GFEPQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 794C63B2A4
 for <cake@lists.bufferbloat.net>; Fri, 31 Jan 2020 22:38:39 -0500 (EST)
Received: by mail-il1-x12d.google.com with SMTP id g12so8047828ild.2
 for <cake@lists.bufferbloat.net>; Fri, 31 Jan 2020 19:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=GpkXiJELn6jaHVkCAR9XiBfI0P2apdZfiE2EZ9kULQQ=;
 b=oP3HDj2QEGSyVY0h80bQrgg9b9dHslkvLnsG+rOdM8UYqPR1xVipdIioxtnyx3q0lZ
 u+qSckj0in3HWAKVKrJ3VgNxGhYl+XTf95+TTcW3rWtCCuDFe3pEoo6SsTQjDyC2cvLy
 7enS5FEJVQ0ARjx9rdXfXY4Y3pqs4tV0hAAkQBL4buRgZx6qRJKS3hN5S6cbq3FKgFg3
 j+7wAwH4R0Zb0WKsa9watN6RcEZRikadek4k/Vm06vjcQhz1QbbNuroFoffTMISeG0XP
 aOHfaA6r0/bzEnGA84HGpEfeCDqH8nw56RokJ98vH1DkNRcvUTpI2XKJQImJ3cAEp/SH
 xpiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=GpkXiJELn6jaHVkCAR9XiBfI0P2apdZfiE2EZ9kULQQ=;
 b=ga1Y1eYM/XzvQui37DSlZXJbSKfmtyoM8U3N/Nc8rMdUz9eU+k+C8uhJivsWgcC5V7
 hxpJD+QptTI0bnbR6FFFXUgJkLCc7ALCfwZh8n4SSStuFS0DenwpU346NKSlhPmZbSNG
 nmnpxNepQm+OPsVO2h2zNwRO3MVxlSFBdzpy+coTwZafaFITnXEih2C1fzIgDGL4cC/h
 TLVwOTZMFetPtrACkfZy2bDtUeGXWtozpa0vMzsdfacc/nFXyF/5qQGMjdpTo/0m80S6
 bt2HrkZTUK0OwJRHPnqL3skw6b8IjRmrwzcS9YB1XkydDDYFu6FtW4yKavjQ4ISE1lEd
 E6uA==
X-Gm-Message-State: APjAAAWkigvjJkXO8iIEhdCc6yiW5CfWSG49C1KHS3SjJl3R3hAfpI7b
 Vc8A6qemHMwfj3UQ8j/eBegHoF/kZ3XAzYgqMMRUtxgZ
X-Google-Smtp-Source: APXvYqzN2L7pSCbGTOtccfcNLuCbTBzz1cgCe0wjJ5mJR4Pi37/5U8z+1edUtM51Q0S7uETKPzIwoX3MnvHgg9jA0vI=
X-Received: by 2002:a92:3a95:: with SMTP id i21mr5573600ilf.249.1580528318865; 
 Fri, 31 Jan 2020 19:38:38 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 31 Jan 2020 19:38:27 -0800
Message-ID: <CAA93jw7h2EsPu33y5J=o-r7_ijKscpGfMvaUfTdrRZBSXiENfA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] I didn't know 10gig cards had indirection tables
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

aHR0cHM6Ly9wZW9wbGUua3RoLnNlL35kZWphbmtvL2RvY3VtZW50cy9wdWJsaWNhdGlvbnMvcnNz
cHAtY29uZXh0MTkucGRmCgotLSAKTWFrZSBNdXNpYywgTm90IFdhcgoKRGF2ZSBUw6RodApDVE8s
IFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS00MzUtMDcy
OQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

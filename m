Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 983C2740019
	for <lists+cake@lfdr.de>; Tue, 27 Jun 2023 17:52:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5EF5E3CB39;
	Tue, 27 Jun 2023 11:52:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687881166;
	bh=utOoHwt0nOkNX++T1IHxuNyhwSJOYwofFdaUu5KZt0k=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Ey08BiApJ1SQNCN52o0fi8SMfI1iRbDI22OwDkbK3do71yfl8iGgwzEfRVg2yPxSp
	 aWjruU3fgMp/zurYMChX/SESXENdwxI/dB/KvKpCduam7VblAzQ9htZa7Xgli+AQ3K
	 AEk+MwxPw0tfQXzrAoa8GLgZe5oZKP1J+B6W1Z587o9OB8BqjtUZM5DRgc8UmDcvxp
	 wiPpMriYYVghrUz3YfPrMBkQTkthiufxgGxjRegPx72M4tK33BPwn7AqPCDNWo7WPZ
	 C2rcH3hzgzbWfc919vWNxiN9ih8FKYL06G8z7ONq+7yNEOYnFfAxvVW0QgrdtH3g9O
	 +nrGG/XVizgnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8F1D03B29D
 for <cake@lists.bufferbloat.net>; Tue, 27 Jun 2023 11:52:44 -0400 (EDT)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-1b7e94912daso14538365ad.3
 for <cake@lists.bufferbloat.net>; Tue, 27 Jun 2023 08:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687881163; x=1690473163;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7Oq7i+QBQP5OtO/aGYIxfhx9PcMhYwSouEahvNmMKEI=;
 b=F3Z7nwQfDgYeiwWyLu1/dyoqSXtlhAFT//K/+hUI/0dle42D9lHMr2mnzRs4TApJzK
 /vo5SdeYbdmSVO6+NjjLBms9q7oWKNNewRo8FghfJPUZ+4fRLN8s/zgAop78xls6R9DT
 fcwBCHxfaDAGoHr6rP7OZUDjG4TSaXII4fnf9OpkaA8rGNrYx/SgPaOqv1M5QrWEq7/F
 mbvt0xwLg6jIDWP3Y23ceOnhk0lbr7jjuvclGZ9hHL5ceB3xWDrHE2WRodJPQTgWkenY
 kPq8OJVE8hBOA3sBmNZ/TPNmgQNj+2QEj3dt68MNubu66RYXYb/P8RFcKpy5lf6njcim
 X9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687881163; x=1690473163;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7Oq7i+QBQP5OtO/aGYIxfhx9PcMhYwSouEahvNmMKEI=;
 b=ZB8kfBt+2Dyb6s8HO9mqQvkef7d5W2yNSIFZgYEkzhGrPOKTpJzvGefoLrwviQwh2y
 naNp/yXCRNCwQXQ1GEPerBFMjj+d4Ub7r28GNuKiNlKBcDjczKP8M+cHZ1P9nF9s7GOt
 /E7/hpN7WokCkcs/e2RcBvUVYrTnXE8dJ3nmE3XTHRJEPyObvsyfUZE20SLeXbf/bv6f
 rxrs7JOs7yWph+QH22ZjnTzapECJ4AC3gO8atwcMnTdw8owGjd4rRBeDXdm+ekpxa21x
 1yvRJ7ycGbrlhgQw2MXdffcFFMZylYWOVOyrgGkWGkbN6kRIeqOBPdlefFkBVif+iJjl
 TKzQ==
X-Gm-Message-State: AC+VfDzbOMoqT6s+y9h8e6WNf8juAgB2ItAZ8Ku6J/K6J2Z2X69gKfPA
 NEYgGQljfWRYkdbfyyh3K0WCtFLFG+ZQnrZbAippZvZYLB97ZA==
X-Google-Smtp-Source: ACHHUZ6I3vFfXMhBkhT77S/LXE5ILRIqwxg0fKkNR9rcYC1fO4t6ftbLsOif6xaFlfb9xyFTjYiWfibQ5ssv8DNSkdo=
X-Received: by 2002:a17:903:44d:b0:1b8:10d:7391 with SMTP id
 iw13-20020a170903044d00b001b8010d7391mr4671623plb.4.1687881162963; Tue, 27
 Jun 2023 08:52:42 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 27 Jun 2023 09:52:29 -0600
Message-ID: <CAA93jw50RiitnaU=p=ygK0CJbg8n986r4GWbHt+VsH3CDZbSWw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake in guyana
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

aHR0cHM6Ly93d3cuZmFjZWJvb2suY29tL2dyb3Vwcy8yNDkxMzQzNTg3NTA5MjA/bXVsdGlfcGVy
bWFsaW5rcz0yMTYxNDkwOTE3NTE1MjQ1JmhvaXN0ZWRfc2VjdGlvbl9oZWFkZXJfdHlwZT1yZWNl
bnRseV9zZWVuCgotLSAKUG9kY2FzdDogaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBk
YXRlL3VybjpsaTphY3Rpdml0eTo3MDU4NzkzOTEwMjI3MTExOTM3LwpEYXZlIFTDpGh0IENTTywg
TGlicmVRb3MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

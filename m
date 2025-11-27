Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id C0292C8FE5C
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 19:22:16 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 967BF9D5543;
	Thu, 27 Nov 2025 19:22:16 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=EWJBeR7r
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764267736;
 b=H17R2VgWDjidd7ttrMWXPwZzFBFAFSFgRwXADuhSyv9ieaiOuO4IPPjMTqZFapjRfigBy
 R68g8TthpmemAadEdB6cUFZte5zIAVJrYfaTbL6o927xvQJTJrhYLcZ60YDBoRhLjZdcEFi
 B5Tejpjc/F4v4nzAxmbx5jwMRjY1KoY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764267736; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=TFoax5DqJAI2zkUAyZfxpULYwgGQxp2zZeKQ6x1vRX8=;
 b=7C/HB44E1EYEDkMBKNa7NDsnwh3jf4xQZGIk3PTehKd2OpNPlh7mpGzgTZAa8bQmSCCaV
 Ut+twe1o1St13IsI6156fnzEpv8qZGtOpdXtkCzz4+LWPhcOhtcx94AP580rwpEib6LPdo2
 knDLAJnQABf9bV5bpV+MUIXrqUSLxE0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
	by mail.toke.dk (Postfix) with ESMTPS id 427749D552A
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 19:22:14 +0100 (CET)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-343774bd9b4so901852a91.2
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 10:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764267732; x=1764872532;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kLlmHa9xtqFKgo7ETYW4T2wGIj/hShZNl/WxQYt+MiM=;
        b=EWJBeR7rifbDbkvKJPEOOTlbZejd9JyaGI97XK0y1A8anbiua3KBWY5qWhFR/IAypD
         pEGJK18uyEoQJB67YboSCBffAZRiU7zW9YYibrvsOdsKvWhTK25nbDsfWhjiAJZ5/uWf
         JUnyDhIBe1axUYrqYcwP03p91IP7ttDoslZIzGHP+NUImEcUb/1842jnQ48mhnFzqBp4
         29q4uAteSekZT9aS0AXkNn3Onusq78giouM9/nx0/ayUW5i+wt5pONiw/hkzzuWv4Ho5
         aWbZpOmaSvW9ZMWnRKLtCTojVKBW1NkqX2BRRzWIHs/K8GIJZkVDfxLM2jMR1hW1sia5
         DY8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764267732; x=1764872532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kLlmHa9xtqFKgo7ETYW4T2wGIj/hShZNl/WxQYt+MiM=;
        b=ge/B7YFeykwb+Y7C0in6LVz3t5uNVptxHPcuFvpUBvLwLDAi4JRZvdGiEcE1kheJJ8
         DkUC/LgAWu3tVjZeX610wvvUIPa0DUwjHn/JnNoqe/kjkHIakcgUT7KW9Se6T7lBjrNU
         lcHnychImfWqxh3I6VD9MM2R1Dc5SSaZdYzwFui/nJHsrDK0k1JukcLeWGmeW7PPo4ly
         jmrpT8prguQkPwdq3tB5aPVA78eGJ2eRLfP/z4WaOlWxUmwJI+yGmvmOGHeT3hzIu2kb
         MDQzi6mdqr5UIEb2DHiTUdlhKMvjbLBnDNbqXWInoNkSxlJSwT00W34AGUS4L1fFjvqz
         K0eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdQAu74AScSLEZhjeB1AJpm+YBKya7P3XWKk5gDtYghN24LLBZ2r9BAM816HSEJuJHljoa@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxurN8SOql8V1veI+kl6+e2RABcWEjQEirVMbL5jx/ZtTy7fGod
	mzXDNui/Oci8/spSUIlfVwzeud4bV7cdqvv0YsgtU/WnpF5cqLhp0nVu
X-Gm-Gg: ASbGnctAKpxBjrM8qNEnPpWQzbboIBukp6CUH0IM+IECtBPpznkqSDvfS0OwhN3FIyE
	W27hYtTpYb9hgAKd/S/zDaU8qQBfhAJnTUuOMc6UHsAWLanFfL24PxKZUbtRkNiivS6YusajP1R
	J3YNHy4tCuMZHGf2bQLx6khzmbPqEiZyWkLzXGA5WEUZZJobYk85nd1cXJ2HetGAnVppt2A1aKX
	wCtI1oepeBCNDGLhcWXoq0oYcQx78GWZSLpei42AyX0z65H4eyW1XSHCzzBUb2YKEx8RM/7eK2P
	0MBDPm8KLxXNkZWMHyASMvyPJ2GM30ZfBK9pE/1MdQk94P63PZOACQc7ZICnPatq3l7yLWJBJ4f
	3lZCfcwGE5g/YM7oDsISTFfGjnN26VXZ8e/eFvZ+EB8DUPQ5NfR4W7yF1NCND09xQnDzwnEbODp
	5SbENSJ4l1hPZDGRrMzA==
X-Google-Smtp-Source: 
 AGHT+IE8xcHYZfCXh6tP7khVEJw8vLXqjkwggDLc7ntQcLdUlt4y/KaDurVYmBOCuN1rVQOzoyCJ3w==
X-Received: by 2002:a17:90b:48cd:b0:340:fb6a:cb52 with SMTP id
 98e67ed59e1d1-34733f4acfbmr21840475a91.25.1764267732245;
        Thu, 27 Nov 2025 10:22:12 -0800 (PST)
Received: from localhost ([2601:647:6802:dbc0:ef22:445e:1e79:6b9a])
        by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3477b733381sm2473813a91.12.2025.11.27.10.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 10:22:11 -0800 (PST)
Date: Thu, 27 Nov 2025 10:22:10 -0800
From: Cong Wang <xiyou.wangcong@gmail.com>
To: Xiang Mei <xmei5@asu.edu>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <aSiW0k7Z13TvG8yy@pop-os.localdomain>
References: <20251126194513.3984722-1-xmei5@asu.edu>
 <20251126194513.3984722-2-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251126194513.3984722-2-xmei5@asu.edu>
Message-ID-Hash: NXY6H76W4BMGW72JUUTVXELLD7ZYXBED
X-Message-ID-Hash: NXY6H76W4BMGW72JUUTVXELLD7ZYXBED
X-MailFrom: xiyou.wangcong@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v7 2/2] selftests/tc-testing: Test CAKE scheduler when
 enqueue drops packets
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/aSiW0k7Z13TvG8yy@pop-os.localdomain/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 26, 2025 at 12:45:13PM -0700, Xiang Mei wrote:
> Add tests that trigger packet drops in cake_enqueue(): "CAKE with QFQ
> Parent - CAKE enqueue with packets dropping". It forces CAKE_enqueue to
> return NET_XMIT_CN after dropping the packets when it has a QFQ parent.
> 
> Signed-off-by: Xiang Mei <xmei5@asu.edu>
> ---
> v2: place the test in qdiscs.json

Acked-by: Cong Wang <cwang@multikernel.io>
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

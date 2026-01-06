Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8C1CFCBDD
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:09:43 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id AE6BAB7BF59;
	Wed, 07 Jan 2026 09:59:49 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=BxFDDGys
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767776389;
 b=O0+l3PPes5iTiMr0i/9i5J5bAHFex1233Pmavr+5dAHnHbLsitWbB2XWTrfCmGUJW6O7R
 31PaMtebYuJviI41/cVjBtFVGCH/daQCVLI3ao14a+c8DpDtl+jfw+gqdhQDPWE9kp0kXxY
 r1dKp9yW7qxh6t7QtmM5ZXEyjrWBOKU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767776389; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=eas+eexgah/wqL6DgKoG3UInyl1oyfJjXq2DrVhTtoE=;
 b=ljRLOKI/N36Fp5bQn4rKa5X9Y9+hyngDFuxtk0N3+FzmOsHWufT/XnrdkXxA7kTzWikq1
 EsiGXm6JM4Ky94DIs50fBdGjVGW60rXZvM1HbhcRgYD2LkIJT7jdiwFmGhDsO5NqmZkeGD/
 /9O3xYrYKoF7fpSUjT5ApaZP6Hy/a6E=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com
 [IPv6:2607:f8b0:4864:20::1129])
	by mail.toke.dk (Postfix) with ESMTPS id B2960B78A2D
	for <cake@lists.bufferbloat.net>; Tue, 06 Jan 2026 22:57:53 +0100 (CET)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-78fc520433aso16648557b3.1
        for <cake@lists.bufferbloat.net>;
 Tue, 06 Jan 2026 13:57:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767736672; x=1768341472;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QtRHl+TqH3BbF69bW6YLvD5oYvh2YU33RkOyJZ3vQWU=;
        b=BxFDDGysXzR73mov8kLh+AgLAnjqILAN9wJI2a8Vm/SZiXXjfvpWWSa4VkPFTbv2/5
         vH8DwIcSY2/oaggZYL0LoXEdKqiS3Gg61goZXPFNkrFY2hMGdo+9nfZ92hGrZPkLl+QX
         fXOvTzHZjFoWj/K+RSSRbqTAKZXCV1uhVf4TL/3hRRCegZ/+g13VaRVK3Fas8/MN6pjp
         EdT2cqxOlkNCdoePfcd0Jhhc/adbcjn4ZFoIfTfRDCECCRWyioMD7+LHgRpxkD30t/+p
         mdbz60KtwdRMZY3xme7BXoTU8gF+yTzWdsUhWgKtGtPL+tqAYMg8ltTxeJb2NvVCL3uV
         pYnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767736672; x=1768341472;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QtRHl+TqH3BbF69bW6YLvD5oYvh2YU33RkOyJZ3vQWU=;
        b=ITxu6tHyWAUiwWT3THpLQd47JgFCYpkyzO5v83GbMYLe5qxqkRm15XylwcQkRFm1tE
         kdvEHwfJa8veqnhO6aKcqgp/uReJ1hB5v4n4T6fdSYhz+TWPiiZn6sh1egnVH9lD9M+v
         OvValoknwpNFDp38VbOyE7UWqS023EqtwMiT/Msx6jEzyRHnlNw7iG1H7SgP5UVq+SIA
         my+A/Mv48yi8QOTmbxIXsojI52UpJ8tNwRMOKD/xjVDXaCIZIaB4EsBPVyX6h8hKuqKh
         kM5dxz5jgJ5V6VnuUy7R6LhHLzMoRKqWs2YcztYMFTgTIM0baIixywWFF6XB++VMB0Hw
         jIvQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW+mMr1u8wjaY2EC6q1KNAJBZHgU7ORDjuv8kHGRryCrArE4WUqYbvnZtxMwsig4K8s9gmE@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwC+HvVa8VyIPBn4qjzB9Ld3xV1+vaJJPU9MmdoC4bUol4Fxi8g
	Z3YrsoCdyWDj3PacEkuXOEX1EA+vl9XN9pu2XO5zdjoih3cWXEXayzoi
X-Gm-Gg: AY/fxX4LQbUxWX2YTp1RlRKIVf0n7KoZIXGqI+8gnxPxMFBlLJFR7InVIVJclXrFT61
	oqmfqP9DtqAvWY5ujFBqNorqE5GXmEDBLUV9fuP3eNXKNEe3nUtrus/CduEPtiYGoeB+pMoWKGO
	+RsIk3s60PN4o5eIdPWgQwVrIOFs63sJcdfp5TJ4asP6j8GL67FWiY5v3LYP6z2PWzaKb8pJLnD
	UNtmG88TU3c9p2e/7JAqQwKKWNTmvPGWqYAgIpKi8yVCAYbx0emGjnjY3aU8djHkI4vTszhn5pw
	6iZkG6CmX/5mF/7w6OFlgEeBlkiYAF+ONS23YVBRudc5ICEA5gvregnfBpmq+ECxoioHhZVXIjW
	701xy9GwL9nzao0RjFS864a1CoFPA1bsFvnB2sYR0bOj59f0i2sMl2iIZAYm/MzCNYGaelN8tig
	dyAq8duXXqbRaSJxEqW1zBMDjekC9ZJ2//ZmhfPSWYuQTBawPWmuzKOEzRpaw=
X-Google-Smtp-Source: 
 AGHT+IGPP2ZfufrjMJIu8il8HMvh1qihAAj6JIufMI4ZoaJ2vQsmnb+U/uUqvs7snMDlvqD7mn/EPA==
X-Received: by 2002:a05:690c:6e11:b0:787:c9a1:13db with SMTP id
 00721157ae682-790b5848126mr6167527b3.65.1767736672244;
        Tue, 06 Jan 2026 13:57:52 -0800 (PST)
Received: from gmail.com (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
        by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-790b14df5e7sm6320257b3.7.2026.01.06.13.57.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 13:57:51 -0800 (PST)
Date: Tue, 06 Jan 2026 16:57:51 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>
Cc: =?UTF-8?B?Sm9uYXMgS8O2cHBlbGVy?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Message-ID: <willemdebruijn.kernel.1df05a34fdc0f@gmail.com>
In-Reply-To: <20260106-mq-cake-sub-qdisc-v6-3-ee2e06b1eb1a@redhat.com>
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
 <20260106-mq-cake-sub-qdisc-v6-3-ee2e06b1eb1a@redhat.com>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: YUDKEVDAFOWEX2D2YEBYYR5BS2JHZ7PF
X-Message-ID-Hash: YUDKEVDAFOWEX2D2YEBYYR5BS2JHZ7PF
X-Mailman-Approved-At: Wed, 07 Jan 2026 09:59:48 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v6 3/6] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.1df05a34fdc0f@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBBZGQgYSBjYWtlX21xIHFkaXNjIHdo
aWNoIGluc3RhbGxzIGNha2UgaW5zdGFuY2VzIG9uIGVhY2ggaGFyZHdhcmUNCj4gcXVldWUgb24g
YSBtdWx0aS1xdWV1ZSBkZXZpY2UuDQo+IA0KPiBUaGlzIGlzIGp1c3QgYSBjb3B5IG9mIHNjaF9t
cSB0aGF0IGluc3RhbGxzIGNha2UgaW5zdGVhZCBvZiB0aGUgZGVmYXVsdA0KPiBxZGlzYyBvbiBl
YWNoIHF1ZXVlLiBTdWJzZXF1ZW50IGNvbW1pdHMgd2lsbCBhZGQgc2hhcmluZyBvZiB0aGUgY29u
ZmlnDQo+IGJldHdlZW4gY2FrZSBpbnN0YW5jZXMsIGFzIHdlbGwgYXMgYSBtdWx0aS1xdWV1ZSBh
d2FyZSBzaGFwZXIgYWxnb3JpdGhtLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+DQoNClJldmlld2VkLWJ5OiBXaWxsZW0gZGUg
QnJ1aWpuIDx3aWxsZW1iQGdvb2dsZS5jb20+DQoNCihJJ20gbGVzcyBmYW1pbGlhciB3aXRoIHRo
ZSByZW1haW5pbmcgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzLCB3aWxsIHNraXAgdGhvc2UpCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

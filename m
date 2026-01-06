Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 714E3CFCBE2
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:09:44 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 3315DB7BEFB;
	Wed, 07 Jan 2026 09:59:48 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=CqnMYtM+
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767776388;
 b=C9ZojSYucHkn7c/g8jwI0h4NoZEDMTYTvz0hMptuOZqTQa1/3ZeA33Caarx6pX2Va6kqX
 RbvU8PvBjGEiyWpyR7QJGYUNyj3qJSMX2k+R6G4ESR5lwE2vSTZ2IYMkIjBkjb8d7pZf7ke
 If6CzmMZnbWQcwDry+KKR69ODVbEKxI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767776388; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=nECB7LlWAQT5MGS606Kn8zcMJgXFRGP6i2aQKLPQtRY=;
 b=5D/5cxNcrgErHFB09xI9xd70pMoRkKeDq9m3dMW6/7IU1yCfpkreePzNaKtJ1P4OGYRDb
 KiGXNWMjWOf47hhbLmKtVxPIhA5kV20SrGpDSJy8p+tOXjPtyqArc90B1+dUKKwX3e6m5iV
 HVPq23S3BSyt+/l/Q2SY0bUZMF/9z/8=
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
	by mail.toke.dk (Postfix) with ESMTPS id 787DEB789C3
	for <cake@lists.bufferbloat.net>; Tue, 06 Jan 2026 22:53:06 +0100 (CET)
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-78c6a53187dso13766497b3.2
        for <cake@lists.bufferbloat.net>;
 Tue, 06 Jan 2026 13:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767736384; x=1768341184;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J1e3PzBvsbGDQJV4JRdyaBTOtBEIBeMiT97IdIPzaTA=;
        b=CqnMYtM+H1+9WukpfuzdFoAkv7lUepwMLkOdunyZGId2q+LWF0Gb1In4Tgc/qf+Sux
         lGWWeBaRMRhyT/RaqqMUJgaYP3QSknqG7EHaGJrSyk7JuqBRaZWaJljiXtcuM+qDHhbM
         8XJKLw05G3OO/Lz58gxF5rXjRFzT0Ksk0N4QyKJR+dzvo06MH8qXbgK6NcMStmx9k6kt
         z22nJDwHAEwqOqDuBu2/JfHkrGXMSUSXzFuUcjNMsSHNkKn6xCl115MkRwS1oLiF8fkD
         r99jw7n678qKZNHzRKMvR9Kq4H2zHLlDKSw+rDFDtgqcd3K86/xhmD5XJYMeTKAwXpwy
         wlxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767736384; x=1768341184;
        h=content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J1e3PzBvsbGDQJV4JRdyaBTOtBEIBeMiT97IdIPzaTA=;
        b=qZBBJzkApEeUKhULkmmJm5xxZPcnxt2E7VD081Tws6vwrCdvooLJFwTA1QtTCITwAN
         Y2Ihd+/e7IHIcGt2OoE8QW+PSuVF2ChcyvZgvsboRx9ohAD8ywOtfdyj+laug+NM9DrL
         b9pndl0g0y3cP8IDOfvCSK/v5OcV8BwEZ5ssuTJTsjH8kLzcAZ6EM23XSENHW4A/IvDd
         +WMUACMiMpTqbZN8mnzJ/H6E9JXLV0mwL7UlPKW0GxLJK5Thty7ljoRUF9ZheyLQcYiT
         X+14t9Bm9/+9nN00xP52QAlFFJzaBqI1TIKVhtZKcZBNHrkW/uMvNBfp/a1Q4uV5hc2R
         agzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX0yH1cx/sV5r5Dt504rjYHgRYQgfOHRNkO59FxCusW+Rme6u1dn7RbXUNx0ayyS99eRn5N@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzJPSNRWPHVB9rMwrkJn4aSH05XBonlNID2ZNTlYDXbOer97F+a
	wFHBRgJVzazX78mFFp9bdh+0cMZcA5Lj4nxPhlrBgc39AHt37xq8Eudj
X-Gm-Gg: AY/fxX5BYXiEnw00qcZrFBZSYxz59rxcnwp75hi0jXyNELjXq5qEKjuFyt8dhP2MDNa
	pnU4k+9CIgw9Z7+zlHxzPN8JIAjScjBvQVRqx2H/JehNwm/y4TcqzzsB64wCLrVCJYhEUoWlawn
	jLhLHXYdSGZwCdiZsqThS3CPO0Ct+/UtHJ7CSrnPcgSkYZTnudVtqZqmUHDCSHZzZ0vEtVd6jFe
	3Xa67Jtzo7Ih9ZU5KpgSdzIIkZA0t4v5ruf4tgdSP7fgApb7G5XTR8vVzT7GEktLoV4D7wIkpf1
	MltQG6EdRYY8u46oZ8RY7yQs4z/JCujf3QJtqJcHuY+fTWi8ny7DneZ2voPyVja+lUrnfd+zMq8
	eWRo645HUwp1/xsxC58jh0Mrw4v3ZOO5YUko3tzCsbHudwhZFMH2rR9bAz3RQvI+eIx3GkcT/qy
	Dq61bXYH7XSKsSTqDW9hyRJ5ex98SHPls7+YD+l5dOFAwEMwZab3rsI6xQMdM=
X-Google-Smtp-Source: 
 AGHT+IGjgixfb81YQQySOcMberpQeNF5HhTh7Bj7zc03I1Tkox1NLJa6RxmmanZFBr0SlzFD88cmMw==
X-Received: by 2002:a05:690c:4b81:b0:787:d46e:c567 with SMTP id
 00721157ae682-790b56d5dc3mr6061037b3.59.1767736384052;
        Tue, 06 Jan 2026 13:53:04 -0800 (PST)
Received: from gmail.com (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
        by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-790aa553160sm11924677b3.2.2026.01.06.13.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 13:53:03 -0800 (PST)
Date: Tue, 06 Jan 2026 16:53:03 -0500
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
Message-ID: <willemdebruijn.kernel.7b24a60a0a3@gmail.com>
In-Reply-To: <20260106-mq-cake-sub-qdisc-v6-1-ee2e06b1eb1a@redhat.com>
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
 <20260106-mq-cake-sub-qdisc-v6-1-ee2e06b1eb1a@redhat.com>
Mime-Version: 1.0
X-MailFrom: willemdebruijn.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: KHP7JWGHSPUD3KV5MDCCWNGUIFSAJFIS
X-Message-ID-Hash: KHP7JWGHSPUD3KV5MDCCWNGUIFSAJFIS
X-Mailman-Approved-At: Wed, 07 Jan 2026 09:59:46 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v6 1/6] net/sched: Export mq functions for reuse
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/willemdebruijn.kernel.7b24a60a0a3@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPiBUbyBlbmFibGUgdGhlIGNha2VfbXEg
cWRpc2MgdG8gcmV1c2UgY29kZSBmcm9tIHRoZSBtcSBxZGlzYywgZXhwb3J0IGENCj4gYnVuY2gg
b2YgZnVuY3Rpb25zIGZyb20gc2NoX21xLiBTcGxpdCBjb21tb24gZnVuY3Rpb25hbGl0eSBvdXQg
ZnJvbSBzb21lDQo+IGZ1bmN0aW9ucyBzbyBpdCBjYW4gYmUgY29tcG9zZWQgd2l0aCBvdGhlciBj
b2RlLCBhbmQgZXhwb3J0IG90aGVyDQo+IGZ1bmN0aW9ucyB3aG9sZXNhbGUuIFRvIGRpc2NvdXJh
Z2Ugd2FudG9uIHJldXNlLCBwdXQgdGhlIHN5bWJvbHMgaW50byBhDQo+IG5ldyBORVRfU0NIRURf
SU5URVJOQUwgbmFtZXNwYWNlLCBhbmQgYSBzY2hfcHJpdi5oIGhlYWRlciBmaWxlLg0KPiANCj4g
Tm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IFdp
bGxlbSBkZSBCcnVpam4gPHdpbGxlbWJAZ29vZ2xlLmNvbT4NCg0KVGhhbmtzIGZvciByZXZpc2lu
ZyB0byByZXVzZSB0aGUgZXhpc3RpbmcgbXEgY29kZSwgYW5kIGFkZGluZyB0aGUNCnN5bWJvbCBu
YW1lc3BhY2UuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

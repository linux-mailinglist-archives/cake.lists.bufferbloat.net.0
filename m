Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CB6AF5FE1
	for <lists+cake@lfdr.de>; Wed,  2 Jul 2025 19:23:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2FDCE3CB40;
	Wed,  2 Jul 2025 13:23:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751477026;
	bh=eV7VeWW/MZ1nEUSIFtPOhtnHDB94zNwx7ZkEvj5RHik=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SGdhmvQWBpatjgr152mtMMuMd8MgabGPymVVBStJBSXlBmE48oEuLU91oP2xgQiof
	 Yj80g8pW/FsIapgmSYDr+YggGQq7RKejIuj+SEZQR3jjeHJp66HqjceI3LHjFOQ1td
	 jiovI7kv9MMJ/yQF2a8v9CABy91HlGubhIbNKCOaBw90pz0UHuMQVoPnBh8PyQbjKo
	 tLOcKKSHG/b0CL6cRDw353gz2yu0cvrk1IcdkDFF2drrvX964oDPulAyc/koPiJWOz
	 Um7riZX6nQly8QDg3jbM5tA3FcUZY+DPZQcxeir79/1p4l6XROkH3DFCCkW8Pao7fC
	 /CJmLsumEwNSQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DD3873CB37
 for <cake@lists.bufferbloat.net>; Wed,  2 Jul 2025 13:23:44 -0400 (EDT)
Received: by mail-qt1-x82c.google.com with SMTP id
 d75a77b69052e-4a58ba6c945so69467661cf.2
 for <cake@lists.bufferbloat.net>; Wed, 02 Jul 2025 10:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1751477024; x=1752081824;
 darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0bJDOVteaT0fIBktzT/oFBf4I98xYtb/XDVZbe8sAKI=;
 b=1Oylva7nBnygddT6VhTmlGIU8vcxprgp1VkFqKBqm7BObgbn5rTUH9QjzCLWw7DJCE
 QJlOxPM/a6RDjkgcnPJve6zBRemVlrfnjvQhsN5/L5krNcFO07+ye/sbt87oxC9Nw61a
 yL2zoGUDvNPjBRFVHG7J0BIVPNn2GY4DT18VZAtwQK7dxpbqlz95dQwEkvnJlzcOyjRc
 BCJymbQVXBry8q9MTJHWpp67qCl69KlAS0dAUvMhNL/+mRlkLP84HbNPlH3gVDAyAEMR
 vL6Ifkq4/S9jV0vn9I6SUJpk/NdgG1YUyZua4HQroCPtKAjM0Ib2uqNgzGSl3/sOaPEy
 w3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751477024; x=1752081824;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0bJDOVteaT0fIBktzT/oFBf4I98xYtb/XDVZbe8sAKI=;
 b=nJg7aXo6ZpAu49t33tG6Jpderq8oukGN4mtITnuicmJbWG9z+tyGgDhg4Xb0RBCvL9
 qaJla2+WPJAbNei/g++A4oDxoaoinLNghxa9wXX2Dj7NqKVHCtsZm6CPB6v+glROI2vm
 cXoMBJxz5+o4iqSi39Sds4YUAfmPqOQ7vqHwltq6KWmg9AkLzY0UbLRe6sylIY0nNMqe
 Ujgymtpb6/GoIQoZFKJXCM9Ec7EZ7ahZu6Jp43yGByWShjpdBVcMxxHEj/qWJJMjYVIj
 JokCbnXsQOyLr7uZIDNztqA3Gzmi0L2nPLl/EMMODMZ8tX8XOuPFPmkNV8cx8gcywYwd
 perA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUo+6QFj3ocLJC9IDOQGWbIY8pday2g2C+5l0FEtWVl625+nxJxDI7C5oqRNhdnbKPCjKIP@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzDRtcXV8509dKUN1Sdyik4a4skOICABH1dfBQD8Q+VC55UlLR0
 fmmPTtPRzQM6ZFQSIhfJteb1I7zc4S9vV8qG3EM7zLhsLPty66Gth4soA86x+r8WgMG+n0iKMTL
 wZg7FkuSexfz87OLiOWLoImFmd8pVR0W7+eUgQaIH
X-Gm-Gg: ASbGncuBWXZ9Eve9QDDPzAJmHIEykuEpRIklCC8CVNh99WcyTILvObXNPg68ZzsgVYf
 ickpLhrH/SxjW1FDTC6elpnIa4XJF+lR2BXh84fvHc8LvQX7RubE4Nllo5y90zpcui+7mNpwKVF
 vE2Ngvziy2OHlKMobTLg22ixgqqfBFjy6z0TK2nDEjlzI61jMKZPvv
X-Google-Smtp-Source: AGHT+IGq9Z584mPG2oLYqP1GYBHtqpVcMJI6LL1P1pdu+q2NESjy1sUexxwqp9IvD29zSis5S979zMhwz/13DHwayI8=
X-Received: by 2002:a05:622a:988:b0:476:8e3e:2da3 with SMTP id
 d75a77b69052e-4a987a20dffmr1712011cf.30.1751477024012; Wed, 02 Jul 2025
 10:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250702160741.1204919-1-gfengyuan@google.com>
 <68656416d3628_25fe3329483@willemb.c.googlers.com.notmuch>
In-Reply-To: <68656416d3628_25fe3329483@willemb.c.googlers.com.notmuch>
Date: Wed, 2 Jul 2025 10:23:33 -0700
X-Gm-Features: Ac12FXwOQL4yM_9cJaB5mJky6waj2AdTCqO6WQ7iiDQ5Q9WVlnZqcl6YLmHyQ2c
Message-ID: <CANn89iJdX3my-yb2Mw3OQa8OX2AtkiPeuFkHP_MsWNh0nu2yFw@mail.gmail.com>
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Subject: Re: [Cake] [PATCH net-next] net: account for encap headers in qdisc
	pkt len
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
From: Eric Dumazet via Cake <cake@lists.bufferbloat.net>
Reply-To: Eric Dumazet <edumazet@google.com>
Cc: Kuniyuki Iwashima <kuniyu@google.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Fengyuan Gong <gfengyuan@google.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 cake@lists.bufferbloat.net, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>, willemb@google.com,
 Simon Horman <horms@kernel.org>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCBKdWwgMiwgMjAyNSBhdCA5OjUz4oCvQU0gV2lsbGVtIGRlIEJydWlqbgo8d2lsbGVt
ZGVicnVpam4ua2VybmVsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGZW5neXVhbiBHb25nIHdyb3Rl
Ogo+ID4gUmVmaW5lIHFkaXNjX3BrdF9sZW5faW5pdCB0byBpbmNsdWRlIGhlYWRlcnMgdXAgdGhy
b3VnaAo+ID4gdGhlIGlubmVyIHRyYW5zcG9ydCBoZWFkZXIgd2hlbiBjb21wdXRpbmcgaGVhZGVy
IHNpemUKPiA+IGZvciBlbmNhcHN1bGF0aW9ucy4gQWxzbyByZWZpbmUgbmV0L3NjaGVkL3NjaF9j
YWtlLmMKPiA+IGJvcnJvd2VkIGZyb20gcWRpc2NfcGt0X2xlbl9pbml0KCkuCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogRmVuZ3l1YW4gR29uZyA8Z2Zlbmd5dWFuQGdvb2dsZS5jb20+Cj4KPiBSZXZp
ZXdlZC1ieTogV2lsbGVtIGRlIEJydWlqbiA8d2lsbGVtYkBnb29nbGUuY29tPgoKUmV2aWV3ZWQt
Ynk6IEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRAZ29vZ2xlLmNvbT4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

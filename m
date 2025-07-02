Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7B6AF9A45
	for <lists+cake@lfdr.de>; Fri,  4 Jul 2025 20:01:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E03B03CB56;
	Fri,  4 Jul 2025 14:01:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751652073;
	bh=Q0M8NWFP4UJgqLI1gMTiUhXHh9TVfU8235RtjMLSlDM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Nh+Kubnk5DwzD8VQaGDC7pCNxxarTUA52CciR3gYEUiEn8snf/ytf9lErhR/gI/pX
	 vgq9/ZKgkBwqL/k4PU6Ts3kIhUdOZfe98L0ncsfH8ELHK2S2FU84XLinA/BP0LwHRo
	 rEFsk0W0U0EwFBm4MUd1bUov2DZARo7PGXoy4wACOBOQbBXGW3JLgDG12UG/LmNmUc
	 Ax2FUrcLfxNtl5BwGsQUcXx3GWGw9Jb9lcuJiQGszl/sjvrcruH0O5Os/xYTw+uBks
	 jUndkCZ3Amj/ykTCGl1Y2z2LxfboMnk3zO7Ilduaj4lM8jDbv10invrG2OxqaM6diw
	 NXTl0Nj5nZk7g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6092F3CB37
 for <cake@lists.bufferbloat.net>; Wed,  2 Jul 2025 12:53:44 -0400 (EDT)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-70f862dbeaeso49637247b3.1
 for <cake@lists.bufferbloat.net>; Wed, 02 Jul 2025 09:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751475224; x=1752080024; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tOa/QrTh4e5OOwktHwb5ExLSFxYnfCuPCqHOntuBz9Y=;
 b=CO9WpqYc9/x8Ys+ZHToYXy+5gaFeCGtCRkmvpnxygAxpNWFjTNHxXYtCH3j4OfHQiN
 rqzQ6Q5OzWzOMdxwQOsVSBfKIOs2ANrgbncImg91cVR1Drm+wkghZFDq/glC1FTpG3LW
 BPZ3YAangnWQB9yH7EFc1WzikcyM+in3glOfINijO2XYP/pOj+aI/AOpvnu2rxkmuV9f
 bxNdK5mRp97ta1sNOcJo0/6JesQquGGHCjmQVvWXoLsE3+UOMDGF7PFdO93v0gbGNawQ
 tea1cJiLoBXq7HYGS7Q04AIq+9lfhTU6vzXgv81wHUUjCsSDVeFP4vmTBN4KHsYJxu5M
 fYQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751475224; x=1752080024;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=tOa/QrTh4e5OOwktHwb5ExLSFxYnfCuPCqHOntuBz9Y=;
 b=Yb/SRDeHhQRQBaiJwv68EFvpg23E5k0LJCMTpGqMNe6IhxIDMlfK2nHMI3MdJJBXxc
 gzuK8AErv9CE53IpOanfokvoGmllUvhIhX6eBUHpYDIbYzL8yzcJNryNlTkeCZDMKzlO
 OJBe8hZmSgXFb9r9S9lc6xBI9nZZzpt78Rnsm4MR5RDXswhFENYv47hQtiNJGK3M6QiB
 oQSdj+prKtVnzsyeiREGpcVDlTvyyQkN6IoBVIW0FwYCocS581Sf19y3tbhAtKPaL3a6
 XIv9jlWjl0N6qhttzHrcyq3/cibtfQUSkHQXjfBq4heoQpE4JHQCRu+lZVPz8ZSw8xKD
 3umg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXltBuxAPyfyB9L9qN1wxt5MJPLW32ENhY3f6d+BX3P3p5N0ET2PoHAOBIBIdMWCNOiARDG@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yx0djGfh+1CqaXxCzR9jt9iktdDfC1BRBivraAfv5gKbbhVCkSY
 lQ6z5Pphm1SpXM0Tp98Bts5CZaYq9lrQeLf2YdIJDPZOrE1+CugtPd9W
X-Gm-Gg: ASbGncsqhJE/hc5rmAOXddSGydG19OTi8w3Clma+LpBXVWCLbiKky0JEMPcx0bYz4+j
 EuP/pmVm/9iRQ1QPFRvVqFc7Rpglv3qATCbDLO4sJmZSnmOXuMpm6neCg8A38XbfILp4qPMvVUM
 dU8CiVO7cEXBtWZamkE3ORcDha0Qd8CBarZDr9PCYfhdzcrTNjlxhFfkNMvJQjTYs+2IyPjcNmk
 dzDCQTA6EGzJiM8gF0Vsd0/Bbgl9u6vHmobU1j61z2SZvGriZCdpEL12MTwdpGMoKXsl5qwWGp0
 ozac+EtX676SNPB6JrEisZj90WDpZRoboaow1OP6EUQ2wE0iGpFIGAXylZIOuA6VkLHAiV1SwZ0
 rz5E+LlpojSx19VmW1I928LMqbVBOqdewHZdWk8M=
X-Google-Smtp-Source: AGHT+IGMx1y9Cl8oqZmf/wLT2n9eGQ6YOLEOgshmWcVz0jgiWR0fm4vX5N+r9OgKgYelHRoRrSfBjQ==
X-Received: by 2002:a05:690c:f0a:b0:70d:ff2a:d69a with SMTP id
 00721157ae682-716590e22c5mr4517577b3.27.1751475223732; 
 Wed, 02 Jul 2025 09:53:43 -0700 (PDT)
Received: from localhost (234.207.85.34.bc.googleusercontent.com.
 [34.85.207.234]) by smtp.gmail.com with UTF8SMTPSA id
 00721157ae682-71515c915c7sm25496477b3.71.2025.07.02.09.53.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jul 2025 09:53:43 -0700 (PDT)
Date: Wed, 02 Jul 2025 12:53:42 -0400
To: Fengyuan Gong <gfengyuan@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, 
 toke@toke.dk, edumazet@google.com, 
 "David S . Miller" <davem@davemloft.net>
Message-ID: <68656416d3628_25fe3329483@willemb.c.googlers.com.notmuch>
In-Reply-To: <20250702160741.1204919-1-gfengyuan@google.com>
References: <20250702160741.1204919-1-gfengyuan@google.com>
Mime-Version: 1.0
X-Mailman-Approved-At: Fri, 04 Jul 2025 14:01:12 -0400
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
From: Willem de Bruijn via Cake <cake@lists.bufferbloat.net>
Reply-To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Cc: Kuniyuki Iwashima <kuniyu@google.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Fengyuan Gong <gfengyuan@google.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 cake@lists.bufferbloat.net, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>, willemb@google.com,
 Cong Wang <xiyou.wangcong@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RmVuZ3l1YW4gR29uZyB3cm90ZToKPiBSZWZpbmUgcWRpc2NfcGt0X2xlbl9pbml0IHRvIGluY2x1
ZGUgaGVhZGVycyB1cCB0aHJvdWdoCj4gdGhlIGlubmVyIHRyYW5zcG9ydCBoZWFkZXIgd2hlbiBj
b21wdXRpbmcgaGVhZGVyIHNpemUKPiBmb3IgZW5jYXBzdWxhdGlvbnMuIEFsc28gcmVmaW5lIG5l
dC9zY2hlZC9zY2hfY2FrZS5jCj4gYm9ycm93ZWQgZnJvbSBxZGlzY19wa3RfbGVuX2luaXQoKS4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBGZW5neXVhbiBHb25nIDxnZmVuZ3l1YW5AZ29vZ2xlLmNvbT4K
ClJldmlld2VkLWJ5OiBXaWxsZW0gZGUgQnJ1aWpuIDx3aWxsZW1iQGdvb2dsZS5jb20+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK

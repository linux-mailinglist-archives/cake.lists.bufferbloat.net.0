Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C475A5FACF0
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 08:38:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5DE733CB4B;
	Tue, 11 Oct 2022 02:38:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665470300;
	bh=h53nT5sHKyehuerXhLbDSVRHSxFPMI/xMBTRRzKLMVM=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=K0ZwwjDaNiqraYHhJHyUu8OjBQhph57p4IEsdZYt6fYuJ+1Ki3V2l9l0n4pYlBZXu
	 CoG1aOi1IVnJQnC7QnJbLfNVdz297/8wOUOXTmjdJ/J0/xH4VON4LpCXZip650Fkug
	 +7xYgnW/YXqnFG7ThVWfskB/b14iRteVwoHInRHaOQ7GG8366j47860FLc/ZQc3r8g
	 oIaxeywAehQDSmoekO/Z0qOG/YOpDWpSUC0k5drPiKp8UjRnlMxB52JkEIyMKotpyE
	 3yWHXRu2Ky1jXRfFGo6UkKSW1OZV8Kp4pkzHRH/w0K5kFz+sdrTjyHl8iZNEck/Txh
	 qy8YfY6/XBerQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0C65D3B29D;
 Tue, 11 Oct 2022 02:38:18 -0400 (EDT)
Received: by mail-wr1-x431.google.com with SMTP id j7so20034839wrr.3;
 Mon, 10 Oct 2022 23:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=YeviqvWc2hGn2L2Zntc4K7VpcoSq6KgmsRAc9qQcLEY=;
 b=l0mtposUua/ZampyfZGyS+wKLalAJBDJQ+0v2X0s4eUWa5XC4dHbr3jIE+pWwScDUl
 YOUYQHq2pi+NINEm/el/HZCpI2U9fV7ui0+uHcbAPU8veA4o5RhDuhcoB2xzlobD5Vyb
 qlv52UOI0ukL25FYg0+DNFeVo9FD+tBH2QdR+YvnxAwJPbp9eP9I1EpoDd8kEKlUGx9v
 wHlOnx3WYV6q5wehLV/bfC1dUTYVYgaclrEex3aS4jhL3YINQIOYv4wZ8opVpY7tJOWC
 LSSoixIe0PVqBhyYIdd2Y3+a8wi55aXQ6yVlzebJjn0DHll3ihnkTn7VqYcO3Tkqks+W
 mQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YeviqvWc2hGn2L2Zntc4K7VpcoSq6KgmsRAc9qQcLEY=;
 b=0JweDdl8DBREZs8IBwR6p4ruvw0JXuO1PMimSBHz0ybeRAuaWfsj15raeqYkmw/EiN
 r7jEPecFr0v+Rw1WHLYNLOdev7Td/pyD+wOLrIMm8Xl/n+Wbp7kh1SZKy5XCQAyrIySJ
 K6oHEwtrQDPNcitvnJdTiwjU65S/oYbAWOYqv0moOMsbveSISdwq+IEeWHEArolbn6RE
 Hk7Zs6l/P57dOie6UvMy5Uc0lkK0sYj+rGOMcSC3a7XpwCavknGc/3+nxIYjw2WsfN6x
 ArCmSA2g9+VqBFIDPcdPpdqdmv3zBJ89FCwDyyRzj/kW1BPEKnbhIVRW+3Vki87QTy7g
 MiAg==
X-Gm-Message-State: ACrzQf3WcaSuqycbMNcg8W51ZM0uf73iaPluPIsKCPBgs+6h4Lho0xi/
 xMDGIE774KsQ6jF8IX1nqdSzNFNADO6c1XR68+bvde+R
X-Google-Smtp-Source: AMsMyM43aA6iVE0WLcujt/kos+pv5YNfvi+T6KSvlqy2zznm0xpmonV61tCEsmqneLMMHgjBixr41Kr0/1PbsTOVNaI=
X-Received: by 2002:a05:6000:3cf:b0:231:6ed6:e978 with SMTP id
 b15-20020a05600003cf00b002316ed6e978mr977938wrg.500.1665470297848; Mon, 10
 Oct 2022 23:38:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <8FD1A16D-F886-4504-A089-62CD3A8D2CF2@telenor.no>
 <2601A81B-4E21-454C-9959-EDD725547E9E@gmx.de>
 <100AC711-2C3E-4FE4-A1A3-65BC759B9530@telenor.no>
 <E667667F-DFC0-4C2E-866E-ACE4C4DE24D8@gmx.de>
In-Reply-To: <E667667F-DFC0-4C2E-866E-ACE4C4DE24D8@gmx.de>
Date: Mon, 10 Oct 2022 23:38:05 -0700
Message-ID: <CAA93jw7Rvx6aBeQAbG5QNm4S6MTqW=Sm3zK5NC6LEEqz-dz-QA@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Bloat] The most wonderful video ever about bufferbloat
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
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBndWVzcyBteSBxdWVzdGlvbiBpcywgZXJpaywgZG8geW91IHNlbGwgdGhlc2Ugcm91dGVycyBj
b21tZXJjaWFsbHk/ClRoZXJlIGlzIGEgaHVnZSBsYXRlbnQgbWFya2V0IGluIHRoZSBVUyB0aGF0
IGNvdWxkIHVzZSB1cGdyYWRlcy4uLi4uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

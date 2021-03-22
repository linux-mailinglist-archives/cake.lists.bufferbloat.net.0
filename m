Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6F134381E
	for <lists+cake@lfdr.de>; Mon, 22 Mar 2021 06:04:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B5DC23CB38;
	Mon, 22 Mar 2021 01:04:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1616389483;
	bh=D+SbcQx3Gct3CdwQtyv/z/Vi1DZR0Ejc4RTTGAppbvk=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ep4yVfiyOI+VJszuZUlJ6Pv/DU+gFvFFo9KwHVn3Ux7fRvN6toJxjrqHKiNAAmHgt
	 jXWosPTVrZjZ2KKZ+F+Ah4Bv/rZEWKDvZI4k2nv/atPv4Dz3M6UfRutS727KwUejYE
	 AjT31AuoIu1L3Yap/l8GbMMMuV/hcI6/aF2DOlIn66rNWSGznaVcYysVLy/tKHk4jE
	 F3K/czCvBgiitYMV9wD+a0BA702Qcd5vcuwyCsW9IPZO66B0YOZvDQFDdbrD40ZAhs
	 ltIEyOjquuZGzhgzt7Wdb05pFNp5zK6rFPvWh5jIv9yzM4VbPF+CtLi/M3btmgJMXp
	 zANQdLJQ/zDdQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EF1EC3B2A4;
 Mon, 22 Mar 2021 01:04:41 -0400 (EDT)
Received: by mail-il1-x131.google.com with SMTP id c17so13693683ilj.7;
 Sun, 21 Mar 2021 22:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=MuUWK2T6IsjFGwxQ/8KBQ96par27jqM7UyjesrXJT7I=;
 b=hBAd3YK71lMQF1mF8zuxlrbuEaYlcD2qUy/rO0MHQfghLoGM9MG6A8e0WiuFXDgG3J
 4NqNRkeeO2itWR0fecDSY6eCXsgguH15yT81fqUkV+yBrw1EqVc7uDOWOaePfFGuO3Lk
 Jr86ajGTqYgUzkb4khbRu6ciij/SeFYvmO6YRLlv7V+ZqXK5XAuSXoYPq8+2Ol8l6mH3
 ECmKdEf7gDFwXilFSVVPCBD1DB0l3aVsKND/PWw7A6tU/PA7OTpxj/ymj7s4Q0tb6Ii7
 6z62VFF+8zsgBCjeoJqby0y+UdN9C+xf598s0Vji+wOUbiH1TpGlFyK0HPHBRjqH6QmJ
 INBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=MuUWK2T6IsjFGwxQ/8KBQ96par27jqM7UyjesrXJT7I=;
 b=aKwGnK6aigLM5RIdUppA4DXbX09uumyblFpPqhU+FL5y4KtqTY5UJOpcAzGwKPbSrd
 plR0X0R69JYGdCv99UVNwN8hfsyGiADYJ7UYNDPd1JzEhAEp25lXArNMFpUVyi9D+b2w
 jTT4JqgVMyIZvo1XIJDVgeQHDH3jZKJJDoAWJEsGiq1gFLLO9I2ZwNfnpxwBzS//okn4
 x6qJL6kFnhJQnqwe3mS1vRKkpX1+ww8XlM3JO5wtrb1AbCYzm8qEddM+OrceWOgUU6hl
 gklvHJSFiNzHoKpPghi18iTOBgoSo9uf94zSbyT86fIhipYrTZAcsYBIKZWOC0ymmubH
 vCMw==
X-Gm-Message-State: AOAM533V+mZH+Kpmcz6un76nyEXL34NI7qoBJUhV1rqToNA8CmkmXpsP
 +kjY2NgC781F57IJH/ppaKgK3VtweOPP3VkjLXHH1QYiaXnMJg==
X-Google-Smtp-Source: ABdhPJzLdJyBT1FmcH7izSyk5KH62mifzH2X6nWD60dSdgvVIWI7vIMgP2nQc+xjJN3BQ4RbU9/id1m+sQG9pyl4CPo=
X-Received: by 2002:a92:6b0e:: with SMTP id g14mr10616058ilc.246.1616389481134; 
 Sun, 21 Mar 2021 22:04:41 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 21 Mar 2021 22:04:29 -0700
Message-ID: <CAA93jw57OYz2-5AnXoJRhAugTD55cT=ewStLy_c7ybNyKowKaw@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Pegging only half an x86 core for cake at a gbit
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
Cc: johannes@truschnigg.info
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RW5jb3VyYWdpbmcuIEkga2VlcCBob3BpbmcgdGhvdWdoIHdlJ2xsIGZpbmQgdGhlIGludGVsIGV0
aGVybmV0CmNoaXBzZXQgdGhhdCBsZXRzIHVzIGRvIHNoYXBpbmcgaW4gYnFsLi4uLgoKaHR0cHM6
Ly9qb2hhbm5lcy50cnVzY2huaWdnLmluZm8vcmV2aWV3cy8yMDIxLTAxX2Z3Ym94LwoKLS0gCiJG
b3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ug
b3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVk
IiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtM
aWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

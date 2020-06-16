Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE4E1FA84C
	for <lists+cake@lfdr.de>; Tue, 16 Jun 2020 07:33:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7030E3CB38;
	Tue, 16 Jun 2020 01:33:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592285589;
	bh=sl38rTCh/COLYgH3q0faMQyTelOO8VcqzZrpFAp5dOs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y0hmp9ewJcaB0nY0Os70vKW7Og/H3j4w9T7Oeml+oHVztNOW1QgOB20DmjWfKTaPb
	 8iY120sMvpK7c8Y4VI6YQn9tmPrkd/ax32UaaFLZsF8lkaww6jn81Y/QKbLsCaUWBk
	 ehhjg1+Y2MmFC+ggiP8d8ZU+lYNy9/wlwC1sPfQOwglkmJOSF/tUM87UAGks7cOu89
	 fEYM/aVpz4wQbMq/ko9+gO8sE+hn8CmoRxj/r8THBoqS4HY/juBb9wlEApG5yRSy2i
	 IuyyjmLW+Rg8e8oCSbt/jmcWlWzgA6vuG3s6aveFLvSMWQOYnH4qjk6MOSmhXPblIK
	 XFWimrQkNBqzw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8F5013B29D
 for <cake@lists.bufferbloat.net>; Tue, 16 Jun 2020 01:33:08 -0400 (EDT)
Received: by mail-il1-x12f.google.com with SMTP id l6so1498787ilo.2
 for <cake@lists.bufferbloat.net>; Mon, 15 Jun 2020 22:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iqY+ZN8T+mw7uUP4+yOpunaUlVqYCliwzEkFs4Gj2J0=;
 b=LmAGpfXecxKhTd7qFN9t6pPhMRd3LZT/GTTmd09KGXKzkS/jEURozSpjrRk1OiIUmj
 TUuftuyHEOJYjKUwC/plY+QNERgnOMNB6N2ZiMclflXH1Ze2/XuBJwNEq2HBJgyNxr+x
 9TfFXzmTI/R7nLUnVmLvwKd6b/DEx1IimefFtiNpst4ejM0u5K4IuiIX+MUf6x6citQB
 w69ws6YwVY+JTmCbiekXkcmIydgBKE+LvKyoWC49pEx4c2fuQHsHJEU6JmfC18oalgtR
 AMB7Yi0jQIEnd63fW+BwCttS0YbHurc2oFDydgcqrY1xNlhxZnhVZgR9jUEMAxIwe4nv
 9p6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iqY+ZN8T+mw7uUP4+yOpunaUlVqYCliwzEkFs4Gj2J0=;
 b=BqizDtD39FodtV/BOKpLwf+LzwMIyaxyZxZD3APqgnZZF54tW4zj8/EApqCv50189S
 SE3N7zBsEBB1fH6sU7QpkfWXqbgtH0Oe30wwJoGKcnRL7mA/1aqQ0JdeHZIAVAN4U4gZ
 IYrtz36DnHesW7/HGipP1yneQbru2IxXUjWppAqegazH5yod8RDX5zYktFsosJNQ953B
 i/FO/DcfGy38dcdhAeEbx6gCBM/YHO1hTtdVJVc+zdpNGtVIhrKjW3QmLlw2HOC2mSuO
 mJnhwbxBUikmykrLgbCNyYK3dFZtinyqvE5FI2HEy8GrO5/Kr9BGHuAcOI68hS+UvzVC
 2WOQ==
X-Gm-Message-State: AOAM532LFM5V50sbdfNkap7130+5sWpCfiCzEhdix4tJQbirNG56sLSv
 scG9v8LdFi3HB90QUaueeaxQ6SU4HEYwCCpcyyk=
X-Google-Smtp-Source: ABdhPJyTxrn1TXKkE6YOMt1JXqiWTB54s9irIBGtH8ZGm2HvRY22MmTAlddUw6CQFb6gk55zkVbndony/rqYIje088Q=
X-Received: by 2002:a92:d409:: with SMTP id q9mr1441116ilm.246.1592285588099; 
 Mon, 15 Jun 2020 22:33:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
 <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
 <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
 <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com> <87y2pgi5ue.fsf@toke.dk>
 <CAC8NkTCrNr8De8eT90UogVE+6ZzHgxQz1K3SXFrs1JVCTahdQQ@mail.gmail.com>
 <1F6D30F9-A697-4588-9AB7-2A3757924900@gmail.com>
 <CAC8NkTCf0B2QKb9TEZXk2P171CGb2faKZ3BHg2UJONpROxjY8Q@mail.gmail.com>
 <CAA93jw7baj-aRjASUq_GW+Si6pE=WP81nfLJ5+45A2B90=8_Bg@mail.gmail.com>
In-Reply-To: <CAA93jw7baj-aRjASUq_GW+Si6pE=WP81nfLJ5+45A2B90=8_Bg@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 15 Jun 2020 22:32:56 -0700
Message-ID: <CAA93jw4v3WwRxv5rCu5seohP5E_uUT_qkxiLrtrw8srE+EWqXg@mail.gmail.com>
To: Avakash bhat <avakash261@gmail.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBoYXZlIGFuIGlkZWEgZm9yIGEgZ29vZCBwYXBlciB0aGF0IGNvbXBhcmVzIHNldCBhc3NvY2lh
dGl2ZSB2cwpub24tc2V0IGFzc29jaWF0aXZlIGhhc2hpbmcKaW4gYW4gaW50ZXJlc3Rpbmcgd2F5
IHRoYXQgbm9ib2R5IGhhcyBkb25lIHlldC4gSSdkIHJhdGhlciBub3QgcHVibGlzaAp0aGUgaWRl
YSBoZXJlLCBidXQgaWYgYW55b25lCmhhcyB0aW1lIGZvciB3cml0aW5nIHR3byBzaW11bGF0aW9u
IHRlc3RzIGFuZCB3cml0aW5nIHlldCBhbm90aGVyIGtld2wKcGFwZXIsIHBsZWFzZSBjb250YWN0
IG1lIG9mZmxpc3QsCnRoeCEKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

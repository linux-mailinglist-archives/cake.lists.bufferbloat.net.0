Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 561B11C2E4B
	for <lists+cake@lfdr.de>; Sun,  3 May 2020 19:22:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 862EE3CB40;
	Sun,  3 May 2020 13:22:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588526576;
	bh=UqfQH+dvhMZy7vU+63CUXvB73idjy+kd6cNRiDG/fcg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IxtM6e7EYJ9XuZnSXl6c54Geibq9tUU3+afiuBzHur/OOKnQw5LZV+MxKHfiqmHf2
	 Z+XrswyiIFgxlkMVIUb4etWi+71Zd8QpJUOXmym+KFAQ1UnV5FT9aBvgGWlcC1nD2a
	 qMaPqMcoJZy6UzOAWKLftccgMnL0yVVk2wwqSDxmj82GA9AZfBDYNyAB81owWXkRH/
	 D6VDh5/CQVKRw01AuSHjAIhJlYIwOp6cDU3zQWNbAi97ynKO+2alfrE3wwQwIp1jRj
	 iqBKmivmGgxq62PFJZYwSEG+Vd6qXe5ROOeD87f4ZqpU7Y/EvszRC3l+UhV07Q4p1h
	 I8TvNtLNJmkuA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com
 [IPv6:2607:f8b0:4864:20::136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3556F3B29D;
 Sun,  3 May 2020 13:22:55 -0400 (EDT)
Received: by mail-il1-x136.google.com with SMTP id q10so9147404ile.0;
 Sun, 03 May 2020 10:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ojM7++LDxz/03CkX7QSUzO5cE2LHp+I7whiNigHGs8A=;
 b=Dd6SbndP2eXmrrsHGOKbryun/uG2Z2iyr7rCkn9wxnXFwjMJtgkQ2FE/dXdzrHMEqe
 AvI/3PGCZaWULEsj09zlF7VID6hgvUmJ5SXp1rqbhQoQe1IFBa2ZehMK2/ETdvf2A1wp
 yP2TZKGvQlZfIODVjGKp9mOTFVz557l/DZlEZtKQetE8XLOrJgmTkCaus6eXHGH2PXMb
 4KycK161Z4Uj2wR5deX3qAHc5VEg7FzbNn7zfYvQoF7rAeHA7MNSkSuo6WV4dtp02Ng8
 65ILyUaDLHTbykBtf28b+7WXoP7ovTlVg2j/VKeZ5d6EhCetYHENAr+7MVNG0tvuSjNC
 iEig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ojM7++LDxz/03CkX7QSUzO5cE2LHp+I7whiNigHGs8A=;
 b=EgnpuSaoGTmFI5ZX2wO4/pjfP+ThW4PYWQ9j64xf2xjRLyu+cVdK4wPRFvFC7l15ra
 CjxPou1eShtqM2P0uDf+cZ4HzinAiG2mV/bPz2aadBDGeCbMB6unkUBHO3fFqRtUkmEJ
 SD3G/ahXf3cY3h5ZdD2Z3G6CcM6XAIgYgTTuXe7YRd02AqyHuodzVI+uvwlEuNy6I99x
 W2B00XZryaTGqaOqIoIaeKE5+pKWW2F2kROQuUz78MtMJij8QjZ0EZqwO5cNyFgt/zgm
 bDGj9MptNDiTKgoh7n5HHumtB+OWHPDj8utYN9eKD57gJuxKypzT1E1hVdR1fkO4Pjv3
 lb7A==
X-Gm-Message-State: AGi0PuYAClk3IXw28PpdFSyKmTVUNq0raQrcvTfMyWOajPMfwCN6DoPU
 uonDccrQdQ5rkruz85wJLcW536xoJP/TWe3xgAE=
X-Google-Smtp-Source: APiQypIMPx1DpyDjVtC+Lbm8ShB+ZpBHgKcs04qMp7THWhzqtIh9nHjOvMwIrD2yQGmA80Gn5k5LSqaNKb8li75AoPw=
X-Received: by 2002:a92:77c4:: with SMTP id s187mr13514332ilc.45.1588526574724; 
 Sun, 03 May 2020 10:22:54 -0700 (PDT)
MIME-Version: 1.0
References: <1588518416.66682155@apps.rackspace.com>
In-Reply-To: <1588518416.66682155@apps.rackspace.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 3 May 2020 10:22:42 -0700
Message-ID: <CAA93jw6Qw9D9KKVffg6Rzqwepm0pYGx3fiUU9i0cKAKFj4bFXQ@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
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
Cc: Michael Richardson <mcr@sandelman.ca>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Sergey Fedorov <sfedorov@netflix.com>, Jannie Hanekom <jannie@hanekom.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SG1tLiBDYW4gd2VicnRjIHNldC9zZWUgdGhlIHR0bCBmaWVsZD8gZHNjcD8gZWNuPwpJIGZpZ3Vy
ZSBpdCBtaWdodCBiZSBhYmxlIHRvIG9uIGxpbnV4IGFuZCBvc3gsIGJ1dCBub3Qgd2luZG93cy4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

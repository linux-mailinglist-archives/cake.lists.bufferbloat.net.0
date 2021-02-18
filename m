Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E15E31F20A
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 23:05:54 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1D0D63CB38;
	Thu, 18 Feb 2021 17:05:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613685953;
	bh=VAAGRPTmUbPSzr0LiZrnl6cLg/Fm3pl9IQhXg2GHqUg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SZutima7Tzo74yoULpJwndEMoz+8C+Vb9gPjcs6/D1p88TE0nWDjJUn5EOiA0i96p
	 COHGR+rOpedZvcEh8Hpl9Zk5PgmA1lODw5e2soKUEMAtzZd3phRamXWpxoqmn6RMHt
	 h12vkdXNzYVKMquNeXWF0yA1KPsB0QRueyvq8A5qs9yRoh7cWsuTUO5Kchk98rQ6Np
	 W+mBsE41ETAb/Qw8SAdMENzQlIC8v5Vgldp5FEFhle2/mUb0Oz4wEZ4/1jsLmxGhSf
	 +PyQFcbMviQUxufcAwSjCWmHd+WsULgtkeYSqI9bLKrApgWGNugqq74AmilmDvpR8S
	 rbrKPt8vyo2Ag==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC6A53B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 17:05:51 -0500 (EST)
Received: by mail-lj1-f175.google.com with SMTP id o16so4129352ljj.11
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 14:05:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A9xijPERhZZARmHvKZb0bRc70DSErEpzVP56O7N8tCA=;
 b=aHmbDYflY5JvzVJQDrZRrKJKPLKx9OUhHNIHKF8AB+0XcB+2CzCJ2mH+oFmFhNlRv3
 RZp0Vym5b16jfxVfWvEPKXI01vHgSR2rfUVZHG9z1F1VLQs+ZU8EF7paQ7vSX+3l7DSi
 IwtrIkLBIwW3bwdLEsLnisC0M5Gi8D6/RpDG71ukYex3emmCepYmKrWhMxsr2AVF18kA
 052F5jpVlXaTnvyLxpiCzVwTIQpPcXsv6ry/Dyy0TsPJ2oXMxoz+a62rpx8+Dp6qMFpd
 caRDgvhFjMibvJ0URizc79JSumRs3VqByd9nRLqeAhFwx5rkNXxkBenE1T9fa48AIylZ
 0MJA==
X-Gm-Message-State: AOAM531JsX2fr5e414VMeD2u6YXG719xjdmvZcynkMNuo92Flxi+++Mb
 gNb0jG1iAfEa2LR+J7SfeDnH0VNTUuLSilS8JBY=
X-Google-Smtp-Source: ABdhPJwHXqLKrwyRBwMR0ZBFRhi3VGcDA8lU+BbN/wEdtF0WWAfnxthw4IsaH6A1OC/PCIQp0ZgZZPxW8gaWT3/R22A=
X-Received: by 2002:a2e:91da:: with SMTP id u26mr3765911ljg.440.1613685950852; 
 Thu, 18 Feb 2021 14:05:50 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk>
 <CANmPAYFviqW_FekQ-xag-i1qhZ1JHP71MvB+M-qFKdOXLKEUaw@mail.gmail.com>
 <CA+sFVOeAYDk2bm80UWOBZLa+aL=MZba0SX==6-TNXZS6XKgbyw@mail.gmail.com>
In-Reply-To: <CA+sFVOeAYDk2bm80UWOBZLa+aL=MZba0SX==6-TNXZS6XKgbyw@mail.gmail.com>
From: John Yates <john@yates-sheets.org>
Date: Thu, 18 Feb 2021 17:05:39 -0500
Message-ID: <CAJnXXogxpBeN6GEpbCDafwBwAAM_54rbrq812qPrj64gbCjitw@mail.gmail.com>
To: N0man Tech <n0manletter@gmail.com>
Subject: Re: [Cake] Enforcing video quality question
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBGZWIgMTgsIDIwMjEgYXQgMjo1NSBQTSBOMG1hbiBUZWNoIDxuMG1hbmxldHRlckBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gVHJ5IGxvb2tpbmcgYXQgZmlyZXFvcywgYSBjb21wb25lbnQg
b2YgZmlyZWhvbC4gSXQgY2FuIGRvIHBlci1kZXZpY2UgbGltaXRzIHZpYSBhIGNvbmZpZyBmaWxl
Lgo+IFRoZSBkZXZlbG9wZXJzIHByb3ZpZGUgYW4gT3BlbldydCBwYWNrYWdlIGFuZCB5b3UgY2Fu
IGNoYW5nZSB0aGUgZGVmYXVsdCBxZGlzYyB0byBDYWtlIGFuZCBtb2RpZnkgQ2FrZSBzZXR0aW5n
cy4KCkhvdyBsaXZlIGlzIHRoaXMgcHJvamVjdD8gIExvb2tpbmcgYXQgZ2l0aHViIGl0IHNlZW1z
IG1vcmlidW5kLgoKL2pvaG4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

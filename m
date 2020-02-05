Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B67C153979
	for <lists+cake@lfdr.de>; Wed,  5 Feb 2020 21:19:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3840D3CB39;
	Wed,  5 Feb 2020 15:19:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580933972;
	bh=3iZ9Dx/05lyvAC/zzTATwRe8BAQwT+WE70nZIP45Zlk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G0gp0FZeI3Ld535KhC3D9tTesLJHEJfZeUh/wITJv4Iru/+RzhokXx7yXWEZBZQer
	 gi1Ae25yqVIxRlreu1qmMuU81B9CVueH5k9zDlEqW2xfz6GADty9al/0qkGmtQ9v7v
	 76dgBwTxTcT+H0He3m/0OMBzuZz2lPP4sMFQMHEQHkvD3yIPr/6uN45cy/kayz/IAC
	 6JrADXf5WxJc9kpK/zhuMLQHEQRDGV9YiFa9SApLPshVmfY/YndHUuZ/K576b9rklg
	 dbeXg4QnoQkXy4HMWiIf3tkcq4sZMouH5+Wf5tO4fSbpn4dgiKfWVCFUw1+SBOPM09
	 LV5pQBhp6b2ow==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 908F93B29D
 for <cake@lists.bufferbloat.net>; Wed,  5 Feb 2020 15:19:31 -0500 (EST)
Received: by mail-il1-x129.google.com with SMTP id s85so2994683ill.11
 for <cake@lists.bufferbloat.net>; Wed, 05 Feb 2020 12:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rcSv/ycAHH3w10LRPx2Zudpfrk4k8xgJJurDObifOmg=;
 b=h2+GYogNN0zTXtP7nqTv3rWL8/YClUiaS4X8XKs6ISe2oVX0s+w9WwiQU7sazp7Nh4
 jAhwDHf8EMRTDLwDnDI+mbwyhjRn6HW5g6bhNHRgIaRPvfWgI+b9j1MJew97FSETIEeX
 vYrDcQmHsHF35wh2GUDwKinkwFRP1CjtMNlcw9G5rWrtdarOPAVLspuV4ruQ4M2l35VZ
 WE/sMt9xRgFy9dBAiMLV+kqxubHCAb92x7verlilx7Qm/MdEuRTDXNpmvJW2gmbLNvCM
 EGEln0OANccJDNk7CwaGcjZ1tq74Am80I+MWxsJDGSrMrPHD8MQyTBjz7k3uPOIdrj2d
 /i1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rcSv/ycAHH3w10LRPx2Zudpfrk4k8xgJJurDObifOmg=;
 b=BpdOo4mFD785fO3F0vE28MryT4055Fq62xobBNR5sZit/HXduZJoaLg9lfUSXicOEk
 RCw2VJFGKXjBTSYxAFNCFkKdbhnUaEIsHc0TzIpV25ykRsE6rToj6kTrdFL+M8kjC2ww
 I6ebtaxoKrXtOfcxy+xi9CbkSr49ZGB3jK7SML84otRBJEVtl4vWIe6WslKEHMFWfltJ
 z5OJBB21otSalIczZEs2QH7tOVe2ZcyWo8Ks3zjjRMrL6twBHi/HUG1lsYS7OQ5JAd/R
 TXkIywC7F1dBWU29nvAvoy8QR5+5kSR5TbMNUFM6WkfdKa0PH2ByaOZ6749Jz01a54k6
 D68w==
X-Gm-Message-State: APjAAAUbDKbH1lAasvcXf+s+HSexBlesX0CwnGbKknJ6G46y9KyTdHV2
 U2EiGaW0IJd30VX+LWM5fHvZyI6fjdXiYw+DBp1/8Q==
X-Google-Smtp-Source: APXvYqw0NBN2EXM2qqtaDMEwgnccyycZPmo3YrKandcIygk3WYKH5jU0ENxG+2A1q7ziCq+kkdYHjjqybO1mlDUcXEM=
X-Received: by 2002:a05:6e02:5c8:: with SMTP id
 l8mr28387190ils.287.1580933970853; 
 Wed, 05 Feb 2020 12:19:30 -0800 (PST)
MIME-Version: 1.0
References: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
In-Reply-To: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 5 Feb 2020 12:19:19 -0800
Message-ID: <CAA93jw5mP+-T+r1-F9Ze5Ribi7uU8nPb10k5siNBBvYnoYJFJA@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
Subject: Re: [Cake] Cake in mac80211
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

YnR3LCBJIGRpZG4ndCBsb29rIHVwIHdoYXQgZG9tb3Mubm8gZG9lcyB1bnRpbCBub3cgKGV2ZXJ5
Ym9keSB0YWtlIGEKbG9vayEpLiBNTCBpcyBpbnRlcmVzdGluZy4gV2UndmUgcmVhbGx5IHN0cnVn
Z2xlZCB0byBmaW5kIHdheXMgdG8KYXV0b3R1bmUgY2FrZSBwcm9wZXJseSwgaW4gcGFydGljdWxh
ci4gV2UgZGVzaWduZWQgaXQgdG8gYmUgZWFzaWx5CnR1bmFibGUsIGJ1dCBob3cgdG8gdHVuZSBp
cyBhIGJsYWNrIGFydC4gSSBnb3QgYSBraWNrIG91dCBvZiB0aGUKInJlbXkiIHdvcmsuLi4uCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK

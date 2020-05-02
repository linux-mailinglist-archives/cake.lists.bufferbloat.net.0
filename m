Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 581831C264B
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 16:51:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0DB5E3CB42;
	Sat,  2 May 2020 10:51:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588431116;
	bh=XdmaFI14pKhLUiBoeh9fmw8v7Ibi52uOBhhRaOaRMA4=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=P2dcD0ctqw3yYHuUSsCoRpmZPgBw7YisFpV94ohE2c4KiGDmkrrW+myuNhRaEbAMH
	 OXAawX7gVWj6ciwiYCWVkFzTCOgnqQVKsigIWC26qp4t/uuW6RSytkeRSVGKzY9pVx
	 teTAPsBp9p+QLacNVkWFgnih+SRcxB6Bgqbcq+LaHSK0doxLJQzRFZJm9lUZn2+LsI
	 DHLA2TBW2gkMGUwTBweBouzEFSWBLa83/VDUZI7BxsAy+Jfm0JjgxCyo4uNfunB1Zh
	 9AH63g4fpcgjfkXCRldCx1JlT4ZYZmUNqvDK0/DWQVktQkkPaIOX9pArhcAEbCsyAd
	 6QC3q0zwANHnw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3E15E3CB35
 for <cake@lists.bufferbloat.net>; Fri,  1 May 2020 21:15:31 -0400 (EDT)
Received: by mail-lf1-x12a.google.com with SMTP id j14so5157437lfg.9
 for <cake@lists.bufferbloat.net>; Fri, 01 May 2020 18:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hanekom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index
 :content-language:dlp-product:dlp-version:dlp-reaction;
 bh=xb2Mz9/roP7ONOwN1hRKiCdhVQ2sPYf/n+mL0uEGx/I=;
 b=qbV9bMMI5cuDPiyIUm/mn6f44lzBcjIErMY55iiBnUdcZV8Kpsn3ph4CrEZ7ZtI4z+
 iOuwLCnssd4onbPvFNO8oHPpH1NkWEi0hGVNYqdJj9J/6Sz58VGgaFYmEOVKo2mjufjJ
 XNu9rH9pVuEk1KigNcREDWcei71jsCAmfYrOW+LtzmvSS7mQz+iwFFxSeSVzqNetfM98
 QiMw3iEmoEWk9UOBZ4Jrjsm8MBq+BhUEOgx9GFlfZe7tzYEGSrLLNqmslvayf8w671X9
 pkNYSJ1PGLryo2FqhNZ0rz9Q0ErQWt9Xna1esFgdyXif6H+went/ybCZ34qI6PWwKLYS
 0Aiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index
 :content-language:dlp-product:dlp-version:dlp-reaction;
 bh=xb2Mz9/roP7ONOwN1hRKiCdhVQ2sPYf/n+mL0uEGx/I=;
 b=uiA5rSnsqDnq19sUw6oPpBp6Y+YBjondPWN3FKVPq03o9JdewMphC/ON5esZ1zZ7Zr
 xcbscPM4WyzY1kVNFuWxI5zmtwQwAK2Rd1PDmDiWHrc+1CpbjOfbEujmwNnUsMLZnJHZ
 rwBbMvJr3Rl6FjSH3KweD2JLdL+pDtNxvQo0vyvS+788Y3kJZ4tv6ZYGVlo1ypH2VC4Q
 5S58+lNTAkzmNEGaMnmjtGf5SCwFRAOKz8DVEtwMd6NZNr+NbVGDfcYxfVc/cxIeXsp9
 fiL53RUj8kmy2f1sNV6leA/uuxRFMk7q20L5UVdLz5dpK/11okn2sfhBpMMTv0A802nN
 sv+w==
X-Gm-Message-State: AGi0PuZ9webt7Airv1ToGzDg8OeiLyZjIG+ceY6p6deN1rpKHi5O6CLY
 mBdyGCIC0Tb42yALm2jEZ3Zrmg==
X-Google-Smtp-Source: APiQypJTfRq5Qouo3J/rnjvtvplltJFHBsyZlFFR7T2vYiQ1gIK4zj9WYAuxpW6V4mo77zo3eIuHrA==
X-Received: by 2002:a19:e86:: with SMTP id 128mr4137202lfo.169.1588382130073; 
 Fri, 01 May 2020 18:15:30 -0700 (PDT)
Received: from WCPTL313A ([102.132.250.68])
 by smtp.gmail.com with ESMTPSA id i124sm2817290lji.95.2020.05.01.18.15.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 May 2020 18:15:29 -0700 (PDT)
From: "Jannie Hanekom" <jannie@hanekom.net>
To: "'Michael Richardson'" <mcr@sandelman.ca>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost>
In-Reply-To: <24457.1588370840@localhost>
Date: Sat, 2 May 2020 03:14:19 +0200
Message-ID: <013601d6201f$04c7db50$0e5791f0$@hanekom.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKllDMp0Bjx4wxEg2bC2PDhQFwkcAHnjMVDAYniaX8CFRg+K6bI2VKQ
Content-Language: af
dlp-product: dlpe-windows
dlp-version: 11.3.2.8
dlp-reaction: no-action
X-Mailman-Approved-At: Sat, 02 May 2020 10:51:54 -0400
Subject: Re: [Cake] [Make-wifi-fast] [Bloat]  dslreports is no longer free
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
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'Sergey Fedorov' <sfedorov@netflix.com>, 'bloat' <bloat@lists.bufferbloat.net>,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TWljaGFlbCBSaWNoYXJkc29uIDxtY3JAc2FuZGVsbWFuLmNhPjoKPiBEb2VzIGl0IGZpbmQvdXNl
IG15IG5lYXJlc3QgTmV0ZmxpeCBjYWNoZT8KClRoYW5rZnVsbHksIGl0IGFwcGVhcnMgc28uICBU
aGUgRFNMUmVwb3J0cyBibG9hdCB0ZXN0IHdhcyBpbnRlcmVzdGluZywgYnV0CnRoZSBqaXR0ZXIg
b24gdGhlIH4yNDBtcyBiYXNlIGxhdGVuY3kgZnJvbSBTb3V0aCBBZnJpY2EgKGFuZCBvdGhlciBw
YXJ0cyBvZgp0aGUgd29ybGQpIHdhcyBzaWduaWZpY2FudCBlbm91Z2ggdGhhdCB0aGUgZmlndXJl
cyByZXR1cm5lZCB3ZXJlIG9mdGVuCnVucmVsaWFibGUgYW5kIGxhcmdlbHkgdW51c2FibGUgLSBh
dCBsZWFzdCBpbiBteSBleHBlcmllbmNlLgoKRmFzdC5jb20gcmVwb3J0cyBteSB1bmxvYWRlZCBs
YXRlbmN5IGFzIDRtcywgbXkgbG9hZGVkIGxhdGVuY3kgYXMgfjdtcyBhbmQKbWVudGlvbnMgc2Vy
dmVycyBsb2NhdGVkIGluIGxvY2FsIGNpdGllcy4gIEkgZmluYWxseSBoYXZlIGEgdGVzdCBJIGNh
biBzaGFyZQp3aXRoIGxvY2FsIG5vbi10ZWNobmljYWwgcGVvcGxlIQoKKEFncmVlZCwgdXBsb2Fk
IHRlc3Qgd291bGQgYmUgbmljZSwgYnV0IHRoaXMgaXMgYSBodWdlIHN0ZXAgZm9yd2FyZCBmcm9t
CndoYXQgSSBoYWQgYWNjZXNzIHRvIGJlZm9yZS4pCgpKYW5uaWUgSGFuZWtvbQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=

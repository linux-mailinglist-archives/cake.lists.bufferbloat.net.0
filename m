Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C56136D3D
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2020 13:42:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 106E03CB38;
	Fri, 10 Jan 2020 07:42:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578660151;
	bh=qbB0+8/cF6KC9L+ZtXZ+mKc+aKEzzE1zoNaXGatmgLw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jugX4uHyPNd6l9Id3zVNGT1VGrGnVrNnmwC8n5IywyQbEkRoBQw8nZAEiR4pO05tB
	 CLLcSiqaU3v6hMzO6yd62TQ3qobT52BnlOssoj67/HNI5+tXfyZ2TsAUV+2ebPoA5w
	 TfdsaYOshipMmtGKJz0JyEBUywu60ajG4EC4xDzi6crKh5BxlYbRVDsaGf3fw499hW
	 5ZwHA5+kQG9bqPFffjHGT/vzNdpg9zos2KJVrTfZApoRU/lyrYuSZRKZTgL0BDsakt
	 DiPG/3rGr8N5LNTTyyze/fW3n1RgWUmNYwQd+69f5a30t7czl6f8Zk/rFazUiQ3rzL
	 NyI0vS3FfZFoA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 97F663B2A4
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2020 07:42:29 -0500 (EST)
Received: by mail-wm1-x329.google.com with SMTP id d139so4330976wmd.0
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2020 04:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yTt5XdK0kAp6RZsjOuMjHlFFoxc/QKYaDuzmbXs0yDM=;
 b=T8+hHlkVeFkqMZJZUIJnAGzv4baxM6c6riELQ+FAiuro+7gYOrT3/CP7C+mUkbK2E5
 4jFb8G/ttG2dHjQ26aS7I9XLhEFczIIxrGE0Nb2JM7x9xX0yomHn5cp/9k2iuA7+oMCa
 5xO7hDAf8hIIuUMXj4xJkU9tJyQ4oFz4xt994/0KEV35Tko4MDZByX7Vi0zFtmRbv8eQ
 BVsVRw/wEjBOFI3x+CyMawOWKHHxAfjIWW02L5fWGYZBz3CAbUii8IBpK/jqi+ydengr
 HR/C9isfNrShYiu6TsOAO8O71Er5fU+mwYSsnZS/BIELuRjP5njbPdp4W5rsrzOKXvQe
 ojnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yTt5XdK0kAp6RZsjOuMjHlFFoxc/QKYaDuzmbXs0yDM=;
 b=HmFTVdwAHXilGAMYvKTGJYWnRFNPDPecpZAFqCUlBFsMhgApG5UgAgT1kfb+UcHfR9
 FfN/VY1piQny3CMIfoKk+YJXs4uQkshYherqwzChG09zO45ee7aLGpni1jDSImZrb92d
 QGRnzMvI289+ZIHMJoQKxCdmP1FeKbfS4INK+s2jZMHuPfmkBx3He+k801Ze0rOU4Nf7
 B2QF9kXOxcrgCCgqc3Yl4uQyPRtgkF5R8QHsNWT41O7lXvlbe3v/gqLx4wX5jbhuGNbw
 W2qOdPCBYAeJfKGA5OpbWB4yIWPNwAvtni9EPiGTeiQQ3VG8/RpoMpsLD7sPp5H+Kz9x
 Hhtg==
X-Gm-Message-State: APjAAAUQVUn3lEdOFJQCDIOxrrIj6HVa0OczU2Nv0cjEnFuLgQwZ6dqA
 7jlg1JpZpsuevE3dcMhcNqIYbqqjYy/MPBTP+Eo=
X-Google-Smtp-Source: APXvYqx+++pfU65FjHfva/gsZ7cKLJZcYgmt6SyhpdnHe6T+mPRuEZSkZhGB3SsoCWazxszk2CyUyYvEjXjsLNN3HAI=
X-Received: by 2002:a05:600c:cd:: with SMTP id
 u13mr4192384wmm.24.1578660148813; 
 Fri, 10 Jan 2020 04:42:28 -0800 (PST)
MIME-Version: 1.0
References: <CAA5aLPgz2Pzi5qNZkHwtN=fEXEwRpCQYFUkEzRWkdT39+YNWFA@mail.gmail.com>
 <875zpvvsar.fsf@toke.dk>
 <CAA5aLPhrDbqJqfVVBWfCZ6TK0ZFMOSsqxK9DS9D1cd4GZJ0ctw@mail.gmail.com>
 <87muj6tusy.fsf@toke.dk>
In-Reply-To: <87muj6tusy.fsf@toke.dk>
From: Akshat Kakkar <akshat.1984@gmail.com>
Date: Fri, 10 Jan 2020 18:12:16 +0530
Message-ID: <CAA5aLPjK3bqFoyWQY8xpN6mKyO3S_nRh0+W1i4rW+dfF7KmZYw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] Cake not doing rate limiting in a way it is expected to
	do
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
Cc: cake@lists.bufferbloat.net, netdev <netdev@vger.kernel.org>,
 lartc <lartc@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgVG9rZSwKSSB3aWxsIHRyeSB0byByZWJ1aWxkIG15IHNldHVwIGFuZCB0aGVuIGdldCBiYWNr
IHRvIHlvdS4gSSB3YXMgb2ZmIGR1ZQp0byBhbiBpbmp1cnkuCgpUaGFua3MsCgpPbiBUdWUsIE1h
eSAyOCwgMjAxOSBhdCA5OjUwIFBNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRo
YXQuY29tPiB3cm90ZToKPgo+IEFrc2hhdCBLYWtrYXIgPGFrc2hhdC4xOTg0QGdtYWlsLmNvbT4g
d3JpdGVzOgo+Cj4gPiBJdCdzIGEgY29udHJvbGxlZCBsYWIgc2V0dXAuIFVzZXJzIGNvbm5lY3Rl
ZCB0byBlbm8yIGFuZCBzZXJ2ZXIgb24gZW5vMS4KPiA+IExpbmsgc3BlZWQgMUdicHMuCj4gPiBO
byBpbmdyZXNzIHNoYXBpbmcuCj4gPiBTaW1wbGUgaHR0cCBkb3dubG9hZC4KPiA+Cj4gPiBJIGFt
IGhhdmluZyBtdWx0aXBsZSByYXRlcyByZXF1aXJlbWVudCBmb3IgbXVsdGlwbGUgdXNlciBncm91
cHMsIHdoaWNoCj4gPiBJIGFtIGNvbnRyb2xsaW5nIHVzaW5nIHZhcmlvdXMgY2xhc3NlcyBhbmQg
dGh1cyB1c2luZyBodGIuCj4KPiBXZWxsLCBDQUtFIGhhcyBpdHMgb3duIGJ1aWx0LWluIHNoYXBl
ciwgc28gaXQgaGFzbid0IHNlZW4gbXVjaCB0ZXN0aW5nCj4gd2l0aCBIVEIgYXMgYSBwYXJlbnQu
IFRoZW9yZXRpY2FsbHkgaXQgKnNob3VsZCogd29yaywgdGhvdWdoLCBhcyBsb25nIGFzCj4gQ0FL
RSBpcyBydW5uaW5nIGluIHVubGltaXRlZCBtb2RlLgo+Cj4gQ291bGQgeW91IHBsZWFzZSBzaGFy
ZSB5b3VyIGZ1bGwgY29uZmlnLCBhbmQgdGhlIG91dHB1dCBvZiBgdGMgLXMgcWRpc2NgCj4gYWZ0
ZXIgYSBydW4/Cj4KPiBUaGFua3MsCj4KPiAtVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

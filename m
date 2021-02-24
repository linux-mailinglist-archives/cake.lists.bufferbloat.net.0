Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8E53234C0
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 02:14:52 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 54D0D3CB47;
	Tue, 23 Feb 2021 20:14:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614129285;
	bh=kfqstO5TyUMQlPfx8Aibj3qi4Q1k2hQhisxzqezcc44=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Re0IDby2CqZvZkBhn0Uo0hRrvTI+3xlOYGCnrEB6xlCLHb7I/S59TZHkALo+xW8n7
	 M+tXL2Tfj10PwxHqq4uY/we0wv4hbtEtTxZ6cM7lp+d8pyEzPhm8yPtWR9Qu5mmNbY
	 qCMC7laOwXj7hHqTVzIQBEigFhWG+748unZFsCVgrarG0o62GzUnYIijChqxrKnxtq
	 jkhy1fzZvqrd69yn50rhm+mgDaQlyF1ieOERdqWRD+5TYAlw4+7VVe8KYKYUhDneqJ
	 2wbn3VvbzHYRpWQnw+t5U4ZvDoa1n2Uu1sKQ5u8RzFVaGSJYAOUC2Dh5yc2BGr7Sb6
	 L6tDdkjaafOOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9D8513B29E;
 Tue, 23 Feb 2021 20:14:43 -0500 (EST)
Received: by mail-il1-x130.google.com with SMTP id g9so293743ilc.3;
 Tue, 23 Feb 2021 17:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sr0DneaVtiNuvy21lHsOWO3+dQv+3aszqMB0cu0qV6U=;
 b=nR7GrQdQ8ymzAUY94qzAk+8dKPfOkYXkBEymDmiFasCCJPOm4n+UEi4aK3sfxC51pK
 G3Z+QVDSI76rCvYwdD96ACmTuUH7uvjOP7N77ZcZroyJkyVcZKmHkKRMQ5YHWDQjjBzA
 OH31ZlkXtQU3/ac4HhdCz7+V2oN1DmhwzQ1ZmTsdrmppqBpX/QBiWsnV4oipm2qBiXlI
 COZAp/RjiOstQBjj3FoXKI0Tc8PlxDnLAx4goG0BkYIB7C+cv5BjYmMje5XeG0Y3BAhp
 /ekrkQihxkw4Nj18HTBovWx0YDG80znvYl/goNlLQD+RjeWekQcyOwfokV6zKVRYDjsN
 /bww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sr0DneaVtiNuvy21lHsOWO3+dQv+3aszqMB0cu0qV6U=;
 b=F1qIh2sCI84qmiAaqeRoV2HQjkPGGLzNDAYixO0TvJ6eFqG6YkHx1gqU09dUmuGdDG
 1gHjtBlHX+1YNgF8IC3NRd2C03SoLpu2NFS5ch9mFQr/RGK/Syv0UjtxObQ09AuuUIEH
 hyKX1Gqg8su0D536MvM66pCjc6EC+FaRp3ki3k43XRyrj9PaT+6hRCX5xGqO7moD7JFO
 MzvmkceNR9Uo9VY8dhuV31HjPatHfJs6XorGXgZPXpU6FiU3IognAQCUmusPqs/D31+c
 fcWukRyudi/gv7uZm/fXfkyE9DU1JPiLm+IgyppKZcrPzYaQHUVlXCVCh6wgu42SLk8v
 /5zg==
X-Gm-Message-State: AOAM532pCFatH/+SgjXXcCDVpUP86v0K0itvknvi13rDybWmVSo8GnMs
 NM6OiqW/uAPBUEamITi8gdr0q2ZOc21JxHOokxdQlwYcCJE=
X-Google-Smtp-Source: ABdhPJwxvG7A3etmbV8FzMeWQRcaAVulySl6kIr28ZVDoOw+eX5pRWRKdu91h+E5KJM6jcvdQIIg0SeQavEgMqQHU0g=
X-Received: by 2002:a05:6e02:1d85:: with SMTP id
 h5mr22838204ila.246.1614129282970; 
 Tue, 23 Feb 2021 17:14:42 -0800 (PST)
MIME-Version: 1.0
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
In-Reply-To: <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 23 Feb 2021 17:14:31 -0800
Message-ID: <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
To: Nils Andreas Svee <me@lochnair.net>
Subject: Re: [Cake] Fwd: [Galene] Dave on bufferbloat and jitter at 8pm CET
 Tuesday 23
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
Cc: =?UTF-8?Q?Toke_H=C3=B8iland=2DJ=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

d293LCB0aGF0IGlzIChwcmVkaWN0YWJseSkgbWlzZXJhYmxlLCBldmVuIHdpdGggY2FrZS4gVGhl
IG9ubHkKc29sdXRpb24gdGhhdCBpcyBnb2luZyB0bwp3b3JrIGlzIHRvIHNvbWVob3cgYWN0aXZl
bHkgbW9uaXRvciB5b3VyIGxpbmsgcXVhbGl0eSBhbmQgYWRqdXN0IGNha2UKdG8gc3VpdC4gT3Ig
d2UgY2FuIHN0YXJ0IHRyeWluZyB0byB1c2Uga2F0aGllJ3MgcGFzc2l2ZSBwaW5nIHRvb2xzLgoK
T24gVHVlLCBGZWIgMjMsIDIwMjEgYXQgMTozMCBQTSBOaWxzIEFuZHJlYXMgU3ZlZSA8bWVAbG9j
aG5haXIubmV0PiB3cm90ZToKPgo+IFRoYW5rcyBmb3IgdGhlIHRhbGsgRGF2ZSBhbmQgaXQgd2Fz
IG5pY2UgbWVldGluZyB5b3UgYWxsIQo+Cj4gTmV2ZXIgcmVhbGx5IGRpZCBtdWNoIGluIHRoZSB3
YXkgb2YgRmxlbnQgdGVzdHMgYWZ0ZXIgbW92aW5nIGZyb20gQURTTCB0byBUZWxlbm9yJ3MgIndp
cmVsZXNzIGJyb2FkYmFuZCIgYWthLiA0Ry4gU28gSSByYW4gc29tZSBhZnRlciBsZWF2aW5nIHRo
ZSBtZWV0aW5nLCB3aXRoIENBS0Ugb24gb3Igb2ZmLCBhbmQgbGV0IG1lIHRlbGwgeW91IC0gaXQn
cyB0ZXJyaWZ5aW5nLCA0RyBzdWNrcyBpbmRlZWQuLCBub3QgYXMgYmFkIGFzIERTTCB3aXRob3V0
IFNRTSBtaW5kLCBidXQgc3RpbGwKPgo+IEF2Zy4gbGF0ZW5jeSB3aXRob3V0IFNRTSBhdCBzb21l
IHBvaW50cyBjbG9zZSB0byA4MDAgbXMgb3IgYWJvdmUuIEhhZCB0byBzYWNyaWZpY2UgYSBsb3Qg
b2YgYmFuZHdpZHRoIHRvIGdldCBpdCB0byBzYW5lIGxldmVscyB3aGVuIGRvaW5nIFJSVUwgdGVz
dHMuCj4KPiBEdW1wZWQgYWxsIHRoZSBmaWxlcyBvdmVyIGhlcmU6IGh0dHBzOi8vZGwubG9jaG5h
aXIubmV0L0J1ZmZlcmJsb2F0L1Rlc3RzLwo+IE9oIGJ0dyBJIHByb21pc2UgSSdsbCB0cnkgdG8g
bm90IGJyZWFrIHRoaW5ncyB3aGVuIHlvdSBuZWVkIHRvIGFjY2VzcyBzb21ldGhpbmcgb24gdGhh
dCBib3ggYWdhaW4gRGF2ZS4uLgo+Cj4gQmVzdCBSZWdhcmRzCj4gTmlscwoKCgotLSAKIkZvciBh
IHN1Y2Nlc3NmdWwgdGVjaG5vbG9neSwgcmVhbGl0eSBtdXN0IHRha2UgcHJlY2VkZW5jZSBvdmVy
IHB1YmxpYwpyZWxhdGlvbnMsIGZvciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBiZSBmb29sZWQiIC0g
UmljaGFyZCBGZXlubWFuCgpkYXZlQHRhaHQubmV0IDxEYXZlIFTDpGh0PiBDVE8sIFRla0xpYnJl
LCBMTEMgVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

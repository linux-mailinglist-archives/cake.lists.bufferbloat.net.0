Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CB97C5809
	for <lists+cake@lfdr.de>; Wed, 11 Oct 2023 17:26:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 08F0B3CB44;
	Wed, 11 Oct 2023 11:26:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697037994;
	bh=MY6/pIA2Ao3Dh3UYEqoPw0qmRFMaIoyyA8qfDjDnTNQ=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=LWHKejywAf2g8IAqIZSl2QxhiYUZG4avSltZkkvFme7AbQnYf0BMzRXkdxCCPjULC
	 1O6Fnz+SpJXNga6miL0bhVwymzmIPCglFokNQPSYlMGhG5/U9oCtwATEMzuw6FwLqs
	 taJNQ6wShAex8u70vc574W+bUd3kntYZZ5mdtjV/xqnsCmRIC96zV0beX2QdT9qvw8
	 QtI5ZzIEyKL+ICBqO1NyBGibCNUk05094nWQoIousOlqVWp6itfmPeYgpSnc1ImRAi
	 x6loHX3e4vVqP3KDkItN7xJv/EWqG2HOqNm0H3oN/FoQZuVY9p8iglktPWBF+PQALX
	 g56e3Xwty8dbg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2551C3CB37;
 Wed, 11 Oct 2023 11:26:32 -0400 (EDT)
Received: by mail-pg1-x52f.google.com with SMTP id
 41be03b00d2f7-578e33b6fb7so4645144a12.3; 
 Wed, 11 Oct 2023 08:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697037990; x=1697642790; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=5xZvXaf06XrsM9uGaQEd/9/46V5QxC8SLJzq56neJcc=;
 b=FHPXq70YRTkgBAfnm/i0xDb28g0gEJ2EL63BNHX2aMp7/Qk16d1Tsyg5+LRdWcgN/z
 deGNUKOly5EaLbmEw2bH0LCY+VqpMjL5bW8OjRCBWz/L6CllmYJD4/0b9sk7KY0p4sen
 1Jwc2Ja5f6eJFzs5QUy3dR0y3ZvPz8KQn6xTogGc5d+QUmPfvtyC6QHrqqxyaFFtNHDB
 IpFRdGt3dYYY9oxqzIwBvDqpNXca5/cg4PZtbtm1pXiik42I1S1Mtm6rfRqUmtnC4QKs
 lwIFrudKKJIvuEa9QsPkqRm7ZyEIDl5tl7lrnt/iyAfX68yA8XWMY2RpgTSvpOcFopE6
 1n1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697037990; x=1697642790;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5xZvXaf06XrsM9uGaQEd/9/46V5QxC8SLJzq56neJcc=;
 b=XfLtsdf8YM1i+my88ItYE03pZVHFn/neQtsTr8h+o1mdMdqaSr2gtfluS21A2Kunep
 /3XecW23+GFUY8VPp4Q4pKpDmt00rbOl5XtNkdDSA+kZvWZt9n6n3UItbXLSCM3Ehnfz
 ENj9kbQGxAOqfaIvR34alyxbg1+/wE8QKMQjX0CtMT2qiv1khwARF4JuNfO/oGeCiM8D
 wHvKYY8P5ab311GU+LxHhnvOKEBfPsQhZMg/f7cDdZOvqClG+a/W0pLYnaVjzTCMehmX
 iAAvlXPshfm0WExHDK5a9oQjkPDG4aoOsvPfXVcFJyWV+T4dORVBLiEQpsaBSfDd6yYY
 XoyQ==
X-Gm-Message-State: AOJu0Yz2t2v0Xxlvq5K6T9PPEep2l9408CFPvDTit+rnFA6frZxDjRv/
 9IJwQ7wN15aYthhqpLGNMTL7Zd/NC2oUg/5BbqpMesj6ffM=
X-Google-Smtp-Source: AGHT+IEiuHKbGEMRnaTbX8RaEvD3+9PdHiFsilNkQPcjuf2bWqfQopgfDVmr/k206BsC2d1xTKQlT/19r5kd8VnYdJg=
X-Received: by 2002:a17:90a:983:b0:27c:edd6:b08d with SMTP id
 3-20020a17090a098300b0027cedd6b08dmr4331541pjo.24.1697037990376; Wed, 11 Oct
 2023 08:26:30 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 11 Oct 2023 08:26:17 -0700
Message-ID: <CAA93jw4YrKZJR7JDGg8hCRHO+t4KU4Txd0phWsu+v_5cCwFXKQ@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] vyos w/fq_codel and cake
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
Cc: "Richard E. Brown" <richb.hanover@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QWZ0ZXIgc3VjY2Vzc2Z1bGx5IGhhdmluZyBnb3QgdGhlbSB0byBzd2l0Y2ggdGhlIGRlZmF1bHQg
b3ZlciB0bwpmcV9jb2RlbCBsYXN0IHdlZWssCkkgc3RhcnRlZCBsb29raW5nIG92ZXIgdGhlaXIg
dmVyeSBvbGQgc2tvb2wgdHJhZmZpYyBzaGFwaW5nIHBvbGljaWVzLgpEb2VzIGFueW9uZSBoZXJl
IHVzZSB2eW9zPyBJIHVzZWQgdG8gcmVhbGx5IGxpa2UgaXQsIGJ1dCBraW5kIG9mIHdlbnQKcHVy
ZSBvcGVud3J0LCBhbmQgbm93IHZlcnkgbGl0dGxlIGF0IGFsbC4KCmh0dHBzOi8vZm9ydW0udnlv
cy5pby90L3Fvcy1xb2Utc3VwcG9ydC1pbi12eW9zLzEyMzc2LzIKCmh0dHBzOi8vZG9jcy52eW9z
LmlvL2VuL2xhdGVzdC9jb25maWd1cmF0aW9uL3RyYWZmaWNwb2xpY3kvaW5kZXguaHRtbAoKCi0t
IApPY3QgMzA6IGh0dHBzOi8vbmV0ZGV2Y29uZi5pbmZvLzB4MTcvbmV3cy90aGUtbWFlc3Ryby1h
bmQtdGhlLW11c2ljLWJvZi5odG1sCkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApD
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F97078E4D0
	for <lists+cake@lfdr.de>; Thu, 31 Aug 2023 04:49:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D523D3CB39;
	Wed, 30 Aug 2023 22:49:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1693450167;
	bh=y6Ps4vY/0W7dZTYmFwBlvSjAkjuRCRakJXC25SSrb9s=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=U8oQPOkqnzLStDvbfBri/P2vsBoT0P7LhqMS9pqZ3bmuAtC+5f+rx1AqqSv97hJPp
	 wsExDSKKzPAgR/rmBxkT4lpPVtyqX5LdgBE7IEwichssrotuiZJRG0+djt5dqqVEUG
	 tUeyQO6Lw318dE7XhN7FatHjOlKeFUDWEH/I5cdMNVnI8r1gPvPJwOPuM/lcQ8qQM1
	 evNmnBL69nd4+TO/s7jYSaczZbeN20c2RJr3bHDef667SC15LP+4kssvZTPK6NJxT3
	 XlimsZNBTKGiEBMxu2g9cnyrGokoMJcNCW5UQgpicWxcCgIfuiJBD5dxSRiqwjOS9H
	 fBCUmUoy4PQnQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0E0BA3B29E
 for <cake@lists.bufferbloat.net>; Wed, 30 Aug 2023 22:49:27 -0400 (EDT)
Received: by mail-pj1-x1030.google.com with SMTP id
 98e67ed59e1d1-269304c135aso270661a91.3
 for <cake@lists.bufferbloat.net>; Wed, 30 Aug 2023 19:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693450165; x=1694054965; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FqZompB6wllsR+Bp40GLC+girPHyuevdBIW9TInjewc=;
 b=rH5av+o1hmfqWrtISty7hY5qlioQ7Rvf2g2p6v0YHxmNu2vuhHKjSeqwq+RY4uHBDs
 4aR1ZRUU3E4nmdVs4nOAvuj22ypUeMHh1WCOhgk9WntccANt9zfsQE7eTHV5EJvYs/7e
 NRmyV/jD/eQd76gy2rLlRwMxsiFob0q1aepq28OxDFyW/nl9SnRZJX/SJwLvybTnFVwQ
 OX6g1pJJBfz3YMcFcvCoeJOyRy6Xr2GW8jC11KsdACDZq9nxWGl+v3vcJQht5kbSvN+J
 e5IAxH1pKKntNM2gALZ3kdzdVAWr7wHK8SdTIDNKIAoi41stGvMI5VqQAlgWyrVKtI/x
 debw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693450165; x=1694054965;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FqZompB6wllsR+Bp40GLC+girPHyuevdBIW9TInjewc=;
 b=IUpRNUUu1rrgG+KuJx+ORTJxlIzCRdz560KKUD1KC0XR6jMfkeOQ7o+i1vceLFXNYk
 aqlVCbKaNJdZ4MuvrXOpuf6fNGSEgqCch3C633Sm/UB1gjLnKEsMcwkRl+ii2yHFL613
 GaIFQUE1WbWJJi1Xikh92wEOaosIYFbhDyrq5irQHj4zkFmGnyoicZtSqw8WmAchkgjo
 KsPmZSlPAyuY9wcpiDalYb6bPqLgFxjHx8tpqdv7DUTYqx/RfD/rcxnZC4OWUctHhNX5
 jz27i33yrYsP925yNjZxw8jSnyTp0M2L/7p8AriWinlr41rqNnGm5G1qX6xt0kv8Mffk
 2qTA==
X-Gm-Message-State: AOJu0YxUM5M524F1YWvhRk9jsvhSBfuH+8KIXbojpm/58GArK7tAFMEX
 p4BWNzjWPr/mryCCOzEdtul/xEgjvzgDAAJ7ki0OBMTzYtI=
X-Google-Smtp-Source: AGHT+IHE16L5yfyLa25JdKXak2iX4y+NI+QkNwrZ5M7LXa9TdowIWGCBp5mxOMXFEUy3NrIlGRuZ8fANa/P48gcECcE=
X-Received: by 2002:a17:90a:f18f:b0:26b:4e59:57e7 with SMTP id
 bv15-20020a17090af18f00b0026b4e5957e7mr3793286pjb.43.1693450165443; Wed, 30
 Aug 2023 19:49:25 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 30 Aug 2023 19:49:14 -0700
Message-ID: <CAA93jw7gm=gPz+QWj0cUfTKoatgEwph52nFxuVcVZ_Cj0K6HkA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Some more cakemq thoughts
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogaHR0cHM6Ly9kb2NzLmdvb2dsZS5jb20vZG9jdW1lbnQvZC8xdFRZQlBlYVJkQ085QUdU
R1FDcG9pdUxPUlF6Tl9iRzNUQWtFb2xKUGgyOC9lZGl0I2hlYWRpbmc9aC5zM3E4cHl1MXM4MjUK
Ci4uLgoKVGhlIGtlcm5lbCBoYXMgb3ZlciAyNTAwIHBsYWNlcyB3aGVyZSBpdCBjYW4gZHJvcCBw
YWNrZXRzLCBtYW55IG9mCndoaWNoIGhhdmUgYmVlbiBpbnN0cnVtZW50ZWQgd2l0aCB0aGUgIOKA
nERyb3BfcmVhc29u4oCdIGZhY2lsaXR5LiBObwpxZGlzYyBoYXMgZHJvcF9yZWFzb24gZW5jb2Rl
ZCBpbnRvIGl0IHlldC4gKFN1Z2dlc3RlZCBuYW1lczoKRFJPUF9SRUFTT05fe0NPTkdFU1QsIE9W
RVJGTE9XLCBGTE9PRCwgU1BJS0V9KS4KClFPUy1NQVAgbWlycm9yaW5nIHRoZSBzYW1lIHN5bnRh
eCBhcyB0aGUgd2lmaSBpbnRlcmZhY2UsIHRoaXMKZXN0YWJsaXNoZXMgYSBkaXJlY3QgY29ycmVz
cG9uZGVuY2UgYmV0d2VlbiBjYWtlIOKAnHRpbnPigJ0gYW5kIHRoZQpzZXR0aW5ncyBmb3IgdGhl
IGxpbnV4IHdpZmkgcW9zLW1hcCBmYWNpbGl0eS4KClZMQU4tTUFQIFRoaXMgbWFwcyBmcm9tIHZs
YW5zIHRvIHRpbnMKCk5PV0FTSE5RQiAtIGNha2UgZGVmYXVsdHMgdG8gbm93YXNoIGFsbG93aW5n
IHRoZSBwYXNzYWdlIG9mIGFsbCBkc2NwcywKdGhlIGFkZGl0aW9uIG9mIHRoZSBOT1dBU0hOUUIg
c3RhdGUgbWVhbnMgaXQgd2lsbCB3YXNoIG91dCBldmVyeXRoaW5nCmV4Y2VwdCBOUUIuCgoKLS0g
Ck9jdCAzMDogaHR0cHM6Ly9uZXRkZXZjb25mLmluZm8vMHgxNy9uZXdzL3RoZS1tYWVzdHJvLWFu
ZC10aGUtbXVzaWMtYm9mLmh0bWwKRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

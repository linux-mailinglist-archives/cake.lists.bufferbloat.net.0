Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id DA606B580DD
	for <lists+cake@lfdr.de>; Mon, 15 Sep 2025 17:37:09 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id E7DF869840F;
	Mon, 15 Sep 2025 17:37:08 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=ElFU+PGP
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757950628;
 b=Iuw23QuAONOym/ZXpZow+o7rLmPB96ginkcfMo+g0Oz7Ma/5ifDJCUZimdpB0qWyOYlga
 vZm5msccaiFVbuCIqMkvr52CB8QSa1MQ8Ma/hqSwrh1gt1LtoU3/15FdthBhr6+Wq1gPa8w
 TDeRi4uoQCvj58SDdkyzfdrXdt3Nwzw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757950628; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FqU/mUB0X7Ycb2RFbnNg/Y4KhMFY3TuLrqgGSZikJM0=;
 b=APnhimFFN8PGTO7VvdEXUrrbxI7LkTnB6PRVRdJO45LbdXNlHcC1eov04rlpu99q6XtJ0
 /Ov87JP3tsTKBGH1dmI8TfNJ1RtrDEm4oQ4wWRJ8qMYBPIEz71wOpE/b3HilqSVuxV604EF
 XrT+mqSYg9eQvK1VnNK8EXAtdTddY94=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
	by mail.toke.dk (Postfix) with ESMTPS id D7CF66983FD
	for <cake@lists.bufferbloat.net>; Mon, 15 Sep 2025 17:37:06 +0200 (CEST)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-62ec5f750f7so7468157a12.3
        for <cake@lists.bufferbloat.net>;
 Mon, 15 Sep 2025 08:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757950624; x=1758555424;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6r45X/xFZqhQuQgUqxvwvnVcjjPcqP4hgbQVpYUHkr4=;
        b=ElFU+PGPUe8OC5+fUD2aOQt71K8gB1tTuzKU1wWESlczTVJjm1nsamxXofvD3ed4Xi
         PzRtDnr/dRw5lHfxDBEODq19AnL9TJW5XXAE5CMQQ9x0I2V8FZrU9Fe2kW7/WBmIMof5
         dmy2A8UtsMf2N6ZR6GyT4bsp7jxcnYGbtT2D8DGaZyEP8ic0L6zWt8y/iR1/xMnEUbDO
         nSRIfW6CVKa3mLIcBHZ3kExS+OniCfXYnELBmeC7p8izbYsxEnXJH6yYcpJnibDMAn91
         O3HtAOqpLp3mxesQU7lLZnHpEV+KGP+N73P7DfNOz0FysDIkdvz4PthUygzXBmlhBtYj
         j2gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757950624; x=1758555424;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6r45X/xFZqhQuQgUqxvwvnVcjjPcqP4hgbQVpYUHkr4=;
        b=fj31jX19qEA9yS36/l6+0F516zo133BbTWQ55kWvEuzhVq+zj8/FbuVgw66fC5e43q
         ldK7bcq4BUOuRDNQDHvWAHKE2dptW3/aR3/XU/8fPXcjG+LQSZnjxeCvl/hHml89FrWZ
         QB1ft24N84pZ6b6RpfBSqngnfxfWHhaJmJfbASy05cyASwEq3qa5jeEt5vc77o0or/zk
         vBBAwBISzAx1v7Pe2TD9jevMU4sh6gkS8vOttMdeZzw7cXBzlN9bDReZR84siv7203eU
         SEaf0d84a13rWl1HZg/SMHLC6bgAuhqS9D2r+DOGZKPinjc53o6gVnmOdEZc7Oa1WgKI
         sBLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXbiIWkE/Wr+2nEx6wHScYVD4bfvG6M9Xr1EHNCQx7qdL7yL9u+8Dm29rCzDKXUnzfMWVsU@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxdGoMSzpoGW+YfVI8lDf27LefDHekkXX76RqZYqI8WxgG3P9Ln
	aqb+gJq7QPJt5HdbktioSU+RGR+dx2qkyWkEdRsYwE0sFs4mb1FkeeJOAfu2cDtp2f5L5t7Dcby
	9yZA1wTwf256c+SGmyhcizwccoiDWUHVy7JC/Wn0=
X-Gm-Gg: ASbGncsEZw3WjbZzF2LXJAoc58AKLNz9y1Aux9Np6sucgP0IYSudmhCmFKaCrtNIP2d
	aBApMZoXE6P1qBUFMXgZsWYNewPoGc9utkOjgfhn1i6dwXgFEKixrZdeU4wwUdZrZfwCqXoIDQw
	Cv/uF9w9Q4KbIYCadDL7SBf0QoX0gdwvlk4brAB4Fnh+dS+qrmYOXYekdAKzl3MNKAVd+AiZUPt
	VyhpODy01fwtHNxug7adQfa9vdCR3K6+LeqCkUvZjbM02bIL9b4Via2BumH8mK7a3TcHujR1mM2
	IAYdHyaBahaNnigez/kdqnRabi9vFxWqcOpb7QhQWt+j6HaKtfGaA3c/TU54rCW8
X-Google-Smtp-Source: 
 AGHT+IFoiwi7EBfTw9/muPfWaWacUKyrilHYIH9M+9CjRCfsGR5qIopGzonfsiph2qW5IMdjwcj8kVkbDudyh276iSg=
X-Received: by 2002:a17:907:969e:b0:b04:616c:d74a with SMTP id
 a640c23a62f3a-b07c333dc90mr1272794566b.0.1757950623812; Mon, 15 Sep 2025
 08:37:03 -0700 (PDT)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Mon, 15 Sep 2025 17:37:46 +0200
X-Gm-Features: AS18NWBchbwEjX5Zlv-pp5Ox8r6XtA29iCS5hRkFXsfjmd7NTJXP_r7dAUhVoy8
Message-ID: 
 <CAJUtOOgzSRL_qFDZQso4enqRqn2gdDC9CG7V2tc7rQg--ypRYg@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Cc: Duncan Cameron <duncan_nz@icloud.com>
Message-ID-Hash: XA2QAYBP2YJM5USWAXAG5W2HHP6QJJTM
X-Message-ID-Hash: XA2QAYBP2YJM5USWAXAG5W2HHP6QJJTM
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] "Remembering Dave" & PURPLE: Dynamic Control of CAKE
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOgzSRL_qFDZQso4enqRqn2gdDC9CG7V2tc7rQg--ypRYg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsLA0KDQpEdW5jYW4gQ2FtZXJvbiBwcmVzZW50ZWQgIlBVUlBMRTogRHluYW1p
YyBDb250cm9sIG9mIENBS0UiIGF0IEFQTklDIDYwIGFuZA0KcGFpZCB0cmlidXRlIHRvIG91ciBk
ZWFybHkgYmVsb3ZlZCBEYXZlIFTDpGh0Lg0KDQpTbGlkZXM6DQpodHRwczovL2NvbmZlcmVuY2Uu
YXBuaWMubmV0LzYwL2Fzc2V0cy9wcmVzZW50YXRpb24tZmlsZXMvZjYxMTBiZmEtOTE4Zi00MzBh
LTk1ZDYtNjBhNDUyNGQ2MmNmLnBkZg0KDQpWaWRlbzoNCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29t
L2xpdmUvdUljTWpQZVJUNU0/c2k9NTUwUUhfQlpXbWNRZVgwUyZ0PTY0Nw0KDQpBZGRpbmcgRHVu
Y2FuIHRvIENDLCBpZiBhbnlvbmUgaGFzIGEgcXVlc3Rpb24uDQoNCkFsbCB0aGUgYmVzdCwNCg0K
RnJhbmsNCg0KRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQoNCg0KKkluIGxvdmluZyBtZW1vcnkg
b2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpodHRwczovL2xpYnJlcW9zLmlvLzIwMjUvMDQv
MDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLw0KDQoNCmh0dHBzOi8vd3d3LmxpbmtlZGluLmNv
bS9pbi9mcmFudGlzZWtib3JzaWsNCg0KU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5
MTk0MTY3MTQNCg0KaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KDQpTa3lwZTogY2Fz
aW9hNTMwMmNhDQoNCmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNh
a2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

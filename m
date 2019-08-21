Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id A50D897F2F
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 17:43:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 82A8F3CB38;
	Wed, 21 Aug 2019 11:43:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566402189;
	bh=rPqrskMfQSuvvSncKWBqka2aDJgMqKk2WlVfIdWQSaY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QO/qEs+g++WyGzLTy9yIShDD1yittzIuCVOcy4lD2ovLGEhlMZgRZsu15DPKvyAr5
	 aHRT1VrV3Vb0wEVjIR/3jnbBPGYXUJqMagIftKjlXfoureBcs0QwCx+3zSPwWrAjWt
	 MdIhprCc/vVMjlqn3XmCUaSqQVGg+NF3xoXl9C1Vj+Dd99kMd+E7betKYR6xWln1dI
	 MdYLXXFEXxWBojbodirHbJ4XaLoQxzY8L5QmEgxFsAzLFJ0GQak4tOtyjmorVYS7Qv
	 hnVxTmb2yUZmifdYPk58wkOxjgqrtjWyD9JHQ8cFGWsMOuMbPu5D+mO2GZX7uSsWbA
	 LnLnT1v+2Dgvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BDE693CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 11:43:07 -0400 (EDT)
Received: by mail-io1-xd30.google.com with SMTP id x4so5384585iog.13
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 08:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kwd5p6CwX0nUZzKE1A2P2AawHEjGFudJQTIvvTAF91I=;
 b=k0pFZZNp+uguS+bqbq6h1qfmPEasaSI3dr6wFqjmjgaRbgDQfN+PjV8U44/buRm9b9
 qJ23gL/T2LhoMNhRG1hsVTbUwTYEXs39U0BTujlzgFU7XpwZnPd3Q2eV+8JOggGR7Xad
 xLpw/GMaRxzWJK05NjyD5syroqmOgN1yqAYAcU+knzDFcBBcHuOrYQFS84B2reCUgO3t
 sn5j6c2IDYnyTCU9Q8tDkULhaaFA81DiZILZz6qZ2krRj7bzd1hKulGvCD2fz4kbSm6M
 i+oohPq7/hbwv4O9dWA1Pp5dV6bxH5ExWge/2QTcN7yzd/PCDr5EiarFAusCgM3TaHsO
 Mkqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kwd5p6CwX0nUZzKE1A2P2AawHEjGFudJQTIvvTAF91I=;
 b=Y9THzWsavelUVUOxVKO9ibA3XteG9CxrzENoYTB8DnXGLAfhhKFKf3Apgg5dL8pgeH
 +3X+Ps1QDJMAbblTtHe6gRm5QhIKEbCf3vcpwz1TOgNZmnZIqi3wO93GF2s1ucIu36PH
 jbl8LTHJ0J2B5d2W/iNOBXjZOA0cbtf81H309AxT/2biKySKn/ACHI5HBKRt/Y3jda3X
 AI5OemzQ/Was9K3RxF4HBH6Bv0/CDOoy/FjZioOvqAUjpD/n8HyeiNTYft2U0QD473E9
 O4ws78+8IypJJ5D4ZlLQWe32jvWt88f/hnjEIZhJ/GlRYL2paZ4H5LctxN3v+N7NoQLB
 naoQ==
X-Gm-Message-State: APjAAAXmRSfnHagan5U3Gu4VEV335QQGU9cU5Xrz//r97g/EK7lJFlBt
 n/Ydpj9MyI8M6TZj+qHYeEqh1MzWCnO3pPntxzM=
X-Google-Smtp-Source: APXvYqw64EZjtPE6FRiyc/TzMCk/CMCbmciKD59i1HvCX3hGPM7wdYnP7FtfsHY7FT1MEq9WQG92aoQrtiArNuk2OY4=
X-Received: by 2002:a02:c9d8:: with SMTP id c24mr10750274jap.38.1566402187046; 
 Wed, 21 Aug 2019 08:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
 <87sgpvflo4.fsf@taht.net> <87wof6rf7t.fsf@toke.dk>
 <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
In-Reply-To: <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 21 Aug 2019 08:42:55 -0700
Message-ID: <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: [Cake] pie in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

dGhpcyBzaG93cyBzb21lIGdvb2QgcmVzdWx0cyB3aXRoIHBpZSBvbiB0aGUgZG93bmxvYWQKCmh0
dHBzOi8vZm9ydW0uZGQtd3J0LmNvbS9waHBCQjIvdmlld3RvcGljLnBocD90PTMxMzg4NiZwb3N0
ZGF5cz0wJnBvc3RvcmRlcj1hc2Mmc3RhcnQ9MzAmc2lkPTRkNGQyYTU4M2FmYWQ3Mzc1OWNiZWVl
MWE4ZjRiMzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

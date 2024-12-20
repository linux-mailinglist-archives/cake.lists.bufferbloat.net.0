Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B0E9F9D0F
	for <lists+cake@lfdr.de>; Sat, 21 Dec 2024 00:16:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AABA83CB41;
	Fri, 20 Dec 2024 18:16:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1734736574;
	bh=nvhw7w7rNhwdGhIqSpEZKRc0W9Sth4bOgXDlfFRb5wQ=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=NctLVwSJkjfd3A4e7aeuBO2qP4hdBiKTt3VQNWPBqr2cVxLW4oceqGQ0IceUou52b
	 +JFMp57loHRnAsSyRGZAUNOhBBUXjQvLdNbvprR/oSLjEOwKo3jc+6B6twrpo0Rc7b
	 /ncI3PA9NORvdfCqi1PkKbe1AY+Vhb/XesIxeyiWTHhCR5mBSUSr3WNzEhsJgviFlO
	 3NBFJ7Tu2ityWSqhtxkH9RM11pcky2ofurFD+ZzVuPxVBQGfhQ6kfASBjXjho4s7uv
	 VpbvO00Zxnm9fRVNcmxgCm1KUUvfkz7AFYyrziXDbGtD1pnPdzLvfzXjq/27oUBM8X
	 jChWZen/bW20A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com
 [IPv6:2607:f8b0:4864:20::c29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BA4BB3B29E
 for <cake@lists.bufferbloat.net>; Fri, 20 Dec 2024 18:16:12 -0500 (EST)
Received: by mail-oo1-xc29.google.com with SMTP id
 006d021491bc7-5f31e8c2bfaso529951eaf.0
 for <cake@lists.bufferbloat.net>; Fri, 20 Dec 2024 15:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734736571; x=1735341371; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0U099+XlLk/s0jHomyhUZLDZFAUte4aRKr1NTTAy0Ww=;
 b=SoFcoYArSv3QUTOKZhAmj2ykwT9VvxOFdg0OHLPBkNzrXpCt2qzImKNEZIiTW00Ox+
 BI6jIeDunZKIshyt5D0xVY+6PNInpd0yTMc7uPrp4poJljFFNiwZSpmC8HBP7bnZRaH1
 tAM3jf4ijHBLK8jtklik2ZUGSG1v6WJm3aVPq+4WZHso4RJij1Bly0UstRyZdM/A+gkJ
 /fgdVGdxNnUIMTZsIEPGLs+c2cFBko+uQRk1acSGit3CDQuCNw8KacRCnpyke8mW74wW
 IWz6s2o5lzxnkvojaBiobql3IiDws94M17EP2yaKWSgkMHOl4vxe1Bofsd/Nh+sXP7+G
 Hw6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734736571; x=1735341371;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0U099+XlLk/s0jHomyhUZLDZFAUte4aRKr1NTTAy0Ww=;
 b=f+YxBKjmph4W8oEnICfi9tc2lySIHdq0oliFp67ZAqQkZ4dwhjqmBbjJwnGzp/oYOp
 UBTuByQs9ePKmVGw72/lw5a1psosa+ISSkKAZuLtKv85k7vUTrFjcxBc0kgoF8s9Kz8h
 kLzIbNDwTimX50XHaiiiy3xGhg9qJkdbmdoAf3zDsHqMM3zWrhUxn9oeYt+5/wAV50ze
 l374jm1yu36EPiA7Q8lBCDKOoOJ29rtS9iRJIEUH9gety4gfIuflfb1IRzgje+vilrmA
 +6NYSKvWrzZ0xJQUJO2W1L2oPnaLWMjvy7YIQTR3Q8sRYLV7iGFKNhqKZdF50y66hhyZ
 OXjg==
X-Gm-Message-State: AOJu0YybLTeJLde/psuGJkm89UgJ15Y/D0SfBOaRTP3OFLxydG2948SG
 naJx5vcp5XPXq2O+A05XtHOKyNNsN9QAoyikzJLHkkpVtFI0opIvt94I1f4k6cUOTdUz6hXkVOI
 T1zl4C45tWdriW0J2ugsokZTt9u+nSkYa
X-Gm-Gg: ASbGnctKqaxy6dr60tv2HQJA9OxdQ/1Z+GyoZMF+jZnvsc4vXWtU4Dh6qa0d+2Ixgcz
 ZEw/oJfICYrROz3WTzHIo6YPNOw5viyML2Pf1VV1pB2RduxNDGisOuYPmRZx3TYn6gHMrG6af
X-Google-Smtp-Source: AGHT+IFlbYVm0hpo8aZ6fuk8CsNkeNHnd06lFZFw8kK8JErkyLM6BeCu4nraO+WLr9JMJtfMD8bnmLb1hP2N1BSKqgE=
X-Received: by 2002:a05:6870:9a95:b0:29d:e853:6203 with SMTP id
 586e51a60fabf-2a7fb161bdcmr2639937fac.22.1734736571528; Fri, 20 Dec 2024
 15:16:11 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 20 Dec 2024 15:15:59 -0800
Message-ID: <CAA93jw7M4TzPDOd1vfnUKTpxCXb4CE5_HO_gDdL=NcsGABxZYQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] rl configuration for sim
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

aHR0cHM6Ly9pZWVleHBsb3JlLmllZWUub3JnL2Fic3RyYWN0L2RvY3VtZW50LzEwNzU0NzQ0Cgot
LSAKRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

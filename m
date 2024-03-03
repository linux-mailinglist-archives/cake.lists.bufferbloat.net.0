Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A20186F49A
	for <lists+cake@lfdr.de>; Sun,  3 Mar 2024 12:33:40 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 772273CB42;
	Sun,  3 Mar 2024 06:33:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1709465618;
	bh=FwWy38sZki32HkCYZdmkZige0rvdVKCHEahifYhxXX0=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=lGr+wGwJ2hLfkIve1lOWtc33IMpREYmoyq4G3Wt2VGOO22MpvBulYAEXxZOg9/OPt
	 Gg5OufCWoNK6vGXDfDnTk0l16zEFS0S7LDo8CVHW8bdJSsMRtfFUH5yoJJ1/wVxxjB
	 JBTIWbyqwrkE6EVp1CPohl2p/AmKmmq8/vCdxvH1pFEDlQWORu3+6xU9G1MUCGdo3M
	 YzOh4Z/UsC6g/zY6w1QzTrONq5vm1TIoyfRD7JjWgVrL76/belIuhYnPLARCCZFsyX
	 1LtzSy0fXzLTaoSIrU1R3b1U+cQyjJNlltUdqJmEOOM28uX+Sbcbq2Zgmiz4IPUjvi
	 9qQjuu7zsQa+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CD7E73CB37;
 Sun,  3 Mar 2024 06:33:37 -0500 (EST)
Received: by mail-lj1-x235.google.com with SMTP id
 38308e7fff4ca-2d28387db09so39587511fa.0; 
 Sun, 03 Mar 2024 03:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709465615; x=1710070415; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=sb+FN2+VGmKBNRzVWkn2maBVg9y0uYyytMQa2YrTolk=;
 b=MFqwvjrBDYLgldP86B15CBzokf7OaxeBO19+o86QfmyEmrmTXXjn+5o5Xyuss+OT0k
 9bQ+q+cD+WV7BQO+PoKpe/c93/jry+bmzLn94jrP+Bf/vkxpEcw4/LhkW1P50O+zC3+5
 4O9HgqzqHMQgE7U7oDoomxYuKS0HxYrD/Et4HRoe33bJ1vem4aEFkNURr+ooRdE0918V
 GdhBe99ZF6ERZcMMzv53prWEx/OnY25QaN6ptTyBV0IHutEbuUd84gY/VgYLt05T40C1
 oUsluR/8EvgrTOdyj+FjbgobE/1H/Jg5rhfQl5L3PDz8bYhzhdmvZxTB7c42p90Ot4a2
 KO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709465615; x=1710070415;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sb+FN2+VGmKBNRzVWkn2maBVg9y0uYyytMQa2YrTolk=;
 b=rmu1EwKK8RRANsJUU8o1QGe7Y0UcZocmPIxxTD5BB0nI92edyG24KEzowzlUYBtCHU
 iu4Ti59hbkFNWD81zc8fNX8ErSoCqqeMmFP2kSoVrTHOjWYEXON8wjY/usCuKF9xAktq
 dw+sW9TB5sKmQ/74ZI0KbRnDo1uL59HWJQJ/WfRlj2CLVEr1bNBJ0vSmh9RExlurA/mS
 8jWShdz8qGNYYsQUf9PytWcLpaZkG2dCxTX8Inogl+VpdqYfyGNuSd5M3rcMwLyV0QiM
 iw4VvCx74Ml8Taax+1DI0pUcXsc6fVGG0I0WLAf0IuiI0FGeGL0Pwqwdh6JsTlKYUi97
 o8cA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXNuvbS5scL1YI/H1FIKrD8P1hVjBTBW1GTv1tWGjttBZzJRqkwHtuPg6HkAj7t+Lv9o0qg3QWtzR5OxCrSNNyAvF6UTqcwcaITuk4xYVJjVC2yAHQe856TgxbXu39kUQ6dtCj+tKjT
X-Gm-Message-State: AOJu0YwniHunA9UVPsxVK7Z0+5MOsuZYG1lBZ+ZRz3Xnpb4DSm5YB8uU
 GQzlIXmOk3B/obhavyzSeezIMm37xGbOjx44anIMUeEf+qfbQYYlMcPxDfePrfTzuupbMo3x8HZ
 9reiQVc9VLURKh+Vp8SMwce2JZwlH9FjxJm0=
X-Google-Smtp-Source: AGHT+IHl3l1hdMP8KkfBxq+9Gt4lFiMOBZy0azUaP6AaKN4MPKFQE6w7qKmAEymE6RVNFUtSuIxDElNqnXz0xfEJq70=
X-Received: by 2002:a2e:2e19:0:b0:2d2:9fb1:1c7b with SMTP id
 u25-20020a2e2e19000000b002d29fb11c7bmr4709820lju.25.1709465615040; Sun, 03
 Mar 2024 03:33:35 -0800 (PST)
MIME-Version: 1.0
Date: Sun, 3 Mar 2024 06:33:22 -0500
Message-ID: <CAA93jw786+rqscr08t5nMRevU+FRMFqAJa_Ju2+hyxL7qmb4Lw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] fq_codel in vyos
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

SXQgaXMgYW1hemluZyBob3cgbWFueSBkaWZmZXJlbnQgd2F5cyBwZW9wbGUgY2FuIGRvIHRoZW1z
ZWx2ZXMgaW4gd2l0aAprbm9icy4gSW4gdGhpcyBjYXNlIHRoZXJlIHdhcyBhbiBvZmYtYnktMTAw
MCBlcnJvciBpbiBjYWxjdWxhdGluZyB0aGUKZnFfY29kZWwgdGFyZ2V0IGFuZCBpbnRlcnZhbC4K
Cmh0dHBzOi8vZm9ydW0udnlvcy5pby90L3doYXQta2luZC1vZi1wZXJmb3JtYW5jZS1zaG91bGQt
YmUtZXhwZWN0ZWQtd2hlbi1hcHBseWluZy1mcS1jb2RlbC1vbi1hLXNoYXBlci1wb2xpY3kvMTM4
NDEKCkJ1dCBJIGFtIGRlbGlnaHRlZCB0byBzZWUgdGhlIHN3aXRjaCBoYXBwZW5pbmcgb3ZlciB0
aGVyZSBpbiB0aGUKdXBjb21pbmcgcmVsZWFzZS4KCgotLSAKaHR0cHM6Ly9ibG9nLmNlcm93cnQu
b3JnL3Bvc3QvMjAyNF9wcmVkaWN0aW9ucy8KRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK

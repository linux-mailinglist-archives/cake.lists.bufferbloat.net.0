Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2C3A2225E
	for <lists+cake@lfdr.de>; Wed, 29 Jan 2025 17:57:59 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 936B13CB41;
	Wed, 29 Jan 2025 11:57:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1738169878;
	bh=J20wR1TCDd59JCns/SLVMPRPNBRhgyWEjQlmkFzRLSE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=ZmXZuzCQP0BebdSNgKn+qxWq8m/ZZi3i2LUqNVlITEKo6Io9/ELliLzk9QVCTXwTn
	 9WzHFZjsyPK7oUsgUlWurV56eUdSVmNHQLUzXvsPSYx/jRZY1M0WgHCEzJge/hABZK
	 pyO3FF/5tDmV7w4Aplk1zhsKQr3jsgi7TXqQPufinlR0Rum932FMzNeDeN+Mnk8v6y
	 rupBTq6ZnsQyoseI2Mc7N3xUdo3sbIA5th3wcvknaRPLyDe3rwLH3xmPEjFgRjLxsX
	 6Rp0e+aw1aZ/4QapX1Z8lDtTHkt8f2CtGQYcJ+6FBwnQsUXh6h6CgqNvPwLE137Gw3
	 iy2/xnrNGocoQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com
 [IPv6:2607:f8b0:4864:20::c35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6C56A3B29D;
 Wed, 29 Jan 2025 11:57:57 -0500 (EST)
Received: by mail-oo1-xc35.google.com with SMTP id
 006d021491bc7-5f2e31139d9so3196149eaf.0; 
 Wed, 29 Jan 2025 08:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738169876; x=1738774676; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=s2HknAjVl5Z+APCVJCjuatCbxMydyHiPJ8fih9Nb8mg=;
 b=Q5gqOso1pGhT+eXq56rnIHYmSwVVHxx5guufk0JNl2RaJYB3O/UED7Y0kkKn7dri6i
 SapuyIgMKp0z9anEd40NXd4oYRhkCxvV2ID2G8qO8ipwcApq7YnPEt8dfo7WV7fEZLMJ
 da5E8KHoAv4GoCF2BxIkwD5W5CqYQjzgMv2tlMry1H6THZKNzB/S+irVYxN7TXkGSOs9
 N7ku7wIFilWbh+v7BhCP61k8TuxDtUNPSVCs2sI+Cc6tWZprQFgeTuSHVOrOJ1E9KVc3
 AaeTXr66CQnrO1nT/62BnuP3ycTd1ux9YBEUWhtIfnfKkihS09FfOrPKlddPsVA0yhfj
 uZZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738169876; x=1738774676;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=s2HknAjVl5Z+APCVJCjuatCbxMydyHiPJ8fih9Nb8mg=;
 b=nxBrV3/HZ9hYnaJnIvH8rbzea87tEej5OOZeMy/yLjBzA0r4JRPfuodd2cTkjseLr+
 YJHC8zGCDPkVyt0knQk4aZfZwElouj3gbZl/9y3nmOVNiflfNHYiMwo0sDGcbTi3FB7P
 QyQRwaFYWp3dI5EeUTS+D/HomNWlgc86s+CnQYf4AHSdlDcU/zP2JFFuae14mmP8RQTN
 yeStp/XOY2s0SytgOn6DdPl2XqRt0z+wz6W5nbPlKfvVPp6QbCgSpkmpEC4GN4kdktZr
 /JKYL1nQihkTxUNcDWGeuqJkGg26way3A2vcC0QTRE6Wx/At1rProTF5LRDhLjcAp6+o
 xhuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCURqZ1+jY3DuT8cHuJv+ZP955Lt02BsKjElgvBsE8f1W0ufjJAju5Rm+c/oNe9mH06EJTAy@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzPEH/+x4peHsDFYoHUXFDWg0hs8mjmsWG5+MWfDhLB5sTDcUWx
 6orm3ewiJvaB7BvQajA9ruVdQAhy/IsifO0glXAiMtZrVfyBcmQtD1oIy/PB2H0Z2+P4IIiAncA
 WUAHpHbPBBoNChUNjmJ7fCXefFCP3Mnb9
X-Gm-Gg: ASbGncsGFx6GvY52LJVpnULg45TmqtQ5pkrXLucEF24k1owSf/QBuTksEWSrb12EmmW
 L/dy6vuAYF+omKkvPxH4v2B8vWrhfH+dfU15uUKaFSwr+E10p1xKIo3JGadMwEYZ7RyVq5hpKtY
 8wOWuqLYcSqNsv8W6tUtxWMnSEwGIq5Q==
X-Google-Smtp-Source: AGHT+IFOrFRH1jBnQZPpfAv+ZjIWWnuPyTTPMT66MBB0pZ7sefgdIxj7s6YZD2xN7Hfwia6Wio0V0a2oky0E+AF/R2w=
X-Received: by 2002:a05:6870:6b0a:b0:29e:2d50:11aa with SMTP id
 586e51a60fabf-2b32f097da3mr2023457fac.18.1738169875938; Wed, 29 Jan 2025
 08:57:55 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 29 Jan 2025 08:57:43 -0800
X-Gm-Features: AWEUYZkVM6bY231zHThqIPVY_mM654PQkvladPLh8QlMsDgETTMHBzqmvTSeo9E
Message-ID: <CAA93jw4n3yuksA9wAzJ2R=RbxuoYbD2XvkMV5TNYWRfNPNVtzQ@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] comcast deploys l4s
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

aHR0cHM6Ly9jb3Jwb3JhdGUuY29tY2FzdC5jb20vcHJlc3MvcmVsZWFzZXMvY29tY2FzdC1pbnRy
b2R1Y2VzLW5hdGlvbnMtZmlyc3QtdWx0cmEtbG93LWxhZy14ZmluaXR5LWludGVybmV0LWV4cGVy
aWVuY2Utd2l0aC1tZXRhLW52aWRpYS1hbmQtdmFsdmUKCgotLSAKRGF2ZSBUw6RodCBDU08sIExp
YnJlUW9zCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

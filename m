Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0B99D2A79
	for <lists+cake@lfdr.de>; Tue, 19 Nov 2024 17:06:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A61423CB41;
	Tue, 19 Nov 2024 11:06:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1732032407;
	bh=loGWUY6TvJAI7LkuPkU1gwWvOdHEzpc8Es7zrNEOJFM=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=plcunfjcKxFD+DQbgku8s3FlOsn+Zqa+KOhsRz3Z9EO8t1TX41dZQQaegjFXCQSUG
	 iHqULUC8wibEL2z/iAsSnY/LvRFBjoUtJLmCVMBfKM1bzujFfr88PaENBK5g2r8C68
	 oMgaq69263U8u4sQGBINUzPyY2SW8/Yh0KltlUXaf2ijbRYk0/9/JrBBH456gQ0PEy
	 QFFma633iCDDB0vaqcLbx5nGeLYbiV9X9KyjbECXjj/6JYX4G9531Cs04nWYSXWFCT
	 JSx5bxl9JrxTHkaY7dqIrbvRc2K3N1L+BxacAKV+QooWUk0yPjOUPp57g2mGYbrIGR
	 iLPka6xxP/Cxw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com
 [IPv6:2607:f8b0:4864:20::c35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DB0DD3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 19 Nov 2024 11:06:45 -0500 (EST)
Received: by mail-oo1-xc35.google.com with SMTP id
 006d021491bc7-5ebc9bda8c8so1337597eaf.0
 for <cake@lists.bufferbloat.net>; Tue, 19 Nov 2024 08:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732032405; x=1732637205; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=cfpvPpkVNZKBpt8bryXcU8RGPJcYuCTPH+HOiO1AzO0=;
 b=GkTThzPDDk6/KHQS/E2fTbc27sdGbeZkn1fHKjF8X3xyB586jVgudKldzWQ622PDdr
 cXXzy5irbD4x+umPiUhC1X5sG7ojvhUYLelwLYai/sKQy9MttPwmq1tmZzGJ1ByyGBMd
 nmCyxIJSyksIslW8VIATmNrgqM3FXQRA+KxwJhLQdlf4bubLtb2tOcdRy3TzIdctHzBj
 FpwIm0bDpF2SoEMRi5awZ6vqMnChhGNSxEQZkCZUXt7WR1W+rcK7QQcSXtM8HN6hIqdx
 6SG1q4tqCED+SU4cd5ot7b+5E4cJWFkWDGA+bzImd5946zQlc1f6hofhcIyYdk0m9E6S
 /Gmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732032405; x=1732637205;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=cfpvPpkVNZKBpt8bryXcU8RGPJcYuCTPH+HOiO1AzO0=;
 b=WqsDcUTdFVnNQvp47lBI8lttv/EgCmnsvpLwVzMLdXuu78Y0wTtHqwN57Ug5Eq+aI/
 uDnzrC+rsFpAt91Hz9BPIQLJJSBO6iGawkDXLsuRvAjMwfn+U8xy1JdK340Edw5pP4j4
 HXe5k3HD21HSUHSTl5TbegJwG7Y4LF/eiy0hX84P3kNUFoQ6Ke/UbhaW51M+F8hN2NMO
 FcijgboCiYBEcEK/lDKZpnZqqgPMyI2pQCBszTGzH7LpP1ucoDvi8noUNllNWL/IS+Z6
 yezncUrhpy8cvXADJDqS4FbsndgV/cl9RvLZCb9qVLE4dK5O651YnDsJ7iZxFFx0ikOG
 pc9g==
X-Gm-Message-State: AOJu0Ywp+ympLWs6oZv0bETyoXdVILPYV2VxWKJaEfWgj4O6VUFsTOeE
 VaPnRtP9drBGWfLAM8ZK8wvJJvJkh2Vht6yZmksJ8v7xo53heaAy7LeFVyZ1B/4dhR7bPlOY3dj
 mN954bWNxzZlI2JNK/avH7yhe49XyO+Ym
X-Google-Smtp-Source: AGHT+IFFG2bHc7VKg3iK9VEjPlg0GZWXRW5+R5YnlKQPccgMpZe+q/iFAsJpm6hTxuUWGNRbdvV/JIAwdl1/DAms9p4=
X-Received: by 2002:a05:6820:f04:b0:5e7:caf5:ae03 with SMTP id
 006d021491bc7-5eeab2c185cmr13849817eaf.2.1732032404875; Tue, 19 Nov 2024
 08:06:44 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 19 Nov 2024 08:06:31 -0800
Message-ID: <CAA93jw6MdQkJXU=4E4QT6t6chDO__sv4dEPY5_A_FUW1xw1aHw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake at 8gbit
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

aHR0cHM6Ly9naXRodWIuY29tL2NpbGl1bS9jaWxpdW0vaXNzdWVzLzI5MDgzI2lzc3VlY29tbWVu
dC0yNDg1MTQyMjk0CgotLSAKRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

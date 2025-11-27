Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id DC76DC8FE59
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 19:21:45 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 52E249D550A;
	Thu, 27 Nov 2025 19:21:44 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=d0KIpwpV
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764267704;
 b=fo3d19PlCSzsFkGUYnv9kxu0Bxv5YMp+rKv3UWBdBJqD7XEj2rCy0oImZO29EBv10f90k
 Gaj31jTuUPKi/o93eFHr1lzqY0v7jLOtSLlz18NKvnT9cYQltmB0Cv1sEEgeWuOHtndOxeG
 VGfIrrJ/9TfcPk1cuuWGrb5kVXWz3/E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764267704; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=BOoWXcJG8J8HWGWhODV7UzvQbriLSWxriwwjlbyCrT4=;
 b=TlMsWa2+inAfgdV8fXqnox6Bj4etDEWlf1Vj0fKcFf2c+qkeMqWdObOgaZ/VwGsej2ccf
 li06K5TcFmyQYZsSnss2h2g2RFvE8EUDMSNK1CF1DroCSgJsSioSAeqbKmxzfG2oQunepXX
 sE0iWYLJPwHNWLbiOnDO9+1C8kD9rfk=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
	by mail.toke.dk (Postfix) with ESMTPS id E11B99D54F1
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 19:21:41 +0100 (CET)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-298250d7769so7826275ad.0
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 10:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764267699; x=1764872499;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S832dEXRRuljnsRC8l5OHuN+DNSJW8AFtuJhBdXtnKQ=;
        b=d0KIpwpVjTfWZMXz40UoReLATti9zykeIBT/U0uTqVmJfyCj3ln15i2jfh/8mExmzj
         y9NXRskFpWEH6LCL75lMEkND2NyoItOAXRW6w6NLdYgCiQvrj0D9Rw1q/EukqVDP8A2K
         fO7GYlHsBJqxIuPIJD1nKaAygxeTzRrOVs7hMaFASDPOek+dyXWKo1/4IrrBai65DW0z
         CJ89jC8lMuK1wDH4EYzy0wF9JnEY3I8URRXtJLiO9+unBpkH9lAuLn2xdKLGjk3G8X1q
         RkcmopRHkgFvkj7kFa7H4uZYecP1ggrkvIXYEA8bZBz9xischS/Z4e7fBpNeyzsBu9Kg
         TDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764267699; x=1764872499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S832dEXRRuljnsRC8l5OHuN+DNSJW8AFtuJhBdXtnKQ=;
        b=hB10zhcjq+7Z4o/YMaCOISs2tRj+WRJHnbnaiwuRmKF7qsSOrbQb3RKvtxcPo2Lqa/
         YMaoztrPA+cXbxtJPwvQo0Hoqm0+evzMM9O+yOj2xEVjSo7YjZYZIIYd/h0TNbOer1IV
         z2A8lkCc0WV5GbDlEZQqPalM4rtiHQfaWZUsywZERWQsMsYHZ95JzMMbohl9WZJTCuyl
         Jagpm5BdUR2sYQdhyWB9zP9ooNpFLXq4NRHSzIgd1RyQlYD/2pqkkARdrLUjQ+S390yu
         k9MSO6ls5ipX62F6X7dVL+zJZ1mgO7P8ls8u8Yr3gUxyDTPHyG/wmxiixNyPcirm3A9K
         KTcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtbTCTEkOGIkq9PVEodsJgzmhWti/WwparefvGiD8H1QBq5J/HkisdtJOqJHRzxh0Mpl2Q@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yws4AIIwn841wHiC3PhP2/IDInzEexocMKyJ32n26W85XWYd5Gr
	F8bWh5i8i7/k8sR1weEVenOH9LXSwt16jfVaJ+3Pj8gL4+or399NP1kc
X-Gm-Gg: ASbGncu42cQlq9gsopH3Or1pPIdZDD/nzTCOyQLu+sgTYSL/Mvli3eWukEg/MI+/bj2
	tIoX1bhRH1MPUWX09YqzXwJWr7jldkzUXioE1MYK6yoEfbrmbZPSWjqHhdacNonnpBtMfQMILSu
	9Axjh7Fd0caDGBMyUnNOSq9OJLKJfXhholPqLCdq2vbgDRQ+IasDBmx9CMBSSdF6jsYng3+xVSF
	u4u1R/aq8j3DT18SdghSG3J7GdmCGI+GdAJN9mVbJFOO3/ogYGwoZF6MsliS3ZCiUYck9Gq1ubp
	ZjuE5ggBGgTx/w6Euco5iltzsJwZrhs7hNDd/sghuLhmazpUhBIGZIobHVwP1Jv/Ljt3PDFrUJr
	mvtUnTofhm00kpSrt+oWh0NtB9ULkBXBLM8XRCegAZKf+d6bY7YPB08s2kssnb0RmbeXltlK2rb
	K2Up4kuaAeh6pP9zM0lQ==
X-Google-Smtp-Source: 
 AGHT+IFQ4/2Vr/mxY0n+SqNV37TuiRIhfMDvknz5AL9lBvrVetHKItz/kUdW0miXU+pEjIjEpFDdWQ==
X-Received: by 2002:a17:903:2c06:b0:290:94ed:184c with SMTP id
 d9443c01a7336-29b6c3e86acmr242338025ad.15.1764267698678;
        Thu, 27 Nov 2025 10:21:38 -0800 (PST)
Received: from localhost ([2601:647:6802:dbc0:ef22:445e:1e79:6b9a])
        by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-be508b06867sm2467380a12.23.2025.11.27.10.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 10:21:38 -0800 (PST)
Date: Thu, 27 Nov 2025 10:21:36 -0800
From: Cong Wang <xiyou.wangcong@gmail.com>
To: Xiang Mei <xmei5@asu.edu>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <aSiWsNrWQ8PDhk29@pop-os.localdomain>
References: <20251126194513.3984722-1-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251126194513.3984722-1-xmei5@asu.edu>
Message-ID-Hash: VOUS4GMSML645JVTIF7U2L5UULLLCARV
X-Message-ID-Hash: VOUS4GMSML645JVTIF7U2L5UULLLCARV
X-MailFrom: xiyou.wangcong@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v7 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/aSiWsNrWQ8PDhk29@pop-os.localdomain/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Nov 26, 2025 at 12:45:12PM -0700, Xiang Mei wrote:
> In cake_drop(), qdisc_tree_reduce_backlog() is used to update the qlen
> and backlog of the qdisc hierarchy. Its caller, cake_enqueue(), assumes
> that the parent qdisc will enqueue the current packet. However, this
> assumption breaks when cake_enqueue() returns NET_XMIT_CN: the parent
> qdisc stops enqueuing current packet, leaving the tree qlen/backlog
> accounting inconsistent. This mismatch can lead to a NULL dereference
> (e.g., when the parent Qdisc is qfq_qdisc).
> 
> This patch computes the qlen/backlog delta in a more robust way by
> observing the difference before and after the series of cake_drop()
> calls, and then compensates the qdisc tree accounting if cake_enqueue()
> returns NET_XMIT_CN.
> 
> To ensure correct compensation when ACK thinning is enabled, a new
> variable is introduced to keep qlen unchanged.
> 
> Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN when past buffer_limit")
> Signed-off-by: Xiang Mei <xmei5@asu.edu>

Acked-by: Cong Wang <cwang@multikernel.io>

Thanks for your patience!
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B955C880E4
	for <lists+cake@lfdr.de>; Wed, 26 Nov 2025 05:31:12 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 207EF9CDBE1;
	Wed, 26 Nov 2025 05:31:11 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=cWpkmK3u
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764131471;
 b=x/F3j5zWC1Kkw8CjsZ92i4Or9Qu9sjFtPc6RzjfRX8veczoIeMW89toV8P358iNLWW5Dk
 qAF2a389lndLP2CpNTG++vBLqVR28C4VSHHy+7bugS2MxTSrGudkV29yjocVCjUoAJizw3c
 wMUjeKjOXpVpDkog+j9JvUEURPygPFw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764131471; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Al2Qy9WtBKuQ6llO2g3KMyXztVTWnmj86zIFssYtL1o=;
 b=awsxZmkhctJWlf3QBLG122+2uTkxe0ncZbzrXFL+y4RO4RkHotmrlolDpxtEZ4CkmJlVv
 CYkaHxPGeK6rYGjmVBrBG23SeR73Wql93zh5JwjVwQko/W56uHS+NqjYqc/cIRy/qb1FhH3
 YbrffndIWGXpBFZXaDdvmdB+wTy7GPc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
	by mail.toke.dk (Postfix) with ESMTPS id AA8199CDBC0
	for <cake@lists.bufferbloat.net>; Wed, 26 Nov 2025 05:31:08 +0100 (CET)
Received: by mail-pl1-x632.google.com with SMTP id
 d9443c01a7336-297d4a56f97so93078285ad.1
        for <cake@lists.bufferbloat.net>;
 Tue, 25 Nov 2025 20:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764131466; x=1764736266;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r+0j5ZCXovitLFtrZUw5JaximmZcnfm7BzzfoeHP48I=;
        b=cWpkmK3uipr0fUhlm+dFKZKNO8d7XI4JK6MgSwbt3wXkhP7VUgwkKw/deP8mXerGt2
         CwBn1Ewl7Q1JNxzS43vklABM8fva2IE6jRa149YJjvVnBg6uCSvFVyWdxu2pRN9FU3PG
         bNkzJe/aL15PonvfrmzpR4h5UPNGwlIGpinHVvY0XvLm5N0TrJU8tHgwHPP0avofnTqQ
         9VPnsOpmjDzHxHe+JsDuX3esoMqIEkN9obtoTZ+1h7jyADSBBN2Bh4oNhYNyGVAoWzjZ
         LTUOYo4h1k/8JqKsoXbdbc2BsgHl1l1Fi/ujC2LsvXttyDf7ysROWAcB1/g6Kis4H9my
         051w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764131466; x=1764736266;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r+0j5ZCXovitLFtrZUw5JaximmZcnfm7BzzfoeHP48I=;
        b=i15YPzoeIWiN/JhZqpaDFfG0q+zu73DVikFg2RU4Z7M5T2Gr+anHfaRtNWrhnXrBKv
         w8jRMf0pGwTLPuuPtvQowNtxf9acYaVu82h2cZ5uHBxu++/aLuFB1qHcHP+LVotkXFgR
         Zw2ICuz34EI2FRq7VdmlPOm2ckcu9eXQaIwLfIWSuyMBGeC+FvWasla9AK4Et8kTFls1
         ZAKj1T3gLD/sTk+cEqNJiYjTCEBSxZxHeU4SRhF4C5mdXc1ZnIYqzefRNRHH7jFjB+Cp
         avYVLKb7qb95xuTpTtJQlEqw/oSCyIm3fm+7HMjs048ve6wTrKqjMB8e9bV4OQi/eim4
         rSSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyspTf5ONsLBZOEp29z7ukjL/9aEscnulLIoNJrSp9eA6gx53LjLTL7eyupdRinOc47aLp@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxeXGyT65jTSwDxUOFxUbdZ4+376ILAn38uwDa4ha4gplsPYhrI
	KEqNh8zBFiZYikgvYgI84w8R9ApuvbKQ4qbfrdqLWfm2/aXotwO2jRhc
X-Gm-Gg: ASbGncs/SKgkX87mvowb1Adq5iVBOgXC7kVocUgmHzZdcX2DqUdlSXPLsDBYfZCdKtQ
	cqlyPybtR8eijavl4VoLbfCtC3D/ZB7eSIraGuxyGybObzE1el84eLNBCoM/dVGj5C9YeWfsjjK
	joN7r/6mDi0BurJzS9VjcJgWd8j1hBval2gjIL8u+EYzOTYZqQXn26djjfR+0L/TRzxrhoRu90X
	9Fi8++R4pDFiYmvQws00c7wo8HsnWifJdCqCSKjd1KLGl+W9K7ZvyrqaZM3JTfLLLHzRP5fINkl
	C/WMmNTNjGybfKZH/YEpJ98ei1zbJyqooY5lSTUMAsbfS/GaQI7xjj2Clc+7sDbhV6Pt0UG75Ac
	uWsvz+t9uO1JZelSw7MY+ESgIpNCkbVS9KX+uF4PIeg7iNeikWblXyT3uC01HXs3J/beg6sTZ1H
	HRDILmOuBPkCXDgCfh
X-Google-Smtp-Source: 
 AGHT+IEgFSocOGRxdsFFHqcX/YYQDzfJhKqycM/hi1zu+7nlJPv9Vwh3GUd1FyO8F3MlsgtDdk85iQ==
X-Received: by 2002:a05:701b:2803:b0:11b:2138:476a with SMTP id
 a92af1059eb24-11c9d8539eamr9419041c88.27.1764131465883;
        Tue, 25 Nov 2025 20:31:05 -0800 (PST)
Received: from localhost ([2601:647:6802:dbc0:a2cf:2e69:756:191b])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11c93e6da4dsm83069512c88.9.2025.11.25.20.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 20:31:05 -0800 (PST)
Date: Tue, 25 Nov 2025 20:31:04 -0800
From: Cong Wang <xiyou.wangcong@gmail.com>
To: Xiang Mei <xmei5@asu.edu>
Cc: security@kernel.org, netdev@vger.kernel.org, toke@toke.dk,
	cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <aSaCiO/+zrzk9eF1@pop-os.localdomain>
References: <20251125220213.3155360-1-xmei5@asu.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251125220213.3155360-1-xmei5@asu.edu>
Message-ID-Hash: JPM3QWAOBQXZMROYQYMBZAIC75MHMOMP
X-Message-ID-Hash: JPM3QWAOBQXZMROYQYMBZAIC75MHMOMP
X-MailFrom: xiyou.wangcong@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v6 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/aSaCiO/+zrzk9eF1@pop-os.localdomain/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Nov 25, 2025 at 03:02:12PM -0700, Xiang Mei wrote:
> @@ -1927,24 +1928,30 @@ static s32 cake_enqueue(struct sk_buff *skb, struct Qdisc *sch,
>  	if (q->buffer_used > q->buffer_max_used)
>  		q->buffer_max_used = q->buffer_used;
>  
> -	if (q->buffer_used > q->buffer_limit) {
> -		bool same_flow = false;
> -		u32 dropped = 0;
> -		u32 drop_id;
> +	if (q->buffer_used <= q->buffer_limit)
> +		return NET_XMIT_SUCCESS;
>  
> -		while (q->buffer_used > q->buffer_limit) {
> -			dropped++;
> -			drop_id = cake_drop(sch, to_free);
> +	prev_qlen = sch->q.qlen;
> +	prev_backlog = sch->qstats.backlog;
>  
> -			if ((drop_id >> 16) == tin &&
> -			    (drop_id & 0xFFFF) == idx)
> -				same_flow = true;
> -		}
> -		b->drop_overlimit += dropped;
> +	while (q->buffer_used > q->buffer_limit) {
> +		drop_id = cake_drop(sch, to_free);
> +		if ((drop_id >> 16) == tin &&
> +		    (drop_id & 0xFFFF) == idx)
> +			same_flow = true;
> +	}
> +
> +	/* Compute the droppped qlen and pkt length */

Just a nit: this comment is not needed, because the code below is
readable enough to explain itself. :)


Regards,
Cong Wang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net

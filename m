Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C37C640D9
	for <lists+cake@lfdr.de>; Mon, 17 Nov 2025 13:30:32 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 4E73D9797CE;
	Mon, 17 Nov 2025 13:30:31 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=asu.edu header.i=@asu.edu header.a=rsa-sha256 header.s=google header.b=D4YHiBMi
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763382631;
 b=EfygtdD9etrG2JakdhfNObRHoeDf69YD6H16Y3qHTrrTD8yIzzBEi4BIWBmCwA7WddLZr
 z4ChJWlcybQX8IaA0LEQRca/mT0a1Nbp7QUe7/mKfkDlS//bseCMBj7p7ILywk+DOWymRL+
 gaTe6lRuCtvMO/8a3hDv1hAhxSqx+rc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763382631; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=orS+xPB+e3KsCcaMuP7CxlMp4epX5d+/74PGlmfnJQs=;
 b=RRFnCN0yyJVKjr+Hy86C121sr3PG4v8/w/OzNbwo7MOTVSul7d0fmnWsrEPo0WGLArC/D
 QHEkZr8qZx83u+Wq3v8a0tIUNX/eKlIvLGVMqU6veZtBKXKlks0NMfTdgz2pckVxAMRrMns
 6mCWxRfWRaxIQ6XznqDWx4FJicX4D78=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=asu.edu;
 dkim=pass header.d=asu.edu;
 arc=none;
 dmarc=none
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
	by mail.toke.dk (Postfix) with ESMTPS id 5D6BC9625C5
	for <cake@lists.bufferbloat.net>; Sat, 15 Nov 2025 11:03:17 +0100 (CET)
Received: by mail-pg1-x52b.google.com with SMTP id
 41be03b00d2f7-bbf2c3eccc9so2797168a12.0
        for <cake@lists.bufferbloat.net>;
 Sat, 15 Nov 2025 02:03:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asu.edu; s=google; t=1763200995; x=1763805795;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IR26Gu69S7L4LIVTgNluDTIVChHkdTk0e/UFirULlO0=;
        b=D4YHiBMiBnYcLMdXW/3UIMarDFi6ETqqycBgqCm4AhrpmJca7y1g1TBsirq2e6ehWZ
         Mq0NNCVEWzu9+33hEx7rlkCB6zQPWeRoiMd7IzzYYUtGdORj7WBUL4gBDGbnGiAoCFp3
         /ArIXQI7tuqFxE6gHWlZre30gRA+u5gzr6GiH8xvVPsVYSqA3+VCpnuOeVI5clPWSn8X
         7KeDMZHTveuDx1b1SxH/Q4YRDTZPYnke/P0FRsgEZbEsjk8qBthuqxNh0BuE8O2yf79C
         m0DBH/EGdEqQe7lAFcZ28bdmuam11uJgkVefrN7aam2biU24xQ9syjNwt2sGJp9WWawY
         tBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763200995; x=1763805795;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IR26Gu69S7L4LIVTgNluDTIVChHkdTk0e/UFirULlO0=;
        b=KrYfF6tjFKwKJan+JWDDaTv8m2GeEEOhFFiD9ANmfh7Vzwl7QCTGD10hmVI8D567rq
         H2NCoDlmGdciLivebJam48JsPv90ZYjeD05fmiEtnrLZktGvdg5k/h8aEk7KSwcMXXOm
         pRrOMW4P/cPU2Oygc00XDODO8cW8ksTu2jp1zl9UrlBYGJEz+SmIsJgWIOTmdVcKzIlf
         OBXvIT+MI9c3gawYTSfv/Ks5KJE8OLIGG0Ay7ke4b8+fBDwd/bmrUBAJ81OksVkra1df
         0aK7oxsrQuqyo+eObZ76v2ljEgMOtTH3jsVT8Rvz99llda4WYw6wqJWH/0ICR9kxV7Dx
         d+Yw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVis3i+77NRAF0HfRRO2/b0LnFx/aWWZoiEcRyN4PKqOdU1agHbL0Odb2/NZaBoSrTn+XFB@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw0wEghO8P2kAeN0WibN2R5ZYwvGePkYpzI5NFfi+qEJlVMsCHa
	b3Ba4SfYjwptrXp4/tshdq1bBJytFkAeOfV3Iue5ab+sR1SQ4jEs63SCO1gejAKjyQ==
X-Gm-Gg: ASbGncsh+6c9hg3wT4QLxrpe4bydEh0SBZEhENzKcsInmB8riIO3UR+JRsxaXvRVHPe
	UvHRwadQuH1HRudMgzrz/TI+NnU6mCmx314xlRbMq/dhyghhq+TgAE55Ki9BPToLUqn7k2cr2ZM
	NkJYnnELj9LFkjT2ntc8a2XQiLC593Thfgo3v+AASo+s5DIXQSG5CN+gQYptNlNJGiI7ZYDEby7
	OrnrhQsauYsNb+T3NKPawuH6nlCmhwzh6nvL+aSY/bPuww7UFjcp9ms/NRaZ+cV3aM9diys5CQP
	io28ESX5sxqmPQEEHYXkRh8J9rbR9v7R0OBd01dKU50/k1fzZwyeLQolYYcKiV+3y1EWS/XiCYD
	AB7xQyKTgZwp/Ysd+re0IBKQaUEvm9846BomfmVWz/ks7ntIXHZn2H73c+6kWyEgKrbVBPg==
X-Google-Smtp-Source: 
 AGHT+IEmh0x9vh7G0o3s7CweIVMaOIOPJBIgyTFSUzhJzS7KSJpA8awwc7mKbUjKBOt/1T5wS7Qeyg==
X-Received: by 2002:a05:7022:e06:b0:119:e569:f865 with SMTP id
 a92af1059eb24-11b40f7f558mr2283141c88.2.1763200994804;
        Sat, 15 Nov 2025 02:03:14 -0800 (PST)
Received: from p1 ([2600:8800:1e80:41a0:1665:bc8c:7762:7ff2])
        by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-11b060885f9sm17481686c88.4.2025.11.15.02.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 02:03:14 -0800 (PST)
Date: Sat, 15 Nov 2025 03:03:12 -0700
From: Xiang Mei <xmei5@asu.edu>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Cc: security@kernel.org, netdev@vger.kernel.org, cake@lists.bufferbloat.net,
	bestswngs@gmail.com
Message-ID: <aRhP4E7g5yJh1vP5@p1>
References: <20251113035303.51165-1-xmei5@asu.edu>
 <875xbejcel.fsf@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875xbejcel.fsf@toke.dk>
X-MailFrom: xmei5@asu.edu
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: O2DN45I76LEB7VI4E3GZHGSUYK2QXV3P
X-Message-ID-Hash: O2DN45I76LEB7VI4E3GZHGSUYK2QXV3P
X-Mailman-Approved-At: Mon, 17 Nov 2025 13:30:30 +0100
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v3] net/sched: sch_cake: Fix incorrect qlen reduction in
 cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/aRhP4E7g5yJh1vP5@p1/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 02:21:54PM +0100, Toke H=F8iland-J=F8rgensen wrote:
> Xiang Mei <xmei5@asu.edu> writes:
>=20
> > In cake_drop(), qdisc_tree_reduce_backlog() is called to decrement
> > the qlen of the qdisc hierarchy. However, this can incorrectly reduce
> > qlen when the dropped packet was never enqueued, leading to a possible
> > NULL dereference (e.g., when QFQ is the parent qdisc).
> >
> > This happens when cake_enqueue() returns NET_XMIT_CN: the parent
> > qdisc does not enqueue the skb, but cake_drop() still reduces backlog.
> >
> > This patch avoids the extra reduction by checking whether the packet
> > was actually enqueued. It also moves qdisc_tree_reduce_backlog()
> > out of cake_drop() to keep backlog accounting consistent.
> >
> > Fixes: 15de71d06a40 ("net/sched: Make cake_enqueue return NET_XMIT_CN w=
hen past buffer_limit")
> > Signed-off-by: Xiang Mei <xmei5@asu.edu>
> > ---
> > v2: add missing cc
> > v3: move qdisc_tree_reduce_backlog out of cake_drop
> >
> >  net/sched/sch_cake.c | 40 ++++++++++++++++++++++++----------------
> >  1 file changed, 24 insertions(+), 16 deletions(-)
> >
> > diff --git a/net/sched/sch_cake.c b/net/sched/sch_cake.c
> > index 32bacfc314c2..179cafe05085 100644
> > --- a/net/sched/sch_cake.c
> > +++ b/net/sched/sch_cake.c
> > @@ -1597,7 +1597,6 @@ static unsigned int cake_drop(struct Qdisc *sch, =
struct sk_buff **to_free)
> > =20
> >  	qdisc_drop_reason(skb, sch, to_free, SKB_DROP_REASON_QDISC_OVERLIMIT);
> >  	sch->q.qlen--;
> > -	qdisc_tree_reduce_backlog(sch, 1, len);
> > =20
> >  	cake_heapify(q, 0);
> > =20
> > @@ -1750,7 +1749,9 @@ static s32 cake_enqueue(struct sk_buff *skb, stru=
ct Qdisc *sch,
> >  	ktime_t now =3D ktime_get();
> >  	struct cake_tin_data *b;
> >  	struct cake_flow *flow;
> > -	u32 idx, tin;
> > +	u32 dropped =3D 0;
> > +	u32 idx, tin, prev_qlen, prev_backlog, drop_id;
> > +	bool same_flow =3D false;
> > =20
> >  	/* choose flow to insert into */
> >  	idx =3D cake_classify(sch, &b, skb, q->flow_mode, &ret);
> > @@ -1927,24 +1928,31 @@ static s32 cake_enqueue(struct sk_buff *skb, st=
ruct Qdisc *sch,
> >  	if (q->buffer_used > q->buffer_max_used)
> >  		q->buffer_max_used =3D q->buffer_used;
> > =20
> > -	if (q->buffer_used > q->buffer_limit) {
> > -		bool same_flow =3D false;
> > -		u32 dropped =3D 0;
> > -		u32 drop_id;
> > +	if (q->buffer_used <=3D q->buffer_limit)
> > +		return NET_XMIT_SUCCESS;
>=20
> While this does reduce indentation, I don't think it's an overall
> improvement; the overflow condition is the exceptional case, so it's
> clearer to keep it inside the if statement (which also keeps the
> variable scope smaller).
>=20
> > -		while (q->buffer_used > q->buffer_limit) {
> > -			dropped++;
> > -			drop_id =3D cake_drop(sch, to_free);
> > +	prev_qlen =3D sch->q.qlen;
> > +	prev_backlog =3D sch->qstats.backlog;
> > =20
> > -			if ((drop_id >> 16) =3D=3D tin &&
> > -			    (drop_id & 0xFFFF) =3D=3D idx)
> > -				same_flow =3D true;
> > -		}
> > -		b->drop_overlimit +=3D dropped;
> > +	while (q->buffer_used > q->buffer_limit) {
> > +		dropped++;
> > +		drop_id =3D cake_drop(sch, to_free);
> > +		if ((drop_id >> 16) =3D=3D tin &&
> > +		    (drop_id & 0xFFFF) =3D=3D idx)
> > +			same_flow =3D true;
> > +	}
> > +	b->drop_overlimit +=3D dropped;
>=20
> The 'dropped' variable is wholly redundant after this change, so let's
> just get rid of it and use the prev_qlen for this statistic instead.
>=20
> -Toke

Thanks for the reminder, and sorry for the delayed reply.
You are right that we should remove the unused variable.

Xiang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
